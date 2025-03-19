package com.entity.view;

import com.entity.ShucaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 蔬菜信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-09-28 21:32:25
 */
@TableName("shucaixinxi")
public class ShucaixinxiView  extends ShucaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShucaixinxiView(){
	}
 
 	public ShucaixinxiView(ShucaixinxiEntity shucaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, shucaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
