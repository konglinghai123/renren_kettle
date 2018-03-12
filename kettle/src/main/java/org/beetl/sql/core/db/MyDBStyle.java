package org.beetl.sql.core.db;

import org.beetl.sql.core.SQLSource;

public interface MyDBStyle extends DBStyle{

     SQLSource genSelectVal(String val);

     String Date14Exp();
}
