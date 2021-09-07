package com.myapp.service;

import com.myapp.entity.PicList;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public interface PicListService {
    int deleteByPrimaryKey(Long id);

    int insert(PicList record);

    int insertSelective(PicList record);

    PicList selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PicList record);

    int updateByPrimaryKey(PicList record);

    //轮播图list
    List<PicList> swiper(int count);

    //pic_list page,type数据
    List<PicList> getHomeList(String type, int page);

    //获取所有人物名称列表
    ArrayList<String> selectAllFigure();

    //限定人物名称得到该角色所有数据
    List<PicList> selectFigureDetails(String figure);
}
