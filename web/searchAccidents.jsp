<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Accident Information</TITLE>
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

         if(opt.equals("date"))
          {
              qry="select * from accidents where date='"+val+"'";
          }
         else if(opt.equals("rep_off_id"))
          {
              qry="select * from accidents where rep_off_id='"+val+"'";
          }
         else if(opt.equals("station_id"))
          {
              qry="select * from accidents where station_id='"+val+"'";
          }
         else if(opt.equals("acc_no"))
          {
              qry="select * from accidents where acc_no='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Accident No.</td>
       <td>Incident No.</td>
       <td>Date</td>
       <td>Time</td>
       <td>Reporting officer ID</td>
       <td>Agency</td>
       <td>Location</td>
       <td>Address</td>
       <td>Zip Code</td>
       <td>Station ID</td>
       <td>Crime ID</td>
       <td>No. of Injured Persons</td>
       <td>No. of Fatal Persons</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("acc_no")+"</td>");
             out.println("<td>"+result.getString("inc_no")+"</td>");
             out.println("<td>"+result.getString("date")+"</td>");
             out.println("<td>"+result.getString("time")+"</td>");
             out.println("<td>"+result.getString("rep_off_id")+"</td>");
             out.println("<td>"+result.getString("agency")+"</td>");
             out.println("<td>"+result.getString("loc")+"</td>");
             out.println("<td>"+result.getString("address")+"</td>");
             out.println("<td>"+result.getString("zip")+"</td>");
             out.println("<td>"+result.getString("station_id")+"</td>");
             out.println("<td>"+result.getString("crime_id")+"</td>");
             out.println("<td>"+result.getString("no_injured")+"</td>");
             out.println("<td>"+result.getString("no_fatal")+"</td>");
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