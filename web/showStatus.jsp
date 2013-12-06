<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE></TITLE>
</HEAD>
<body bgcolor="#CCCCFF" text="#000000">
<%
    Connection con=null;
    Statement state=null;
    ResultSet result=null;
    String query=null;
    String opt=null;
    String valStatus=null;

    try
     {
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("Jdbc:Odbc:ecops");
         state=con.createStatement();

         opt=request.getParameter("opt");
         valStatus=request.getParameter("valStatus");

          if(opt.equals("dba"))
           {
              query="select * from login where dba='true'";
           }
          else if(opt.equals("status"))
           {
               query="select * from login where status='"+valStatus+"'";
           }
          else if(opt.equals("showAll"))
           {
                query="select * from login";
           }
         result=state.executeQuery(query);
%>
  <table width="75%" border="1">
  <tr>
    <td>User ID</td>
    <td>Password</td>
    <td>Status</td>
    <td>Dba</td>
  </tr>
<%
      while(result.next())
       {
           out.println("<tr>");
           out.println("<td>"+result.getString("user_id")+"</td>");
           out.println("<td>"+result.getString("password")+"</td>");
           out.println("<td>"+result.getString("status")+"</td>");
           out.println("<td>"+result.getString("dba")+"</td>");
           out.println("</tr>");
       }

     }

     catch(Exception e)
      {
          out.println("Error : "+e.getMessage());
      }
     finally
      {
          con.close();
      }
%>
</table>
</BODY>
</HTML>