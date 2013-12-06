<%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
       Connection con=null;
       Statement state=null;
       String qry=null;
       String user_id=null;
       String password=null;
       ResultSet result=null;
       String dba;
       try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con=DriverManager.getConnection("Jdbc:Odbc:ecops");
            state=con.createStatement();

            user_id=request.getParameter("user_id");
            password=request.getParameter("password");

            dba=request.getParameter("dba");

            if(dba==null)
            {
              qry="select * from login where user_id='"+user_id+"' and password='"+password+"'";
              result=state.executeQuery(qry);

%>

<%
               if(result.next())
                {
                    String status=result.getString("status");
                    java.util.Date dt=new java.util.Date();
                    String time=dt.toString();
                    String d1=time.substring(0,19);
                    String d2=time.substring((time.length())-5);
                    time=d1+d2;
                    qry="insert into login_information values('"+user_id+"','"+status+"','"+time+"','no')";
                    int i=state.executeUpdate(qry);
%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<frameset rows="80,*" frameborder="NO" border="0" framespacing="0">
  <frame name="topFrame" scrolling="NO" noresize src="frameHead.jsp" >
  <frameset cols="225,*" frameborder="NO" border="0" framespacing="0" rows="*">
    <frame name="leftFrame" scrolling="NO" noresize src="frameOpt.jsp?dba=false">
    <frame name="mainFrame" src="frameSelect.jsp">
  </frameset>
</frameset>

<noframes><body bgcolor="#FFFFFF" text="#000000">

</body></noframes>
</html>
<%

               }
              else
               {

%>

<html>
<head>
<title>Login Failed</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="0;URL=/ecops">
</head>
<body>


<%             }
            }

        else
         {
              qry="select * from login where user_id='"+user_id+"' and password='"+password+"' and dba='true'";
              result=state.executeQuery(qry);
              if(result.next())
                {
                    String status=result.getString("status");
                    java.util.Date dt=new java.util.Date();
                    String time=dt.toString();
                    String d1=time.substring(0,19);
                    String d2=time.substring((time.length())-5);
                    time=d1+d2;
                    qry="insert into login_information values('"+user_id+"','"+status+"','" + time +"','yes')";
                    int i=state.executeUpdate(qry);

%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="0;URL=/ecops/pageOpt.jsp">
</head>

<body bgcolor="#FFFFFF" text="#000000">

</body>
</html>

<%

                }
              else
                {
%>

<html>
<head>
<title>Login Failed</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="0;URL=/ecops">
</head>
<body>

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