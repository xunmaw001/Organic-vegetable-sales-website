package com.dao;

import com.entity.DiscussshucaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshucaixinxiVO;
import com.entity.view.DiscussshucaixinxiView;


/**
 * 蔬菜信息评论表
 * 
 * @author 
 * @email 
 * @date 2020-09-28 21:32:26
 */
public interface DiscussshucaixinxiDao extends BaseMapper<DiscussshucaixinxiEntity> {
	
	List<DiscussshucaixinxiVO> selectListVO(@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);
	
	DiscussshucaixinxiVO selectVO(@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);
	
	List<DiscussshucaixinxiView> selectListView(@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);

	List<DiscussshucaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);
	
	DiscussshucaixinxiView selectView(@Param("ew") Wrapper<DiscussshucaixinxiEntity> wrapper);
	
}
