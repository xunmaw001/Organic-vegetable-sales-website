package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ShucaixinxiEntity;
import com.entity.view.ShucaixinxiView;

import com.service.ShucaixinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 蔬菜信息
 * 后端接口
 * @author 
 * @email 
 * @date 2020-09-28 21:32:25
 */
@RestController
@RequestMapping("/shucaixinxi")
public class ShucaixinxiController {
    @Autowired
    private ShucaixinxiService shucaixinxiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShucaixinxiEntity shucaixinxi, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("gongyingshang")) {
			shucaixinxi.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ShucaixinxiEntity> ew = new EntityWrapper<ShucaixinxiEntity>();
		PageUtils page = shucaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shucaixinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShucaixinxiEntity shucaixinxi, HttpServletRequest request){
        EntityWrapper<ShucaixinxiEntity> ew = new EntityWrapper<ShucaixinxiEntity>();
		PageUtils page = shucaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shucaixinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShucaixinxiEntity shucaixinxi){
       	EntityWrapper<ShucaixinxiEntity> ew = new EntityWrapper<ShucaixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shucaixinxi, "shucaixinxi")); 
        return R.ok().put("data", shucaixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShucaixinxiEntity shucaixinxi){
        EntityWrapper< ShucaixinxiEntity> ew = new EntityWrapper< ShucaixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shucaixinxi, "shucaixinxi")); 
		ShucaixinxiView shucaixinxiView =  shucaixinxiService.selectView(ew);
		return R.ok("查询蔬菜信息成功").put("data", shucaixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        ShucaixinxiEntity shucaixinxi = shucaixinxiService.selectById(id);
        return R.ok().put("data", shucaixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        ShucaixinxiEntity shucaixinxi = shucaixinxiService.selectById(id);
        return R.ok().put("data", shucaixinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShucaixinxiEntity shucaixinxi, HttpServletRequest request){
    	shucaixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shucaixinxi);

        shucaixinxiService.insert(shucaixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShucaixinxiEntity shucaixinxi, HttpServletRequest request){
    	shucaixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shucaixinxi);

        shucaixinxiService.insert(shucaixinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShucaixinxiEntity shucaixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shucaixinxi);
        shucaixinxiService.updateById(shucaixinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shucaixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ShucaixinxiEntity> wrapper = new EntityWrapper<ShucaixinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("gongyingshang")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = shucaixinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
