<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Crime Classes Information</TITLE>
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

         if(opt.equals("crime_id"))
          {
              qry="select * from crime_classes where crime_id='"+val+"'";
          }

         result=state.executeQuery(qry);
%>


     <table border=2>
      <tr>
       <td>Crime ID</td>
       <td>Crime Description</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("crime_id")+"</td>");
             out.println("<td>"+result.getString("crime_desc")+"</td>");
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