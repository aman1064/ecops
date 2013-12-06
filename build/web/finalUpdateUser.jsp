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
    String status=null;
    String dba=null;
    String oldpassword=null;
    String opt=null;
     try
      {
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("Jdbc:Odbc:ecops");
         state=con.createStatement();

         user_id=request.getParameter("user_id");
         password=request.getParameter("password");
         status=request.getParameter("status");
         dba=request.getParameter("dba");
         oldpassword=request.getParameter("oldpassword");
         opt=request.getParameter("opt");

       if(opt.equals("yes") && password.length()!=0)
       {
            query="select * from login where user_id='"+user_id+"' and password='"+oldpassword+"'";
            result=state.executeQuery(query);

            if(result.next())
            {

               query="select * from login where user_id='"+user_id+"' and password='"+password+"'";
               result=state.executeQuery(query);
               if(!result.next())
                {
                   int i;
                   query="delete from login where user_id='"+user_id+"' and password='"+oldpassword+"'";
                   i=state.executeUpdate(query);
                   query="insert into login values('"+user_id+"','"+password+"','"+status+"','"+dba+"')";
                   i=state.executeUpdate(query);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageUpdateUser.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p><font size="4">User has been updated successfully.</font></p>
<p>&nbsp; </p>
</body>
</html>
<%
                }
               else
               {
%>
                <div align="center">
                <p><font face="Verdana, Arial, Helvetica, sans-serif" size="6">Update User </font><br>
                <font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="RED">Password already exixts.Enter another Password.</font>
                </p>
                <form name="form1" method="post" action="/ecops/finalUpdateUser.jsp">
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
        <input type="text" name="user_id">
      </td>
    </tr>
    <tr>
      <td width="40%">Password </td>
      <td width="60%">
        <input type="password" name="password">
      </td>
    </tr>
    <tr>
      <td width="40%">&nbsp; </td>
      <td width="60%">&nbsp; </td>
    </tr>
  </table>
<br>  <input type="submit" value="Update User Information">
  </form>
<%
         }
        }
       else if(opt.equals("yes") && password.length()==0)
        {
%>

  <div align="center">
  <p><font face="Verdana, Arial, Helvetica, sans-serif" size="6">Update User </font></p>
  <p> <font face="verdana" color="RED" size="4">Enter new Password or clilk don't change password button.</font></p>
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
      <input type="hidden" name="oldpassword" value="<%=oldpassword%>">
      <input type="submit" name="Submit" value="Update User">
    </p>
  </form>
  <p>&nbsp; </p>
</div>
<%
        }
       else if(opt.equals("no"))
         {
              query="update login set status='"+status+"' where user_id='"+user_id+"' and password='"+oldpassword+"'";
              int i=state.executeUpdate(query);
              query="update login set dba='"+dba+"' where user_id='"+user_id+"' and password='"+oldpassword+"'";
              int j=state.executeUpdate(query);
                if(i>0)
                 {
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageUpdateUser.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p><font size="4">User has been updated successfully.</font></p>
<p>&nbsp; </p>
</body>
</html>

<%             }
              else
               {
%>
  <p align="center"><font size="6" face="Verdana, Arial, Helvetica, sans-serif">User
  Information</font><br><font size="4" face="Verdana, Arial, Helvetica, sans-serif" color="RED">Wrong Information.User Does not Exist.</font></p>
<form name="form1" method="post" action="/ecops/updateUser.jsp">
  <table width="58%">
    <tr>
      <td width="40%">User Id &nbsp;&nbsp;</td><font color="RED"> *</font>
      <td width="60%">
        <input type="text" name="user_id">
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
  </table>
<br>  <input type="submit" value="Update User Information">
  </form>
<b><i>Fields marked by <font color="RED"> *</font>are mandatory</b></i>
<%
               }
         }
       }
       catch(Exception e)
        {
            out.println("Exception : "+e.getMessage());
        }
       finally
        {
             con.close();
        }
%>
</body>
</html>