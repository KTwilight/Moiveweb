package extra;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Year {
    /*yearId=0，对应所有;
            =1，对应2020及之后
            =2，对应2010——2020
            =3，对应2000——2010
            ....
            =5，对应1980——1990
            =6，对应1980及以前。
    * */
    private Integer yearId;
    private String description;
    private Date lowerDate;

    public Date getLowerDate() {
        return lowerDate;
    }

    public void setLowerDate(Date lowerDate) {
        this.lowerDate = lowerDate;
    }

    public Date getUpperDate() {
        return upperDate;
    }

    public void setUpperDate(Date upperDate) {
        this.upperDate = upperDate;
    }

    private Date upperDate;
    public Year(Integer yearId) throws ParseException {
        this.yearId = yearId;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        if(yearId == 0){
            lowerDate=simpleDateFormat.parse("1900-01-01");
            upperDate=simpleDateFormat.parse("9999-01-01");
            description = "全部";
        }
        else if(yearId == 1){
            lowerDate=simpleDateFormat.parse("2020-01-01");
            upperDate=simpleDateFormat.parse("9999-01-01");
            description = "2020后";
        }
        else if(yearId == 6){
            lowerDate=simpleDateFormat.parse("1900-01-01");
            upperDate=simpleDateFormat.parse("1980-01-01");
            description = "1980前";
        }
        else {
            Integer yearLow = 2020-yearId*10;
            Integer yearUp = yearLow+10;
            lowerDate=simpleDateFormat.parse(yearLow.toString()+"-01-01");
            upperDate=simpleDateFormat.parse(yearUp.toString()+"-01-01");
            description = yearUp.toString();
        }
    }

    public Year() {
    }

    public Integer getYearId() {
        return yearId;
    }

    public void setYearId(Integer yearId) {
        this.yearId = yearId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
