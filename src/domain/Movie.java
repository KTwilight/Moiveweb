package domain;

import java.util.Date;

public class Movie {
    private Integer mid;
    private String poster;
    private String name;
    private Float score;
    private Integer ratingCount;
    private Date date;
    private String description;

    public Movie() {
    }

    public Movie(Integer mid, String poster, String name, Float score, Integer ratingCount, Date date, String description) {
        this.mid = mid;
        this.poster = poster;
        this.name = name;
        this.score = score;
        this.ratingCount = ratingCount;
        this.date = date;
        this.description = description;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public Integer getRatingCount() {
        return ratingCount;
    }

    public void setRatingCount(Integer ratingCount) {
        this.ratingCount = ratingCount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
