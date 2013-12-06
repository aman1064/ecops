<%@ page language="java"%>

<HTML>
<HEAD><TITLE>INSERT INTO INCIDENT_PERSONS</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  INCIDENT PERSONS DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN"
ACTION="/ecops/respInciPersons.jsp" METHOD="post">
  <table width="75%" ALIGN="center">
    <tr> 
      <td><font color="#000000">Incident Number </font></td>
      <td><font color="#000000"> 
        <input type="text" name="INCIDENT_NUMBER" size="10">
        <font color="#FF0000">*</font> </font></td>
    </tr>
    <tr> 
      <td><font color="#000000">Name</font> </td>
      <td> 
        <input type="text" name="NAME" value="" size="10">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td><font color="#000000">Date Of Birth</font></td>
      <td> 
        <input type="text" name="DOB" value="" size="20">
      </td>
    </tr>
    <tr> 
      <td><font color="#000000">Type</font></td>
      <td> 
        <input type="text" name="TYPE" value="" size="20">
        <font color="#FF0000">*</font> </td>
    </tr>
    <tr> 
      <td>Address </td>
      <td> 
        <input type="text" name="ADDRESS" value="" size="30">
      </td>
    </tr>
    <tr> 
      <td>Phone Number<b></b></td>
      <td><b> 
        <input type="text" name="PHONE_NUMBER" value="" size="15">
        </b></td>
    </tr>
    <tr> 
      <td>Gender<b> </b></td>
      <td><b> 
        <input type="text" name="GENDER" value="" size="20">
        </b> <font color="#FF0000">*</font> </td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td> 
        <input type="submit" name="Submit" value="Submit Information">
      </td>
    </tr>
  </table>
  <p><i><font size="2"><b>FIELDS MARKED BY <font color="#FF0000">*</font> ARE 
    MANDATORY</b></font></i></p>
</FORM>
  </BODY>
</HTML>