package com.myapp.control;

import com.github.pagehelper.PageHelper;
import com.myapp.entity.PicList;
import com.myapp.service.ServiceImpl.PicListServiceImpl;
import com.myapp.utils.Paging;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Api(tags = "controller-yh", description = "我的controller层")
@RestController
@CrossOrigin
public class Controller {
    @Autowired
    private PicListServiceImpl picListService;

    //--------------------------后端发数据到前端--------------------------------------
    @ApiOperation("传送数据到前端-首页轮播图数据")
    @RequestMapping(value = "/swiper",method = RequestMethod.GET)
    public List<PicList> selectAll() {
        return picListService.swiper(4);
    }

    @ApiOperation("传送数据到前端-利用分页工具生成首页list数据")
    @RequestMapping(value = "/picListPage/{type}/{page}", method = RequestMethod.GET)
    public Paging homeListPage(@PathVariable String type, @PathVariable int page) {
        PageHelper.startPage(page,10);
        List<PicList> tmp = picListService.getHomeList(type);
        return Paging.restPage(tmp);
    }

    @ApiOperation("传送数据到前端-detail数据")
    @RequestMapping(value = "/detail/{id}",method = RequestMethod.GET)
    public PicList selectByKey(@PathVariable long id)
    {
        return picListService.selectByPrimaryKey(id);
    }

    @ApiOperation("传送数据到前端--Category角色名称列表")
    @RequestMapping(value = "/selectAllFigure",method = RequestMethod.GET)
    public ArrayList<String> selectAllFigure() {
        return picListService.selectAllFigure();
    }

    @ApiOperation("传送数据到前端--Category每个角色detail列表")
    @RequestMapping(value = "/selectFigureDetails/{figure}",method = RequestMethod.GET)
    public List<PicList> selectFigureDetails(@PathVariable String figure) {
        return picListService.selectFigureDetails(figure);
    }

    //--------------------------前端发数据到后端-------------------------------
    @ApiOperation("接收前端传来的数据，进行数据库的更新-update的detail数据")
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
