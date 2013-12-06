<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Stations Information </TITLE>
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

         if(opt.equals("station_id"))
          {
              qry="select * from stations where station_id='"+val+"'";
          }


         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Station ID</td>
       <td>State</td>
       <td>District</td>
       <td>Location</td>
       <td>Phone No 1</td>
       <td>Phone No 2</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("station_id")+"</td>");
             out.println("<td>"+result.getString("state")+"</td>");
             out.println("<td>"+result.getString("district")+"</td>");
             out.println("<td>"+result.getString("location")+"</td>");
             out.println("<td>"+result.getString("ph_no1")+"</td>");
             out.println("<td>"+result.getString("ph_no2")+"</td>");
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