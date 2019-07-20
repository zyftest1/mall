package com.utils;

import java.util.UUID;

public class UUIDUtils {
	/**
	 * 随机生成id
	 * @return
	 */
	public static String getId(){

		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
	
	
	public static String getUUID64(){

		return getId()+getId();
	}
	
	/**
	 * 生成随机码
	 * @return
	 */
	public static String getCode(){
		return getId();
	}
	
	public static void main(String[] args) {
		System.out.println(getId());
	}

	public static String createOrderId() {

		int machineId = 1;//最大支持1-9个集群机器部署  

		int hashCodeV = UUID.randomUUID().toString().hashCode();

		if(hashCodeV < 0) {//有可能是负数  

			hashCodeV = - hashCodeV;

		}

		// 0 代表前面补充0       

		// 4 代表长度为4       

		// d 代表参数为正数型  

		return machineId+String.format("%010d",hashCodeV);

	}

}
