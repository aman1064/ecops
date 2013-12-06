<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Incident Persons Information</TITLE>
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
              qry="select * from inci_persons where name='"+val+"'";
          }
         else if(opt.equals("gender"))
          {
              qry="select * from inci_persons where gender='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Incident No.</td>
       <td>Name</td>
       <td>Date of Birth</td>
       <td>Type</td>
       <td>Address</td>
       <td>Phone No.</td>
       <td>Gender</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("inc_no")+"</td>");
             out.println("<td>"+result.getString("name")+"</td>");
             out.println("<td>"+result.getString("dob")+"</td>");
             out.println("<td>"+result.getString("type")+"</td>");
             out.println("<td>"+result.getString("add")+"</td>");
             out.println("<td>"+result.getString("phone_no")+"</td>");
             out.println("<td>"+result.getString("gender")+"</td>");
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
</body>
</html>