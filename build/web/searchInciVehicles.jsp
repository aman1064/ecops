<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Incident Vehicles Information</TITLE>
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

         if(opt.equals("reg_owner"))
          {
              qry="select * from inci_vehicles where reg_owner='"+val+"'";
          }
         else if(opt.equals("state"))
          {
              qry="select * from inci_vehicles where state='"+val+"'";
          }
         else if(opt.equals("year"))
          {
              qry="select * from inci_vehicles where year='"+val+"'";
          }
         else if(opt.equals("make"))
          {
              qry="select * from inci_vehicles where make='"+val+"'";
          }
         else if(opt.equals("model"))
          {
              qry="select * from inci_vehicles where model='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Incident No.</td>
       <td>Licence</td>
       <td>State</td>
       <td>Year</td>
       <td>Make</td>
       <td>Model</td>
       <td>Style</td>
       <td>Colour</td>
       <td>Reg. Owner</td>
       <td>Is Stolen</td>
       <td>Is Recovered</td>
       <td>Is Left</td>
       <td>Is Released</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("inci_no")+"</td>");
             out.println("<td>"+result.getString("license")+"</td>");
             out.println("<td>"+result.getString("state")+"</td>");
             out.println("<td>"+result.getString("year")+"</td>");
             out.println("<td>"+result.getString("make")+"</td>");
             out.println("<td>"+result.getString("model")+"</td>");
             out.println("<td>"+result.getString("style")+"</td>");
             out.println("<td>"+result.getString("colour")+"</td>");
             out.println("<td>"+result.getString("reg_owner")+"</td>");
             out.println("<td>"+result.getString("is_stolen")+"</td>");
             out.println("<td>"+result.getString("is_recovered")+"</td>");
             out.println("<td>"+result.getString("is_left")+"</td>");
             out.println("<td>"+result.getString("is_released")+"</td>");
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