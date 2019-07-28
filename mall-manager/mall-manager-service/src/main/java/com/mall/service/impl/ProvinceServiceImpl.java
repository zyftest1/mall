package com.mall.service.impl;

import com.mall.Province;
import com.mall.service.IProvinceDao;
import com.mall.service.IProvinceService;

import java.sql.SQLException;
import java.util.List;

public class ProvinceServiceImpl  implements IProvinceService {
    @Override
    public List<Province> findProvinces() throws SQLException {
        IProvinceDao provinceDao = new ProvinceDaoImpl();
        List<Province> provinceList = provinceDao.getProvinces();
        return provinceList;
    }

    @Override
    public Province findProvinceByPid(int pid) throws SQLException {
        IProvinceDao provinceDao = new ProvinceDaoImpl();
        Province province = provinceDao.selectProvinceByPid(pid);
        return province;
    }
}
