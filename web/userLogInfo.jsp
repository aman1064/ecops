<%@page language="java"%>
<%@page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE></TITLE>
</HEAD>
<body bgcolor="#CCCCFF" text="#000000">
<p align="center"><B><font face="vardana" size="5">Login Information</font></b></p>
<%
   Connection con=null;
   Statement state=null;
   String query=null;
   ResultSet result=null;

   try
    {
        	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con=DriverManager.getConnection("Jdbc:Odbc:ecops");
			state=con.createStatement();

			query="select * from login_information";
			result=state.executeQuery(query);


%>

<table width="100%" border="1">
  <tr>
    <td width="15%">User ID</td>
    <td>Status</td>
    <td width="60%">Time</td>
    <td width="20%">As a DBA</td>
  </tr>
<%
      while(result.next())
       {
           out.println("<tr>");
           out.println("<td>"+result.getString("user_id")+"</td>");
           out.println("<td>"+result.getString("status")+"</td>");
           out.println("<td>"+result.getString("time")+"</td>");
           out.println("<td>"+result.getString("as_Dba")+"</td>");
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
</BODY>
</HTML>