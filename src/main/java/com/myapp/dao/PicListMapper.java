package com.myapp.dao;

import com.myapp.entity.PicList;

import java.util.List;

public interface PicListMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PicList record);

    int insertSelective(PicList record);

    PicList selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PicList record);

    int updateByPrimaryKey(PicList record);

    //轮播图list
    List<PicList> swiper(int count);

    //pic_list page,type数据
    List<PicList> getHomeList(String type);

    //获取所有人物名称列表
    List<String> selectAllFigure();

    //限定人物名称得到该角色所有数据
    List<PicList> selectFigureDetails(String figure);
}