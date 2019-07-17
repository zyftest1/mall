import com.utils.JdbcUtils;
import com.utils.JdbcUtils_C3P0;
import org.junit.Test;

import java.sql.SQLException;

public class MVCTest {

    public static void main(String[] args) throws SQLException {
        System.out.println(JdbcUtils_C3P0.getDataSource());
    }
    @Test
    public void connTest(){
        System.out.println(JdbcUtils.getConnection());
    }

    @Test
    public void connTest2() throws SQLException {
        System.out.println(JdbcUtils_C3P0.getDataSource());
    }
}
