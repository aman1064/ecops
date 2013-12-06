<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Cell Information</TITLE>
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

         if(opt.equals("cell_id"))
          {
              qry="select * from cells where cell_id='"+val+"'";
          }

         result=state.executeQuery(qry);
%>


     <table border=2>
      <tr>
       <td>Cell ID</td>
       <td>Description</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("cell_id")+"</td>");
             out.println("<td>"+result.getString("cell_desc")+"</td>");
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