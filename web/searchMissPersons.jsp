<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Missing Persons Information </TITLE>
</HEAD>
<body bgcolor="#CCCCFF" text="BLACK">
<%
    Connection con=null;
    Statement state=null;
    ResultSet result=null;

    try
     {
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("Jdbc:Odbc:ecops");
         state=con.createStatement();

         String opt=null;
         opt=request.getParameter("opt");

         String val=null;
         val=request.getParameter("Value");

         String qry=null;

         if(opt.equals("name"))
          {
              qry="select * from missing_persons where name='"+val+"'";
          }
         else if(opt.equals("gender"))
          {
              qry="select * from missing_persons where gender='"+val+"'";
          }
         else if(opt.equals("station_id"))
          {
              qry="select * from missing_persons where station_id='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Name</td>
       <td>Gender</td>
       <td>ID</td>
       <td>Station ID</td>
       <td>Complaint Address</td>
       <td>Phone Number</td>
       <td>Status</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("name")+"</td>");
             out.println("<td>"+result.getString("gender")+"</td>");
             out.println("<td>"+result.getString("id")+"</td>");
             out.println("<td>"+result.getString("station_id")+"</td>");
             out.println("<td>"+result.getString("comp_add")+"</td>");
             out.println("<td>"+result.getString("ph_no")+"</td>");
             out.println("<td>"+result.getString("status")+"</td>");
             out.println("</tr>");
          }

     }
     catch(Exception e)
      {
          out.println(e.getMessage());
      }
     finally
      {
           con.close();
      }

%>
</table>
</body>
</html>