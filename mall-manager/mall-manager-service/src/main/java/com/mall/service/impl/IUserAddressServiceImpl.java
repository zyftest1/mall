package com.mall.service.impl;


import com.mall.service.BsUserAddress;
import com.mall.service.IUserAddressDao;
import com.mall.service.IUserAddressService;

import java.util.ArrayList;
import java.util.List;

public class IUserAddressServiceImpl implements IUserAddressService {
    @Override
    public List<BsUserAddress> findBsUserAddressByUserId(int id) {
        IUserAddressDao iUserAddressDao = new IUserAddressDaoImpl();
        List<BsUserAddress> bsUserAddressList = new ArrayList<BsUserAddress>();
        bsUserAddressList = iUserAddressDao.selectBsUserAddressByUserId(id);
        return bsUserAddressList;
    }

    @Override
    public BsUserAddress findBsUserAddressByAddID(int addID) {
        IUserAddressDao iUserAddressDao = new IUserAddressDaoImpl();
        BsUserAddress bsUserAddress = new BsUserAddress();
        bsUserAddress = iUserAddressDao.selestBsUserAddressByAddID(addID);
        return bsUserAddress;
    }

    @Override
    public void addBsUserAddress(BsUserAddress bsUserAddress) {
        IUserAddressDao iUserAddressDao = new IUserAddressDaoImpl();
        iUserAddressDao.insertBsUserAddress(bsUserAddress);
    }

    @Override
    public void removeBsUserAddressByAddid(int addid) {
        IUserAddressDao iUserAddressDao = new IUserAddressDaoImpl();
        iUserAddressDao.deleteBsUserAddress(addid);
    }

    @Override
    public void modifyBsUserAddress(BsUserAddress bsUserAddress) {
        IUserAddressDao iUserAddressDao = new IUserAddressDaoImpl();
        iUserAddressDao.updateBsUserAddress(bsUserAddress);
    }
}
