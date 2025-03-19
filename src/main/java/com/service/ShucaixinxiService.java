package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShucaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShucaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShucaixinxiView;


/**
 * 蔬菜信息
 *
 * @author 
 * @email 
 * @date 2020-09-28 21:32:25
 */
public interface ShucaixinxiService extends IService<ShucaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShucaixinxiVO> selectListVO(Wrapper<ShucaixinxiEntity> wrapper);
   	
   	ShucaixinxiVO selectVO(@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);
   	
   	List<ShucaixinxiView> selectListView(Wrapper<ShucaixinxiEntity> wrapper);
   	
   	ShucaixinxiView selectView(@Param("ew") Wrapper<ShucaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShucaixinxiEntity> wrapper);
   	
}

