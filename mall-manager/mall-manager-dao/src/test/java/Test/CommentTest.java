package Test;

import com.mall.service.BsComComment;
import com.mall.service.ICommentDao;
import com.mall.service.impl.ICommentDaoImpl;
import org.junit.Test;

import java.util.List;

public class CommentTest {

    @Test
    public void selectOneCommentByOidTest(){
        ICommentDao commentDao=new ICommentDaoImpl();
        List<BsComComment> list=commentDao.selectAllCommentBySid("604252110302");
        System.out.println(list);
    }

    @Test
    public void selectAllCommentBySidTest(){
        ICommentDao commentDao=new ICommentDaoImpl();
        BsComComment list=commentDao.selectOneCommentByOid("1025130271");
        System.out.println(list);
    }

    @Test
    public void giveCommentByOidTest(){
        ICommentDao commentDao=new ICommentDaoImpl();
        boolean flag=commentDao.giveCommentByOid("1025130271","个人感觉质量一般");
        System.out.println(flag);
    }
}
