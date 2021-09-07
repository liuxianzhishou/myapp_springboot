package com.myapp.controll;

import com.myapp.entity.PicList;
import com.myapp.service.ServiceImpl.PicListServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin
public class Controller {
    @Autowired
    private PicListServiceImpl picListService;

    //--------------------------后端发数据到前端--------------------------------------
    //传送数据到前端-轮播图数据
    @RequestMapping(value = "/swiper",method = RequestMethod.GET)
    public List<PicList> selectAll() {
        return picListService.swiper(4);
    }

    //传送数据到前端-首页list数据
    @RequestMapping(value = "/homeList/{type}/{page}",method = RequestMethod.GET)
      public List<PicList> homeList(@PathVariable String type,@PathVariable int page)
    {
        return picListService.getHomeList(type, page);
    }

    //传送数据到前端-detail数据
    @RequestMapping(value = "/detail/{id}",method = RequestMethod.GET)
    public PicList selectByKey(@PathVariable long id)
    {
        return picListService.selectByPrimaryKey(id);
    }

    //传送数据到前端--Category角色名称列表
    @RequestMapping(value = "/selectAllFigure",method = RequestMethod.GET)
    public ArrayList<String> selectAllFigure() {
        return picListService.selectAllFigure();
    }

    //传送数据到前端--Category每个角色所有数据列表
    @RequestMapping(value = "/selectFigureDetails/{figure}",method = RequestMethod.GET)
    public List<PicList> selectFigureDetails(@PathVariable String figure) {
        return picListService.selectFigureDetails(figure);
    }

    //--------------------------前端发数据到后端-------------------------------
    //接收前端传来的数据，进行数据库的更新-update的detail数据
    @RequestMapping(value = "/updateMsg",method = RequestMethod.POST)
    public void update(@RequestBody Map<String,Object> newData) {
//        System.out.println("newData——"+newData);
//        System.out.println(newData.get("imgFigure"));
        //获取newData的所有数据
        long id=Long.parseLong(String.valueOf(newData.get("imgId")));
        String imgType=String.valueOf(newData.get("imgType")).isEmpty() ? null : String.valueOf(newData.get("imgType"));
        Float imgPrefer=Float.parseFloat(String.valueOf(newData.get("imgPrefer")));
        String imgCate=String.valueOf(newData.get("imgCate")).isEmpty() ? null : String.valueOf(newData.get("imgCate"));
        String imgFigure=String.valueOf(newData.get("imgFigure")).isEmpty() ? null : String.valueOf(newData.get("imgFigure"));
        String imgCount=String.valueOf(newData.get("imgCount")).isEmpty() ? null : String.valueOf(newData.get("imgCount"));
        String imgCreateTime=String.valueOf(newData.get("imgCreateTime")).isEmpty() ? null: String.valueOf(newData.get("imgCreateTime"));
        PicList newPicList=new PicList(id, null, null,imgType,imgPrefer,imgCate,imgFigure,imgCount,imgCreateTime);
        picListService.updateByPrimaryKeySelective(newPicList);
    }
}
