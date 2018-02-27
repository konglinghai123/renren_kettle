package io.renren.modules.kettle.engine.log;

import org.pentaho.di.job.Job;

public interface Listener {
    void handleMsg(Job job, String msg);

}
