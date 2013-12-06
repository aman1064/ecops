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

           	String EVIDENCE_ID=request.getParameter("EVIDENCE_ID");
		   	String INCIDENT_NUMBER=request.getParameter("INCIDENT_NUMBER");
			String STORE_ID =request.getParameter("STORE_ID");
			String DESCRIPTION =request.getParameter("DESCRIPTION");
			if((EVIDENCE_ID.length()==0) || (INCIDENT_NUMBER.length()==0) || (STORE_ID.length()==0))
			 {
%>
                 <html>
                 <title>Failed</title>
                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                 <meta http-equiv="refresh" content="0;URL=/ecops/pageEvidences.jsp">
                 </head>
                 <body>
<%
			 }
			else
             {
               	String str="INSERT INTO EVIDENCES VALUES('"+EVIDENCE_ID+"','"+INCIDENT_NUMBER+"','"+STORE_ID+"','"+DESCRIPTION+"')";
 			    int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageEvidences.jsp">
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