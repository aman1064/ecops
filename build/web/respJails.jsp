<%@ page language="java" %>
<%@ page import="java.sql.*"%>


<html>
	<head>
		<title></title>
	</head>


	<body>
	<%
		Connection con=null;
		Statement state=null;
		ResultSet result=null;

		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("Jdbc:Odbc:ecops");
     		state=con.createStatement();

		    String JAIL_ID=request.getParameter("JAIL_ID");
		    String JAIL_DESCRIPTION=request.getParameter("JAIL_DESCRIPTION");
			String NUMBER_OF_ROOMS=request.getParameter("NUMBER_OF_ROOMS");
			String STATE=request.getParameter("STATE");
			String LOCATION=request.getParameter("LOCATION");
			String CAPACITY=request.getParameter("CAPACITY");
			if((JAIL_ID.length()==0) || (STATE.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageJails.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
			    String str="INSERT INTO jails VALUES('"+JAIL_ID+"','"+JAIL_DESCRIPTION+"','"+NUMBER_OF_ROOMS+"','"+STATE+"','"+LOCATION+"','"+CAPACITY+"')";
			    int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageJails.jsp">
</head>

<body bgcolor="#CCCCFF" text="#000000">
<p><font size="4">The Information has been added successfully.</font></p>
<p>&nbsp; </p>
</body>
</html>
<%
			 }

		}
		catch(Exception e)
		{
			out.println(e);
		}
		finally
		 {
		     con.close();
         }
%>
	</body>
</html>