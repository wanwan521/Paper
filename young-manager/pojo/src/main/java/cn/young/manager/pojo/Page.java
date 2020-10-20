package cn.young.manager.pojo;

/**
 * @author  young
 */
public class Page<T> {

    private int page;

    private int limit;

    @Override
    public String toString() {
        return "Page{" +
                "page=" + page +
                ", limit=" + limit +
                ", schName='" + schName + '\'' +
                '}';
    }

    private String schName;

    public Page(int page, int limit, String schName) {
        this.page = page;
        this.limit = limit;
        this.schName = schName;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public String getSchName() {
        return schName;
    }

    public void setSchName(String schName) {
        this.schName = schName;
    }

    public Page() {
        super();
    }
}
