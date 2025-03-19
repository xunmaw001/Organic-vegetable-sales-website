package com.dao;

import com.entity.LiaotianzixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LiaotianzixunVO;
import com.entity.view.LiaotianzixunView;


/**
 * 聊天资讯
 * 
 * @author 
 * @email 
 * @date 2020-09-28 17:46:35
 */
public interface LiaotianzixunDao extends BaseMapper<LiaotianzixunEntity> {
	
	List<LiaotianzixunVO> selectListVO(@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);
	
	LiaotianzixunVO selectVO(@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);
	
	List<LiaotianzixunView> selectListView(@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);

	List<LiaotianzixunView> selectListView(Pagination page,@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);
	
	LiaotianzixunView selectView(@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);
	
}
