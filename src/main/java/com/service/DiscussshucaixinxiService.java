package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshucaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshucaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshucaixinxiView;


/**
 * 蔬菜信息评论表
 *
 * @author 
 * @email 
 * @date 2020-09-28 21:32:26
 */
public interface DiscussshucaixinxiService extends IService<DiscussshucaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshucaixinxiVO> selectListVO(Wrapper<DiscussshucaixinxiEntity> wrapper);
   	
   	DiscussshucaixinxiVO selectVO(@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);
   	
   	List<DiscussshucaixinxiView> selectListView(Wrapper<DiscussshucaixinxiEntity> wrapper);
   	
   	DiscussshucaixinxiView selectView(@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshucaixinxiEntity> wrapper);
   	
}

