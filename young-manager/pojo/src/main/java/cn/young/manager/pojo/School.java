package cn.young.manager.pojo;

import java.io.Serializable;

/**
 * @author  young
 */
public class School implements Serializable {
    private Long sid;

    private String schName;

    private String schImage;

    @Override
    public String toString() {
        return "School{" +
                "sid=" + sid +
                ", schName='" + schName + '\'' +
                ", schImage='" + schImage + '\'' +
                ", schDes='" + schDes + '\'' +
                '}';
    }

    private String schDes;

    public Long getSid() {
        return sid;
    }

    public void setSid(Long sid) {
        this.sid = sid;
    }

    public String getSchName() {
        return schName;
    }

    public void setSchName(String schName) {
        this.schName = schName == null ? null : schName.trim();
    }

    public String getSchImage() {
        return schImage;
    }

    public void setSchImage(String schImage) {
        this.schImage = schImage == null ? null : schImage.trim();
    }

    public String getSchDes() {
        return schDes;
    }

    public void setSchDes(String schDes) {
        this.schDes = schDes == null ? null : schDes.trim();
    }
}