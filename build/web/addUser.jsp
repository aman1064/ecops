<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>

<HEAD>
    <TITLE>Add User Information</TITLE>
</HEAD>
<body bgcolor="#CCCCFF" text="#000000">

<%
    Connection con=null;
    Statement state=null;
    ResultSet result=null;
    String query=null;
    String user_id=null;
    String password=null;
    String dba=null;
    String status=null;
     try
      {
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("Jdbc:Odbc:ecops");
         state=con.createStatement();
         user_id=request.getParameter("user_id");
         password=request.getParameter("password");
         status=request.getParameter("status");
         dba=request.getParameter("dba");
         if((user_id.length()==0) || (password.length()==0))
          {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageAddUser.jsp">
                 </head>
                 <body>
<%
          }
         else
          {
            query="select * from login where user_id='"+user_id+"' and password='"+password+"'";
            result=state.executeQuery(query);
            if(result.next())
             {
%>

<p align="center"><font size="6" face="Verdana, Arial, Helvetica, sans-serif">User
  Information<br></font><font size="4" face="Verdana, Arial, Helvetica, sans-serif" color="RED">User Already Exixts.Enter another user Id.</font></p>
<form name="form1" method="post" action="/ecops/addUser.jsp">
  <table width="58%">
    <tr>
      <td width="40%">User Id &nbsp;&nbsp;</td>
      <td width="60%">
        <input type="text" name="user_id"> <font color="red">*</font>
      </td>
    </tr>
    <tr>
      <td width="40%">Password </td>
      <td width="60%">
        <input type="password" name="password"> <font color="red">*</font>
      </td>
    </tr>
    <tr>
      <td width="40%">Status </td>
      <td width="60%">
        <select name="status">
          <option value="sp">sp</option>
          <option value="jailor">jailor</option>
          <option value="dsp">dsp</option>
        </select>
      </td>
    </tr>
    <tr>
      <td width="40%">&nbsp;</td>
      <td width="60%">
        <input type="checkbox" name="dba" value="dba">
        Make DBA user </td>
    </tr>
    <tr>
      <td width="40%">&nbsp; </td>
      <td width="60%">&nbsp; </td>
    </tr>
    <tr>
      <td width="40%">
        <input type="submit" name="Submit" value="Craete User">
      </td>
      <td width="60%">
        <input type="reset" name="Submit2" value="Clear Information">
      </td>
    </tr>
  </table>
  </form>
<b><i> <font color="Black">Fields Marked by <font color="red">* </font>are Mandatory</font></b></i>
<%
          }
         else
          {
            if(dba==null)
             {
                query="insert into login values('"+user_id+"','"+password+"','"+status+"','false')";
             }
            else
             {
                query="insert into login values('"+user_id+"','"+password+"','"+status+"','true')";
             }

            int i=state.executeUpdate(query);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageAddUser.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p><font size="4">New User has been created successfully.</font></p>
<p>&nbsp; </p>
</body>
</html>
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