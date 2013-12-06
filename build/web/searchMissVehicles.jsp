<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Missing Vehicles Information </TITLE>
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

         if(opt.equals("vehi_reg"))
          {
              qry="select * from missing_vehicles where vehi_reg='"+val+"'";
          }
         else if(opt.equals("model"))
          {
              qry="select * from missing_vehicles where model='"+val+"'";
          }
         else if(opt.equals("station_id"))
          {
              qry="select * from missing_vehicles where station_id='"+val+"'";
          }
         else if(opt.equals("make"))
          {
              qry="select * from missing_vehicles where make='"+val+"'";
          }
         else if(opt.equals("engine_no"))
          {
              qry="select * from missing_vehicles where engine_no='"+val+"'";
          }
         else if(opt.equals("chasis_no"))
          {
              qry="select * from missing_vehicles where chasis_no='"+val+"'";
          }


         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Make</td>
       <td>Model</td>
       <td>Registration No.</td>
       <td>Engine No</td>
       <td>Chasis No</td>
       <td>Station ID</td>
       <td>FIR No.</td>
       <td>Record Types</td>
       <td>Fully Recovered</td>
       <td>Post Recovery Details</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("make")+"</td>");
             out.println("<td>"+result.getString("model")+"</td>");
             out.println("<td>"+result.getString("vehi_reg")+"</td>");
             out.println("<td>"+result.getString("engine_no")+"</td>");
             out.println("<td>"+result.getString("chasis_no")+"</td>");
             out.println("<td>"+result.getString("station_id")+"</td>");
             out.println("<td>"+result.getString("fir_no")+"</td>");
             out.println("<td>"+result.getString("record_types")+"</td>");
             out.println("<td>"+result.getString("fully_rec")+"</td>");
             out.println("<td>"+result.getString("post_rec_details")+"</td>");
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