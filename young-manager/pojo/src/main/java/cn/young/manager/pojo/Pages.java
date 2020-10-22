package cn.young.manager.pojo;

public class Pages<T> {
    private int page;

    private int limit;

    public Pages() {
    }

    public Pages(int page, int limit) {
        this.page = page;
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "Pages{" +
                "page=" + page +
                ", limit=" + limit +
                '}';
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
}
