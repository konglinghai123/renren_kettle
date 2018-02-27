package io.renren.modules.kettle.engine.common;

public class TaskStatus {
    /** 暂停 **/
    public static final int STATE_STOP = 0;
    /** 运行 **/
    public static final int STATE_START = 1;
    /** 异常 **/
    public static final int STATE_EXCEPTION = 2;
}
