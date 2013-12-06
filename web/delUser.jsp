<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE></TITLE>
</HEAD>
<body bgcolor="#CCCCFF" text="#000000">
<%
    Connection con=null;
    Statement state=null;
    ResultSet result=null;
    String query=null;
    String user_id=null;
    String password=null;
    try
    {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con=DriverManager.getConnection("Jdbc:Odbc:ecops");
      state=con.createStatement();
      user_id=request.getParameter("user_id");
      password=request.getParameter("password");
      if((user_id.length()==0) || (password.length()==0))
       {
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="0;URL=/ecops/pageDelUser.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
</body>
</html>
<%
       }
      else
       {
            query="select * from login where user_id='"+user_id+"' and password='"+password+"'";
            result=state.executeQuery(query);

           if(result.next())

           {
              query="delete from login where user_id='"+user_id+"' and password='"+password+"'";
              int i=state.executeUpdate(query);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageDelUser.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p><font size="4">User has been removed successfully.</font></p>
<p>&nbsp; </p>
</body>
</html>

<%
          }
         else
          {
%>
   <p align="center"><font size="6" face="Verdana, Arial, Helvetica, sans-serif">User
  Information</font><br><font size="4" face="Verdana, Arial, Helvetica, sans-serif" color="RED">Wrong Information.User Does not Exist.</font></p>
<form name="form1" method="post" action="/ecops/delUser.jsp">
  <table width="58%">
    <tr>
      <td width="40%">User Id &nbsp;&nbsp;</td>
      <td width="60%">
        <input type="text" name="user_id"><font color="RED"> *</font>
      </td>
    </tr>
    <tr>
      <td width="40%">Password </td>
      <td width="60%">
        <input type="password" name="password"><font color="RED"> *</font>
      </td>
    </tr>
    <tr>
      <td width="40%">&nbsp; </td>
      <td width="60%">&nbsp; </td>
    </tr>
    <tr>
      <td width="40%">
        <input type="submit" name="Submit" value="Delete User">
      </td>
      <td width="60%">
        <input type="reset" name="Submit2" value="Clear Information">
      </td>
    </tr>
  </table>
  </form>
<b><i>Fields Marked by <font color="red"> *</font> are Mandatory</b></i>
<%
          }
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
</BODY>
</HTML>