package com.dao;

import com.entity.ShucaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShucaixinxiVO;
import com.entity.view.ShucaixinxiView;


/**
 * 蔬菜信息
 * 
 * @author 
 * @email 
 * @date 2020-09-28 21:32:25
 */
public interface ShucaixinxiDao extends BaseMapper<ShucaixinxiEntity> {
	
	List<ShucaixinxiVO> selectListVO(@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);
	
	ShucaixinxiVO selectVO(@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);
	
	List<ShucaixinxiView> selectListView(@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);

	List<ShucaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);
	
	ShucaixinxiView selectView(@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);
	
}
