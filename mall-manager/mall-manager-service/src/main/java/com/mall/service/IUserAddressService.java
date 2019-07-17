package com.mall.service;

import java.util.List;

public interface IUserAddressService {
//查询
    public List<BsUserAddress> findBsUserAddressByName(String name);

    public BsUserAddress findBsUserAddressByAddID(int addID);
//新增
    public void addBsUserAddress(BsUserAddress bsUserAddress);
//删除
    public void removeBsUserAddressByAddid(int addid);
//修改
    public void modifyBsUserAddress(BsUserAddress bsUserAddress);
}
