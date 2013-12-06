<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Jail Information</TITLE>
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

         if(opt.equals("jail_id"))
          {
              qry="select * from jails where jail_id='"+val+"'";
          }
         else if(opt.equals("jail_desc"))
          {
              qry="select * from jails where jail_desc='"+val+"'";
          }
         else if(opt.equals("state"))
          {
              qry="select * from jails where state='"+val+"'";
          }
         else if(opt.equals("no_of_rooms"))
          {
              qry="select * from jails where no_of_rooms='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Jail ID</td>
       <td>Jail Description</td>
       <td>No. of Cells</td>
       <td>State</td>
       <td>Location</td>
       <td>Capacity</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("jail_id")+"</td>");
             out.println("<td>"+result.getString("jail_desc")+"</td>");
             out.println("<td>"+result.getString("no_of_rooms")+"</td>");
             out.println("<td>"+result.getString("state")+"</td>");
             out.println("<td>"+result.getString("location")+"</td>");
             out.println("<td>"+result.getString("capacity")+"</td>");
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