package domain;

public class Actor {
    private Integer aid;
    private String name;

    public Actor() {
    }

    public Actor(Integer aid, String name) {
        this.aid = aid;
        this.name = name;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
