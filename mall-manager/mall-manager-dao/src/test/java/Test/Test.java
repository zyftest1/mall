package Test;

import com.mall.Order;
import com.mall.service.*;
import com.mall.service.impl.IGoodsDaoImpl;
import com.mall.service.impl.IOrderDaoImpl;
import com.mall.service.impl.IStockDaoImpl;
import com.mall.service.impl.ITypeDaoImpl;

import java.nio.charset.Charset;
import java.util.List;

public class Test {

    @org.junit.Test
    public void selecteDescribeTest(){
        ITypeDao typeDao=new ITypeDaoImpl();
        List<String> styles=typeDao.selecteDescribe("裙子");
        System.out.println(styles);
    }

    @org.junit.Test
    public void selectTypeTest(){
        ITypeDao typeDao=new ITypeDaoImpl();
        List<String> styles=typeDao.selectType();
        System.out.println(styles.get(0));
//        System.out.println(styles);
    }

    @org.junit.Test
    public void selectGoodsByLikeTest(){
        IGoodsDao goodsDao=new IGoodsDaoImpl();
        List<BsComStock> list=goodsDao.selectGoodsByLike("连衣裙");
        System.out.println(list);

    }

    @org.junit.Test
    public void tt(){
        System.out.println("街道");
        System.out.println(Charset.defaultCharset());
    }

    @org.junit.Test
    public void selectIndexGoodsTest(){
        IStockDao stockDao=new IStockDaoImpl();
        List<BsComStock> bsComStocks=stockDao.selectIndexGoods();
        System.out.println(bsComStocks);
    }

    @org.junit.Test
    public void selectCIdTest(){
        IStockDao stockDao=new IStockDaoImpl();
        List<String> bsComStocks=stockDao.selectCId();
        System.out.println(bsComStocks);
    }

    @org.junit.Test
    public void selectImgUrlTest(){
        IStockDao stockDao=new IStockDaoImpl();
        List<BsComStock> bsComStocks=stockDao.selectGoodsByCID("52152100");
        System.out.println(bsComStocks);
    }

    @org.junit.Test
    public void selectUnEvaluateOrderByUidTest(){
        IOrderDao orderDao=new IOrderDaoImpl();
        List<BsOrder> orders=orderDao.selectUnEvaluateOrderByUid(100002);
        System.out.println(orders);

    }
}
