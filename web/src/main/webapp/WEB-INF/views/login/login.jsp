<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("inputEmail");    
    String pwd = request.getParameter("inputPassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entrenamiento",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from USER where USERNAME='" + userid + "' and PASSWORD='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>