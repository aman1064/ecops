<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
    <TITLE>Case Information</TITLE>
</HEAD>
<body bgcolor="#CCCCFF" text="BLACK">
<%
      Connection con=null;
      Statement state=null;
      ResultSet result=null;
      try
       {
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         con=DriverManager.getConnection("Jdbc:Odbc:ecops");
         state=con.createStatement();

         String opt=null;
         opt=request.getParameter("opt");

         String val=null;
         val=request.getParameter("Value");

         String qry=null;

         if(opt.equals("station_id"))
          {
              qry="select * from cases where station_id='"+val+"'";
          }
         else if(opt.equals("fir_no"))
          {
              qry="select * from cases where fir_no='"+val+"'";
          }
         else if(opt.equals("act_sec"))
          {
              qry="select * from cases where act_sec='"+val+"'";
          }

         result=state.executeQuery(qry);
%>


     <table border=2>
      <tr>
       <td>Station ID</td>
       <td>FIR No</td>
       <td>FIR Description</td>
       <td>FIR Date</td>
       <td>Complaint Name</td>
       <td>Address</td>
       <td>Act Sections</td>
       <td>Accident Details</td>
       <td>Disposal</td>
       <td>Judgement</td>
       <td>Punishment Details</td>
       <td>Property Lost</td>
       <td>Property Received</td>
      </tr>
   <%


         while(result.next())
          {
             out.println("<tr>");
             out.println("<td>"+result.getString("station_id")+"</td>");
             out.println("<td>"+result.getString("fir_no")+"</td>");
             out.println("<td>"+result.getString("fir_desc")+"</td>");
             out.println("<td>"+result.getString("fir_date")+"</td>");
             out.println("<td>"+result.getString("complaint_name")+"</td>");
             out.println("<td>"+result.getString("address")+"</td>");
             out.println("<td>"+result.getString("act_sec")+"</td>");
             out.println("<td>"+result.getString("acc_details")+"</td>");
             out.println("<td>"+result.getString("disposal")+"</td>");
             out.println("<td>"+result.getString("judgement")+"</td>");
             out.println("<td>"+result.getString("punish_details")+"</td>");
             out.println("<td>"+result.getString("prop_lost")+"</td>");
             out.println("<td>"+result.getString("prop_rec")+"</td>");
             out.println("</tr>");
          }


     }
     catch(Exception e)
      {
          out.println(e.getMessage());
      }
     finally
      {
           con.close();
      }

%>
</table>
</BODY>
</HTML>