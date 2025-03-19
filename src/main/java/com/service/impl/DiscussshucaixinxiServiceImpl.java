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


import com.dao.DiscussshucaixinxiDao;
import com.entity.DiscussshucaixinxiEntity;
import com.service.DiscussshucaixinxiService;
import com.entity.vo.DiscussshucaixinxiVO;
import com.entity.view.DiscussshucaixinxiView;

@Service("discussshucaixinxiService")
public class DiscussshucaixinxiServiceImpl extends ServiceImpl<DiscussshucaixinxiDao, DiscussshucaixinxiEntity> implements DiscussshucaixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshucaixinxiEntity> page = this.selectPage(
                new Query<DiscussshucaixinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussshucaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshucaixinxiEntity> wrapper) {
		  Page<DiscussshucaixinxiView> page =new Query<DiscussshucaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshucaixinxiVO> selectListVO(Wrapper<DiscussshucaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshucaixinxiVO selectVO(Wrapper<DiscussshucaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshucaixinxiView> selectListView(Wrapper<DiscussshucaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshucaixinxiView selectView(Wrapper<DiscussshucaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
