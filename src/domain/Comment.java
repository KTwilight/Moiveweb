package domain;

public class Comment {
    private Integer cid;
    private String detail;

    public Comment() {
    }

    public Comment(Integer cid, String detail) {
        this.cid = cid;
        this.detail = detail;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
