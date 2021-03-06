package domain;

public class Director {
    private Integer did;
    private String name;

    public Director() {
    }

    public Director(Integer did, String name) {
        this.did = did;
        this.name = name;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
