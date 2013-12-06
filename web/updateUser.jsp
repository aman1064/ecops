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

      if((user_id.length()!=0) && (password.length()!=0))
       {
         query="select * from login where user_id='"+user_id+"' and password='"+password+"'";
         result=state.executeQuery(query);
         if(result.next())
           {
%>
   <div align="center">
  <p><font face="Verdana, Arial, Helvetica, sans-serif" size="6">Update User </font></p>
  <form name="form1" method="post" action="/ecops/finalUpdateUser.jsp">
    <br>
    <table width="49%">
      <tr>
        <td width="52%">Update Password</td>
        <td width="48%">
          <input type="radio" name="opt" value="yes" checked>
          yes
          <input type="radio" name="opt" value="no" >
          no </td>
      </tr>
      <tr>
        <td width="52%">Enter new Password(if yes)</td>
        <td width="48%">
          <input type="password" name="password" value=>
        </td>
      </tr>
      <tr>
        <td width="52%">Status</td>
        <td width="48%">
          <select name="status">
            <option value="sp">sp</option>
            <option value="dsp">dsp</option>
            <option value="jailor">jailor</option>
          </select>
        </td>
      </tr>
      <tr>
        <td width="52%">Dba</td>
        <td width="48%">
          <select name="dba">
            <option value="true">yes</option>
            <option value="false">no</option>
          </select>
        </td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p>
      <input type="hidden" name="user_id" value="<%=user_id%>">
      <input type="hidden" name="oldpassword" value="<%=password%>">
      <input type="submit" name="Submit" value="Update User">
    </p>
  </form>
  <p>&nbsp; </p>
</div>
<%
           }
         else
          {
%>
  <p align="center"><font size="6" face="Verdana, Arial, Helvetica, sans-serif">User
  Information</font><br><font size="4" face="Verdana, Arial, Helvetica, sans-serif" color="RED">Wrong Information.User Does not Exist.</font></p>
<form name="form1" method="post" action="/ecops/updateUser.jsp">
  <table width="58%">
    <tr>
      <td width="40%">User Id &nbsp;&nbsp;</td>
      <td width="60%">
        <input type="text" name="user_id"><font color="red"> *</font>
      </td>
    </tr>
    <tr>
      <td width="40%">Password </td>
      <td width="60%">
        <input type="password" name="password"><font color="red"> *</font>
      </td>
    </tr>
    <tr>
      <td width="40%">&nbsp; </td>
      <td width="60%">&nbsp; </td>
    </tr>
  </table>
<br>  <input type="submit" value="Update User Information">
  </form>
<b><i>Fields Marked by <font color="red"> *</font> are Mandatory</b></i>
<%
          }
       }
     else
      {
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="0;URL=/ecops/pageUpdateUser.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">

<p>&nbsp; </p>
</body>
</html>
<%
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
</body>
</html>