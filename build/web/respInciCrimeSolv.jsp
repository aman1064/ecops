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

		    String QUESTION_ID=request.getParameter("QUESTION_ID");
		    String QUESTION=request.getParameter("QUESTION");
			if((QUESTION_ID.length()==0) || (QUESTION.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageInciCrimeSolv.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {

                String str="INSERT INTO inci_crime_solv VALUES('"+QUESTION_ID+"','"+QUESTION+"')";

			     int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageInciCrimeSolv.jsp">
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