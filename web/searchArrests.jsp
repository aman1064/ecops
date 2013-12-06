<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Arrest Information</TITLE>
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
              qry="select * from arrests where name='"+val+"'";
          }
         else if(opt.equals("date_arrest"))
          {
              qry="select * from arrests where date_arrest='"+val+"'";
          }
         else if(opt.equals("place_arrest"))
          {
              qry="select * from arrests where place_arrest='"+val+"'";
          }
         else if(opt.equals("crime_id"))
          {
              qry="select * from arrests where crime_id='"+val+"'";
          }
         else if(opt.equals("station_id"))
          {
              qry="select * from arrests where station_id='"+val+"'";
          }

         result=state.executeQuery(qry);
%>


     <table border=2>
      <tr>
       <td>Station ID</td>
       <td>Crime ID</td>
       <td>Name</td>
       <td>Father's Name</td>
       <td>Address</td>
       <td>Date of Arrest</td>
       <td>Place of Arrest</td>
       <td>Relative Name</td>
       <td>Relative Address</td>
       <td>Relation</td>
       <td>Finger Print Number</td>
       <td>Other Identifications</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("station_id")+"</td>");
             out.println("<td>"+result.getString("crime_id")+"</td>");
             out.println("<td>"+result.getString("name")+"</td>");
             out.println("<td>"+result.getString("f_name")+"</td>");
             out.println("<td>"+result.getString("address")+"</td>");
             out.println("<td>"+result.getString("date_arrest")+"</td>");
             out.println("<td>"+result.getString("place_arrest")+"</td>");
             out.println("<td>"+result.getString("rel_name")+"</td>");
             out.println("<td>"+result.getString("rel_add")+"</td>");
             out.println("<td>"+result.getString("relation")+"</td>");
             out.println("<td>"+result.getString("finger_print_num")+"</td>");
             out.println("<td>"+result.getString("other_id")+"</td>");
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
</BODY>
</HTML>