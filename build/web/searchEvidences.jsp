<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Evidence Information</TITLE>
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

         if(opt.equals("evidence_id"))
          {
              qry="select * from evidences where evidence_id='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Evidence ID.</td>
       <td>Incident No.</td>
       <td>Store ID</td>
       <td>Description</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("evidence_id")+"</td>");
             out.println("<td>"+result.getString("inc_no")+"</td>");
             out.println("<td>"+result.getString("store_id")+"</td>");
             out.println("<td>"+result.getString("desc")+"</td>");
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