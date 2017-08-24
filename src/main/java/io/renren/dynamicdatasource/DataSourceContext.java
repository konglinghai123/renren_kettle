package io.renren.dynamicdatasource;

/**
 * 增加多数据源，在此配置
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017/8/18 23:46
 */
public enum DataSourceContext {
    FIRST("first"),
    SECOND("second");

    private String name;

    DataSourceContext(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
