package com.entity.view;

import com.entity.DiscussshucaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 蔬菜信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-09-28 21:32:26
 */
@TableName("discussshucaixinxi")
public class DiscussshucaixinxiView  extends DiscussshucaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussshucaixinxiView(){
	}
 
 	public DiscussshucaixinxiView(DiscussshucaixinxiEntity discussshucaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussshucaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
