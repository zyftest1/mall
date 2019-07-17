package com.mall.service;



import java.util.List;

public interface IUserAddressDao {
//查询 由用户姓名
    public List<BsUserAddress> selectBsUserAddressByName(String name);
   // 查询 由addID
    public BsUserAddress selestBsUserAddressByAddID(int addID);
//新增
    public void insertBsUserAddress(BsUserAddress bsUserAddress);
//删除 由地址ID
    public void deleteBsUserAddress(int addID);
//修改
    public void updateBsUserAddress(BsUserAddress bsUserAddress);
}
