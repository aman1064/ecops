<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Incident Modus Operandi Information</TITLE>
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

         if(opt.equals("inc_no"))
          {
              qry="select * from inci_modus_oper where inc_no='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Incident No.</td>
       <td>Premises</td>
       <td>Condition</td>
       <td>Entry Method</td>
       <td>Point of Entry</td>
       <td>Vehicle Entry</td>
       <td>Weapon Used</td>
       <td>Tools Used</td>
       <td>Victims Injured</td>
       <td>Sucpected Actions</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("inc_no")+"</td>");
             out.println("<td>"+result.getString("premises")+"</td>");
             out.println("<td>"+result.getString("condition")+"</td>");
             out.println("<td>"+result.getString("entry_method")+"</td>");
             out.println("<td>"+result.getString("point_entry")+"</td>");
             out.println("<td>"+result.getString("weapon_used")+"</td>");
             out.println("<td>"+result.getString("tools_used")+"</td>");
             out.println("<td>"+result.getString("vict_inj")+"</td>");
             out.println("<td>"+result.getString("susp_act")+"</td>");
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