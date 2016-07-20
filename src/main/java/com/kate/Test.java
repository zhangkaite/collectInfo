package com.kate;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import com.kate.collectInfo.tools.RumCmdUtil;

public class Test {
	
	public static void main(String[] args) throws Exception {
		 System.out.println("------------------dirOpt()--------------------"); 
		// System.out.println("cpu占用率"+RumCmdUtil.getTaskDetail("4"));;
		 Map<String, Object> map=RumCmdUtil.getTaskDetail(13616);
		Set keySet=map.keySet();
		for (Iterator iterator = keySet.iterator(); iterator.hasNext();) {
			String key = (String) iterator.next();
			System.out.println("key:"+key+";value:"+map.get(key));
			
		}
	        Process process; 
	        try { 
	            //执行命令 
	            process = Runtime.getRuntime().exec("cmd /c wmic SERVICE get Description,Name,StartMode,State"); 
	            //取得命令结果的输出流 
	            InputStream fis = process.getInputStream(); 
	            //用一个读输出流类去读 
	            BufferedReader br = new BufferedReader(new InputStreamReader(fis,"gbk")); 
	            String line = null; 
	            //逐行读取输出到控制台 
	            while ((line = br.readLine()) != null) { 
	            	/*String[] datas=line.split("\\t");
	            	for (int i = 0; i < datas.length; i++) {
						System.out.print(datas[i]+"\t");
					}
	                System.out.println(); */
	            } 
	        } catch (IOException e) { 
	            e.printStackTrace(); 
	        } 
	}

}
