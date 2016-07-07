package com.kate.Component.sentry;

import java.util.Queue;

import com.kate.Component.sentry.http.HttpRequestPost;

/**
 * 
 * @author kate
 *
 */
public abstract class SentryAgent {

    private HttpRequestPost httpRequestPost;
    private Queue queue;

    public abstract boolean sendMsg(String serverType,String serverId, String alertMsg,String type) ;

    public abstract String expressSendHttp(String json);

    public abstract void start();

    public Queue getQueue() {
        return queue;
    }

    public void setQueue(Queue queue) {
        this.queue = queue;
    }

    public HttpRequestPost getHttpRequestPost() {
        return httpRequestPost;
    }

    public void setHttpRequestPost(HttpRequestPost httpRequestPost) {
        this.httpRequestPost = httpRequestPost;
    }
}
