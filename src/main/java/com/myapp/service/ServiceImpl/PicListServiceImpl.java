package com.myapp.service.ServiceImpl;

import com.github.pagehelper.PageHelper;
import com.myapp.dao.PicListMapper;
import com.myapp.entity.PicList;
import com.myapp.service.PicListService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class PicListServiceImpl implements PicListService {
    @Resource
    private PicListMapper picListMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }

    @Override
    public int insert(PicList record) {
        return 0;
    }

    @Override
    public int insertSelective(PicList record) {
        return 0;
    }

    @Override
    public PicList selectByPrimaryKey(Long id) {
        return picListMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(PicList record) {
        return picListMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(PicList record) {
        return 0;
    }

    @Override
    public List<PicList> swiper(int count) {
        return picListMapper.swiper(count);
//        return null;
    }

    @Override
    public List<PicList> getHomeList(String type) {
        List<PicList> tmp = picListMapper.getHomeList(type);
        return tmp;
//        return  null;
    }

    @Override
    public ArrayList<String> selectAllFigure() {
        ArrayList<String> res=new ArrayList<>();
        List<String> resSQL=picListMapper.selectAllFigure();
        HashSet<String> figureSet = new HashSet<>();
        //遍历resSQL
        for(String i : resSQL) {
            //对string针对中文和英文逗号进行拆分--正则表达式
            String[] tmp =  i.trim().split("[,，]");
            for(String j: tmp)
            {
                if(!figureSet.contains(j))
                    figureSet.add(j);
            }
        }
        for(String i : figureSet)
            res.add(i);
        return res;
    }

    @Override
    public List<PicList> selectFigureDetails(String figure) {
        return picListMapper.selectFigureDetails(figure);
//        return null;
    }

}
