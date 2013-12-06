<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO INCIDENT_CRIME_SOLVABILITY</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  INCIDENT CRIME SOLVABILITY DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN" ACTION="/ecops/respInciCrimeSolv.jsp" METHOD="post">
  <div align="center">
    <table width="75%" Align="center">
      <tr> 
        <td>Question Id</td>
        <td> 
          <input name="QUESTION_ID" size="10">
          <font color="#CC0000">*</font> </td>
      </tr>
      <tr> 
        <td>Question </td>
        <td> 
          <input size=30 name=QUESTION>
          <font color="#CC0000">*</font></td>
      </tr>
      <tr> 
        <td>&nbsp;</td>
        <td> 
          <input type="submit" name="btnSubmit"
	 value="Submit Information">
        </td>
      </tr>
    </table>
  </div>
  <p align="left"><b><FONT SIZE=2><i>FIELDS MARKED BY <font size=2><font color="#CC0000">*</font></font>ARE 
    MANDATORY </i></font></b> </p>
</FORM>
</BODY>
</HTML>