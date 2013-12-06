<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Incident Crime Solvability Information</TITLE>
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

         if(opt.equals("ques_id"))
          {
              qry="select * from inci_crime_solv where ques_id='"+val+"'";
          }

         result=state.executeQuery(qry);
   %>

     <table border=2>
      <tr>
       <td>Question ID.</td>
       <td>Question</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("ques_id")+"</td>");
             out.println("<td>"+result.getString("question")+"</td>");
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