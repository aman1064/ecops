<%@ page language="java"%>

<HTML>
<HEAD><TITLE>INSERT INTO EVIDENCES</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  EVIDENCES DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN"
ACTION="/ecops/respEvidences.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr> 
      <td>Evidence Id</td>
      <td><font color="#000000"> 
        <input type="text" name="EVIDENCE_ID" size="10">
        <font color="#FF0000">*</font> </font></td>
    </tr>
    <tr> 
      <td>Incident Number</td>
      <td> 
        <input type="text" name="INCIDENT_NUMBER" value="" size="11">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td>Store Id</td>
      <td> 
        <input type="text" name="STORE_ID" value="" size="7">
        <font color="#ff0000">*</font></td>
    </tr>
    <tr> 
      <td>Description</td>
      <td> 
        <input type="text" name="DESCRIPTION" value="" size="37">
      </td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td> 
        <input type="submit" name="Submit" value="Submit Information">
      </td>
    </tr>
  </table>
  <p><b>&nbsp;<i><font size="2">FIELDS MARKED BY <font color="#FF0000">*</font> 
    ARE MANDATORY</font></i></b></p>
</FORM>
  </BODY>
</HTML>