package com.myapp.entity;

import java.io.Serializable;

public class PicList implements Serializable {
    private Long id;

    private String imgSrc;

    private String imgLink;

    private String imgType;

    private Float imgPrefer;

    private String imgCate;

    private String imgFigure;

    private String imgCount;

    private String imgCreateTime;

    private static final long serialVersionUID = 1L;

    public PicList(Long id, String imgSrc, String imgLink, String imgType, Float imgPrefer, String imgCate, String imgFigure, String imgCount, String imgCreateTime) {
        this.id = id;
        this.imgSrc = imgSrc;
        this.imgLink = imgLink;
        this.imgType = imgType;
        this.imgPrefer = imgPrefer;
        this.imgCate = imgCate;
        this.imgFigure = imgFigure;
        this.imgCount = imgCount;
        this.imgCreateTime = imgCreateTime;
    }

    public PicList() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc == null ? null : imgSrc.trim();
    }

    public String getImgLink() {
        return imgLink;
    }

    public void setImgLink(String imgLink) {
        this.imgLink = imgLink == null ? null : imgLink.trim();
    }

    public String getImgType() {
        return imgType;
    }

    public void setImgType(String imgType) {
        this.imgType = imgType == null ? null : imgType.trim();
    }

    public Float getImgPrefer() {
        return imgPrefer;
    }

    public void setImgPrefer(Float imgPrefer) {
        this.imgPrefer = imgPrefer;
    }

    public String getImgCate() {
        return imgCate;
    }

    public void setImgCate(String imgCate) {
        this.imgCate = imgCate == null ? null : imgCate.trim();
    }

    public String getImgFigure() {
        return imgFigure;
    }

    public void setImgFigure(String imgFigure) {
        this.imgFigure = imgFigure == null ? null : imgFigure.trim();
    }

    public String getImgCount() {
        return imgCount;
    }

    public void setImgCount(String imgCount) {
        this.imgCount = imgCount == null ? null : imgCount.trim();
    }

    public String getImgCreateTime() {
        return imgCreateTime;
    }

    public void setImgCreateTime(String imgCreateTime) {
        this.imgCreateTime = imgCreateTime == null ? null : imgCreateTime.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", imgSrc=").append(imgSrc);
        sb.append(", imgLink=").append(imgLink);
        sb.append(", imgType=").append(imgType);
        sb.append(", imgPrefer=").append(imgPrefer);
        sb.append(", imgCate=").append(imgCate);
        sb.append(", imgFigure=").append(imgFigure);
        sb.append(", imgCount=").append(imgCount);
        sb.append(", imgCreateTime=").append(imgCreateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}