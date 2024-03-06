// HelloServletTest.java

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class HelloServletTest {

    @Test
    public void testHelloServlet() {
        HelloServlet servlet = new HelloServlet();
        assertEquals("Hello, World!", servlet.getMessage());
    }
}
