package com.kate.collectInfo.work.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.hyperic.sigar.CpuInfo;
import org.hyperic.sigar.CpuPerc;
import org.hyperic.sigar.FileSystem;
import org.hyperic.sigar.FileSystemUsage;
import org.hyperic.sigar.Mem;
import org.hyperic.sigar.NetFlags;
import org.hyperic.sigar.NetInterfaceConfig;
import org.hyperic.sigar.NetInterfaceStat;
import org.hyperic.sigar.OperatingSystem;
import org.hyperic.sigar.Sigar;
import org.hyperic.sigar.SigarException;
import org.hyperic.sigar.Swap;

import com.kate.collectInfo.service.entity.MemInfo;
import com.kate.collectInfo.work.entity.SigarInfoEntity;

public class SigarService {
	private static Sigar sigar;

	/**
	 * 获取sigar实体
	 * 
	 * @return
	 */
	public static Sigar getInstance() {
		if (null == sigar) {
			sigar = new Sigar();
		}
		return sigar;
	}

	/**
	 * 获取采集机器的ip、mac
	 * 
	 * @return
	 */
	public static List<SigarInfoEntity> getIpMac() {
		List<SigarInfoEntity> dataList = new ArrayList<SigarInfoEntity>();
        String ip=getDefaultIpAddress();
        String mac=getMAC();
        dataList.add(new SigarInfoEntity(ip,"主机IP"));
        dataList.add(new SigarInfoEntity(mac,"主机MAC"));
		return dataList;
	}

	// b)取到当前机器的IP地址
	public static String getDefaultIpAddress() {
		String address = null;
		try {
			address = InetAddress.getLocalHost().getHostAddress();
			// 没有出现异常而正常当取到的IP时，如果取到的不是网卡循回地址时就返回
			// 否则再通过Sigar工具包中的方法来获取
			if (!NetFlags.LOOPBACK_ADDRESS.equals(address)) {
				return address;
			}
		} catch (UnknownHostException e) {
			// hostname not in DNS or /etc/hosts
		}
		Sigar sigar = new Sigar();
		try {
			address = sigar.getNetInterfaceConfig().getAddress();
		} catch (SigarException e) {
			address = NetFlags.LOOPBACK_ADDRESS;
		} finally {
			sigar.close();
		}
		return address;
	}

	// c)取到当前机器的MAC地址
	public static String getMAC() {
		Sigar sigar = null;
		try {
			sigar = new Sigar();
			String[] ifaces = sigar.getNetInterfaceList();
			String hwaddr = null;
			for (int i = 0; i < ifaces.length; i++) {
				NetInterfaceConfig cfg = sigar.getNetInterfaceConfig(ifaces[i]);
				if (NetFlags.LOOPBACK_ADDRESS.equals(cfg.getAddress()) || (cfg.getFlags() & NetFlags.IFF_LOOPBACK) != 0
						|| NetFlags.NULL_HWADDR.equals(cfg.getHwaddr())) {
					continue;
				}
				/*
				 * 如果存在多张网卡包括虚拟机的网卡，默认只取第一张网卡的MAC地址，如果要返回所有的网卡（包括物理的和虚拟的）
				 * 则可以修改方法的返回类型为数组或Collection ，通过在for循环里取到的多个MAC地址。
				 */
				hwaddr = cfg.getHwaddr();
				break;
			}
			return hwaddr != null ? hwaddr : null;
		} catch (Exception e) {
			return null;
		} finally {
			if (sigar != null)
				sigar.close();
		}
	}

	/**
	 * 1.获取系统信息和jvm虚拟机信息
	 * 
	 * @return
	 * @throws UnknownHostException
	 */
	public static List<SigarInfoEntity> getJvmInfos() throws UnknownHostException {
		List<SigarInfoEntity> jvmInfoList = new ArrayList<SigarInfoEntity>();
		Runtime r = Runtime.getRuntime();
		// 系统配置属性
		Properties sysProps = System.getProperties();
		// java对ip封装的对象
		InetAddress addr;
		addr = InetAddress.getLocalHost();

		Map<String, String> envInfoMap = System.getenv();
		String userName = envInfoMap.get("USERNAME");// 获取用户名
		String computerName = envInfoMap.get("COMPUTERNAME");// 获取计算机名
		String userDomain = envInfoMap.get("USERDOMAIN");// 获取计算机域名

		jvmInfoList.add(new SigarInfoEntity(userName, "获取用户名"));
		jvmInfoList.add(new SigarInfoEntity(computerName, "获取计算机名"));
		jvmInfoList.add(new SigarInfoEntity(userDomain, "获取计算机域名"));

		jvmInfoList.add(new SigarInfoEntity(addr.getHostAddress(), "获取Ip"));
		jvmInfoList.add(new SigarInfoEntity(addr.getHostName(), "获取主机名称"));

		jvmInfoList.add(new SigarInfoEntity(String.valueOf(r.totalMemory()), "JVM总内存"));
		jvmInfoList.add(new SigarInfoEntity(String.valueOf(r.freeMemory()), "JVM剩余内存"));
		jvmInfoList.add(new SigarInfoEntity(String.valueOf(r.availableProcessors()), "jvm处理器个数"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.version"), "Java的运行环境版本"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vendor"), "Java的运行环境供应商"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vendor.url"), "Java供应商的URL"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.home"), "Java的安装路径"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vm.specification.version"), "Java的虚拟机规范版本"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vm.specification.vendor"), "Java的虚拟机规范供应商"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vm.specification.name"), "Java的虚拟机规范名称"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vm.version"), "Java的虚拟机实现版本"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vm.vendor"), "Java的虚拟机实现供应商"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.vm.name"), "Java的虚拟机实现名称"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.specification.version"), "Java运行时环境规范版本"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.specification.vendor"), "Java运行时环境规范供应商"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.specification.name"), "Java的虚拟机规范名称"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.class.version"), "Java的类格式版本号"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.class.path"), "Java的类路径"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.library.path"), "加载库时搜索的路径列表"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.io.tmpdir"), "默认的临时文件路径"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("java.ext.dirs"), "一个或多个扩展目录的路径"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("os.name"), "操作系统的名称"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("os.arch"), "操作系统的构架"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("os.version"), "操作系统的版本"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("file.separator"), "文件分隔符"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("path.separator"), "路径分隔符"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("line.separator"), "行分隔符"));

		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("user.name"), "用户的账户名称"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("user.home"), "用户的主目录"));
		jvmInfoList.add(new SigarInfoEntity(sysProps.getProperty("user.dir"), "用户的当前工作目录"));

		return jvmInfoList;
	}

	/**
	 * 2.获取cpu信息
	 * 
	 * @return
	 * @throws SigarException
	 */
	public static List<Map<String, String>> getCpuInfos() throws SigarException {
		List<Map<String, String>> dataList = new ArrayList<Map<String, String>>();
		CpuInfo[] cpuInfos = getInstance().getCpuInfoList();
		//CpuPerc[] cpuPercs = getInstance().getCpuPercList();

		for (int i = 0; i < cpuInfos.length; i++) {
			CpuInfo cpuInfo = cpuInfos[i];
			Map<String, String> dataMap=new HashMap<String, String>();
			dataMap.put("cpuMhz", cpuInfo.getMhz() + "");
			dataMap.put("cpuVendor", cpuInfo.getVendor() + "");
			dataMap.put("cpuModel", cpuInfo.getModel() + "");
			dataMap.put("cpuCacheSize", cpuInfo.getCacheSize() + "");
			dataMap.put("cpuTotalCores", cpuInfo.getTotalCores() + "");
			dataMap.put("cpuTotalSockets", cpuInfo.getTotalSockets() + "");
			dataMap.put("cpuCoresPerSocket", cpuInfo.getCoresPerSocket() + "");
			dataList.add(dataMap);
		}

		return dataList;
	}
	
	public static List<Map<String, String>> getCpuPercs() throws SigarException {
		List<Map<String, String>> dataList = new ArrayList<Map<String, String>>();
		CpuPerc[] cpuPercs = getInstance().getCpuPercList();
		for (int i = 0; i < cpuPercs.length; i++) {
			CpuPerc cpuPerc = cpuPercs[i];
			Map<String, String> dataMap = new HashMap<String, String>();
			dataMap.put("cpuUser", CpuPerc.format(cpuPerc.getUser()));
			dataMap.put("cpuSys", CpuPerc.format(cpuPerc.getSys()));
			dataMap.put("cpuWait", CpuPerc.format(cpuPerc.getWait()));
			dataMap.put("cpuNice", CpuPerc.format(cpuPerc.getNice()));
			dataMap.put("cpuIdle", CpuPerc.format(cpuPerc.getIdle()));
			dataMap.put("cpuTotal", CpuPerc.format(cpuPerc.getCombined()));
			dataList.add(dataMap);
		}
		return dataList;
	}
	
	
	
	

	/**
	 * 3.获取内存信息
	 * 
	 * @return
	 * @throws SigarException
	 */
	public static MemInfo getMemoryInfos() throws SigarException {
		MemInfo memInfo=new MemInfo();
		Mem mem = getInstance().getMem();
		Swap swap = getInstance().getSwap();
		memInfo.setIp(getDefaultIpAddress());
		memInfo.setMac(getMAC());
		memInfo.setMemtotals( mem.getTotal() / 1024L+"k");
		memInfo.setMemused( mem.getUsed() / 1024L+"k");
		memInfo.setMemfree(mem.getFree() / 1024L +"k");
		memInfo.setSwaptotals(swap.getTotal() / 1024L+"k");
		memInfo.setSwapused(mem.getUsed() / 1024L+"k");
		memInfo.setSwapfree( mem.getFree() / 1024L +"k");
		return memInfo;
	}

	/**
	 * 4.获取操作系统信息
	 * 
	 * @return
	 */
	public static List<SigarInfoEntity> getOsInfos() {
		List<SigarInfoEntity> osInfoList = new ArrayList<SigarInfoEntity>();
		OperatingSystem os = OperatingSystem.getInstance();
		osInfoList.add(new SigarInfoEntity(os.getArch(), "操作系统"));
		osInfoList.add(new SigarInfoEntity(os.getCpuEndian(), "操作系统CpuEndian()"));
		osInfoList.add(new SigarInfoEntity(os.getDataModel(), "操作系统DataModel()"));
		osInfoList.add(new SigarInfoEntity(os.getDescription(), "操作系统的描述"));
		osInfoList.add(new SigarInfoEntity(os.getVendor(), "操作系统的供应商"));
		osInfoList.add(new SigarInfoEntity(os.getVendorCodeName(), "操作系统的供应商编号"));
		osInfoList.add(new SigarInfoEntity(os.getVendorName(), "操作系统的供应商名称"));
		osInfoList.add(new SigarInfoEntity(os.getVendorVersion(), "操作系统供应商类型"));
		osInfoList.add(new SigarInfoEntity(os.getVersion(), "操作系统的版本号"));
		return osInfoList;
	}

	/**
	 * 5.获取文件信息
	 * 
	 * @return
	 * @throws SigarException
	 */
	public static List<SigarInfoEntity> getFileInfos() throws SigarException {
		List<SigarInfoEntity> fileInfoList = new ArrayList<SigarInfoEntity>();

		FileSystem fslist[] = getInstance().getFileSystemList();
		for (int i = 0; i < fslist.length; i++) {
			FileSystem fs = fslist[i];
			fileInfoList.add(new SigarInfoEntity(i + "", "分区的盘符号" + i));
			fileInfoList.add(new SigarInfoEntity(fs.getDevName(), "盘符名称" + i));
			fileInfoList.add(new SigarInfoEntity(fs.getDirName(), "盘符路径" + i));
			fileInfoList.add(new SigarInfoEntity(fs.getFlags() + "", "盘符标志" + i));
			fileInfoList.add(new SigarInfoEntity(fs.getSysTypeName(), "盘符类型(FAT32,NTFS)" + i));
			fileInfoList.add(new SigarInfoEntity(fs.getTypeName(), "盘符类型名" + i));
			fileInfoList.add(new SigarInfoEntity(fs.getType() + "", "盘符文件系统类型" + i));

			FileSystemUsage usage = null;
			usage = getInstance().getFileSystemUsage(fs.getDirName());
			switch (fs.getType()) {
			case 0: // TYPE_UNKNOWN ：未知
				break;
			case 1: // TYPE_NONE
				break;
			case 2: // TYPE_LOCAL_DISK : 本地硬盘

				fileInfoList.add(new SigarInfoEntity(usage.getTotal() + "KB", "文件系统总大小" + fs.getDevName()));
				fileInfoList.add(new SigarInfoEntity(usage.getFree() + "KB", "文件系统剩余大小" + fs.getDevName()));
				fileInfoList.add(new SigarInfoEntity(usage.getAvail() + "KB", "文件系统可用大小" + fs.getDevName()));
				fileInfoList.add(new SigarInfoEntity(usage.getUsed() + "KB", "文件系统已经使用量" + fs.getDevName()));
				fileInfoList.add(new SigarInfoEntity(usage.getUsePercent() * 100D + "%", "文件系统资源的利用率" + fs.getDevName()));

				break;
			case 3:// TYPE_NETWORK ：网络
				break;
			case 4:// TYPE_RAM_DISK ：闪存
				break;
			case 5:// TYPE_CDROM ：光驱
				break;
			case 6:// TYPE_SWAP ：页面交换
				break;
			}

			fileInfoList.add(new SigarInfoEntity(usage.getDiskReads() + "", fs.getDevName() + "读出"));
			fileInfoList.add(new SigarInfoEntity(usage.getDiskWrites() + "", fs.getDevName() + "写入"));
		}
		return fileInfoList;
	}

	/**
	 * 6.获取网络信息
	 * 
	 * @return
	 * @throws SigarException
	 */
	public static List<SigarInfoEntity> getNetInfos() throws SigarException {
		List<SigarInfoEntity> netInfoList = new ArrayList<SigarInfoEntity>();
		String nIfNames[] = getInstance().getNetInterfaceList();
		for (int i = 0; i < nIfNames.length; i++) {
			String name = nIfNames[i];
			NetInterfaceConfig nIfConfig = getInstance().getNetInterfaceConfig(name);

			netInfoList.add(new SigarInfoEntity(name, "网络设备名" + i));
			netInfoList.add(new SigarInfoEntity(nIfConfig.getAddress(), "IP地址" + i));
			netInfoList.add(new SigarInfoEntity(nIfConfig.getNetmask(), "子网掩码" + i));

			if ((nIfConfig.getFlags() & 1L) <= 0L) {
				System.out.println("getNetInterfaceStat not exist");
				continue;
			}
			NetInterfaceStat nIfStat = getInstance().getNetInterfaceStat(name);
			netInfoList.add(new SigarInfoEntity(nIfStat.getRxPackets() + "", "接收的总包裹数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getTxPackets() + "", "发送的总包裹数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getRxBytes() + "", "接收到的总字节数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getTxBytes() + "", "发送的总字节数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getRxErrors() + "", "接收到的错误包数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getTxErrors() + "", "发送数据包时的错误数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getRxDropped() + "", "接收时丢弃的包数" + i));
			netInfoList.add(new SigarInfoEntity(nIfStat.getTxDropped() + "", "发送时丢弃的包数" + i));
		}
		return netInfoList;
	}

}
