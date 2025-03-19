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


import com.dao.ShucaixinxiDao;
import com.entity.ShucaixinxiEntity;
import com.service.ShucaixinxiService;
import com.entity.vo.ShucaixinxiVO;
import com.entity.view.ShucaixinxiView;

@Service("shucaixinxiService")
public class ShucaixinxiServiceImpl extends ServiceImpl<ShucaixinxiDao, ShucaixinxiEntity> implements ShucaixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShucaixinxiEntity> page = this.selectPage(
                new Query<ShucaixinxiEntity>(params).getPage(),
                new EntityWrapper<ShucaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShucaixinxiEntity> wrapper) {
		  Page<ShucaixinxiView> page =new Query<ShucaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShucaixinxiVO> selectListVO(Wrapper<ShucaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShucaixinxiVO selectVO(Wrapper<ShucaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShucaixinxiView> selectListView(Wrapper<ShucaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShucaixinxiView selectView(Wrapper<ShucaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
