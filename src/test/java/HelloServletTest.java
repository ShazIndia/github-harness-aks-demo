public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.getWriter().print("Hello, World!");
    }

    // Additional method to retrieve message
    public String getMessage() {
        return "Hello, World!";
    }
}
