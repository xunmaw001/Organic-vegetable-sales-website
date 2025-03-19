package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LiaotianzixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LiaotianzixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LiaotianzixunView;


/**
 * 聊天资讯
 *
 * @author 
 * @email 
 * @date 2020-09-28 17:46:35
 */
public interface LiaotianzixunService extends IService<LiaotianzixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LiaotianzixunVO> selectListVO(Wrapper<LiaotianzixunEntity> wrapper);
   	
   	LiaotianzixunVO selectVO(@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);
   	
   	List<LiaotianzixunView> selectListView(Wrapper<LiaotianzixunEntity> wrapper);
   	
   	LiaotianzixunView selectView(@Param("ew") Wrapper<LiaotianzixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LiaotianzixunEntity> wrapper);
   	
}

