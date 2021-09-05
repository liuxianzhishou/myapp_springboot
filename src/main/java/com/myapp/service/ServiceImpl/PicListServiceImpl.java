package com.myapp.service.ServiceImpl;

import com.myapp.dao.PicListMapper;
import com.myapp.entity.PicList;
import com.myapp.service.PicListService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

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
    }

    @Override
    public List<PicList> getHomeList(String type, int page) {
        return picListMapper.getHomeList(type,page);
    }

    @Override
    public ArrayList<String> selectAllFigure() {
        ArrayList<String> res=new ArrayList<>();
        List<String> resSQL=picListMapper.selectAllFigure();

        return res;
    }
}
