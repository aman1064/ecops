<%@ page language="java" %>
<%@ page import="java.sql.*"%>

<html>
	<head>
		<title>Cell Data Entry</title>
	</head>


	<body>
	<%
		Connection con=null;
		Statement state=null;

		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("Jdbc:Odbc:ecops");
			state=con.createStatement();

		    String CELL_ID=request.getParameter("CELL_ID");
		    String CELL_DESCRIPTION=request.getParameter("CELL_DESCRIPTION");

			if(CELL_ID.length()==0)
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageCells.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
                String str="INSERT INTO CELLS VALUES('"+CELL_ID+"','"+CELL_DESCRIPTION+"')";

		        int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageCells.jsp">
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