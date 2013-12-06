<%@ page language="java" %>
<%@ page import="java.sql.*"%>


<html>
	<head>
		<title>Case Data Entry</title>
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

		   	String STATION_ID=request.getParameter("STATION_ID");
		    String FIR_NUMBER=request.getParameter("FIR_NUMBER");
			String FIR_DESCRIPTION=request.getParameter("FIR_DESCRIPTION");
			String FIR_DATE=request.getParameter("FIR_DATE");
			String COMPLAINT_NAME=request.getParameter("COMPLAINT_NAME");
			String ADDRESS=request.getParameter("ADDRESS");
			String ACT=request.getParameter("ACT");
			String ACCUSED_DETAILS=request.getParameter("ACCUSED_DETAILS");
			String DISPOSAL=request.getParameter("DISPOSAL");
			String JUDGEMENT=request.getParameter("JUDGEMENT");
			String PUNISHMENT_DETAILS=request.getParameter("PUNISHMENT_DETAILS");
			String PROPERTY_LOST=request.getParameter("PROPERTY_LOST");
			String PROPERTY_RECIEVED=request.getParameter("PROPERTY_RECIEVED");
			if((STATION_ID.length()==0) || (FIR_NUMBER.length()==0) || (FIR_DATE.length()==0) )
			 {
	%>
             <html>
             <title>Failed</title>
             <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
             <meta http-equiv="refresh" content="0;URL=/ecops/pageCases.jsp">
             </head>
             <body>
    <%
             }
             else
              {
                String str="INSERT INTO CASES VALUES('"+STATION_ID+"','"+FIR_NUMBER+"','"+FIR_DESCRIPTION+"','"+FIR_DATE+"','"+COMPLAINT_NAME+"','"+ADDRESS+"','"+ACT+"','"+ACCUSED_DETAILS+"','"+DISPOSAL+"','"+JUDGEMENT+"','"+PUNISHMENT_DETAILS+"','"+PROPERTY_LOST+"','"+PROPERTY_RECIEVED+"')";

			    int i=state.executeUpdate(str);
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="refresh" content="4;URL=/ecops/pageCases.jsp">
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