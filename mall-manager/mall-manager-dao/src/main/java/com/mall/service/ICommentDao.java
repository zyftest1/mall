package com.mall.service;

import java.util.List;

public interface ICommentDao {
    //根据oID查询具体的订单评论，一个订单只有一条评论
    public BsComComment selectOneCommentByOid(String oid);

    //根据sID查询某一个商品的评论
    public List<BsComComment> selectAllCommentBySid(String sid);

    //根据oID给订单评论
    public boolean giveCommentByOid(String oid,String content);

    //确认收货
    public boolean confirmGetGoodsByOid(String oid);
}
