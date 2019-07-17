package com.mall.service.impl;


import com.mall.service.BsUserAccount;
import com.mall.service.IUserDao;
import com.utils.DateFormat;
import com.utils.JdbcUtils_C3P0;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class IUserDaoImpl implements IUserDao {
    @Override
    public void insertBsUserAccount(BsUserAccount bsUserAccount) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="insert into bs_user_account(user_id,user_name,user_password,user_tel,user_pay_key,user_create_date) values(?,?,?,?,?,?)";
        try {
            bsUserAccount.setPayKey("123456");
            qr.update(sql,bsUserAccount.getID(),bsUserAccount.getBsName(),bsUserAccount.getPassword(),bsUserAccount.getTel(),bsUserAccount.getPayKey(), DateFormat.nowTime());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteBsUserAccount(String bsName) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="delete from bs_user_account where user_name=?";
        try {
            qr.update(sql,bsName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifyBsUserAccount(BsUserAccount bsUserAccount,String bsName) {
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="update bs_user_account set user_name=?,user_tel=?,user_email=?,user_true_name=?,age=?,user_address=?,user_idcard=?,birthday=?,job=?,user_password=?,user_pay_key=? where user_name=?";
        try {
            qr.update(sql,bsUserAccount.getBsName(),bsUserAccount.getTel(),bsUserAccount.getEmail(),
                    bsUserAccount.getName(),bsUserAccount.getAge(),bsUserAccount.getAddress(),
                    bsUserAccount.getIdCard(),bsUserAccount.getBirthday(),bsUserAccount.getJob(),
                    bsUserAccount.getPassword(),bsUserAccount.getPayKey(),bsName);
            System.out.println(bsUserAccount.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public BsUserAccount selectBsUserAccountByName(String bsName,String password) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_user_account where user_name=? and user_password=?";
        BsUserAccount bsUserAccount = new BsUserAccount();
        try {
            qr.query(sql, new ResultSetHandler<BsUserAccount>() {

                @Override
                public BsUserAccount handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        bsUserAccount.setID(rs.getInt("user_id"));
                        bsUserAccount.setBsName(rs.getString("user_name"));
                        bsUserAccount.setPassword(rs.getString("user_password"));
                        bsUserAccount.setTel(rs.getString("user_tel"));
                        bsUserAccount.setEmail(rs.getString("user_email"));
                        bsUserAccount.setHead(rs.getString("user_head"));
                        bsUserAccount.setPayKey(rs.getString("user_pay_key"));
                        bsUserAccount.setName(rs.getString("user_true_name"));
                        bsUserAccount.setAge(rs.getInt("age"));
                        bsUserAccount.setSex(rs.getString("sex"));
                        bsUserAccount.setAddress(rs.getString("user_address"));
                        bsUserAccount.setCreateDate(rs.getString("user_create_date"));
                        bsUserAccount.setIdCard(rs.getString("user_idcard"));
                        bsUserAccount.setBirthday(rs.getString("birthday"));
                        bsUserAccount.setJob(rs.getString("job"));
                    }
                    return bsUserAccount;
                }

            },bsName,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        System.out.println(bsUserAccount.toString());
        return bsUserAccount;

    }

    @Override
    public BsUserAccount selectBsUserAccountByName(String bsName) {
        QueryRunner qr = new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_user_account where user_name=?";
        BsUserAccount bsUserAccount = new BsUserAccount();

        try {
            qr.query(sql, new ResultSetHandler<BsUserAccount>() {

                @Override
                public BsUserAccount handle(ResultSet rs) throws SQLException {
                    while(rs.next()) {
                        bsUserAccount.setID(rs.getInt("user_id"));
                        bsUserAccount.setBsName(rs.getString("user_name"));
                        bsUserAccount.setPassword(rs.getString("user_password"));
                        bsUserAccount.setTel(rs.getString("user_tel"));
                        bsUserAccount.setEmail(rs.getString("user_email"));
                        bsUserAccount.setHead(rs.getString("user_head"));
                        bsUserAccount.setPayKey(rs.getString("user_pay_key"));
                        bsUserAccount.setName(rs.getString("user_true_name"));
                        bsUserAccount.setAge(rs.getInt("age"));
                        bsUserAccount.setSex(rs.getString("sex"));
                        bsUserAccount.setAddress(rs.getString("user_address"));
                        bsUserAccount.setCreateDate(rs.getString("user_create_date"));
                        bsUserAccount.setIdCard(rs.getString("user_idcard"));
                        bsUserAccount.setBirthday(rs.getString("birthday"));
                        bsUserAccount.setJob(rs.getString("job"));
                    }
                    return bsUserAccount;
                }

            },bsName);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(bsUserAccount.toString());
        return bsUserAccount;

    }

    @Override
    public List<String> selectColumnListAll() throws SQLException {
        //1.创建queryrunner对象
        QueryRunner qr=new QueryRunner(JdbcUtils_C3P0.getDataSource());
        String sql="select * from bs_user_account";
        List<BsUserAccount> bsUserAccounts = null;

        //调用queryrunner的query查询方法
        List<String> result= qr.query(sql, new ColumnListHandler<String>("user_name"));
        for (String str : result) {
            System.out.println(str);
        }
        return result;
    }
}
