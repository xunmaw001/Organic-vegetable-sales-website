package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.LiaotianzixunDao;
import com.entity.LiaotianzixunEntity;
import com.service.LiaotianzixunService;
import com.entity.vo.LiaotianzixunVO;
import com.entity.view.LiaotianzixunView;

@Service("liaotianzixunService")
public class LiaotianzixunServiceImpl extends ServiceImpl<LiaotianzixunDao, LiaotianzixunEntity> implements LiaotianzixunService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LiaotianzixunEntity> page = this.selectPage(
                new Query<LiaotianzixunEntity>(params).getPage(),
                new EntityWrapper<LiaotianzixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LiaotianzixunEntity> wrapper) {
		  Page<LiaotianzixunView> page =new Query<LiaotianzixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LiaotianzixunVO> selectListVO(Wrapper<LiaotianzixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LiaotianzixunVO selectVO(Wrapper<LiaotianzixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LiaotianzixunView> selectListView(Wrapper<LiaotianzixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LiaotianzixunView selectView(Wrapper<LiaotianzixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
