<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO MISSING PERSONS</TITLE></HEAD>
<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333">MISSING
  PERSONS DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN" ACTION="/ecops/respMissPersons.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr>
      <td><font color="#000000">Name</font><b><font color="#000000"> </font></b></td>
      <td><b><font color="#000000">
        <input type="text" name="NAME">
        <font color="#FF0000">*</font> </font></b></td>
    </tr>
    <tr>
      <td>Gender<b> </b></td>
      <td><b>
        <select name="GENDER" size="1">
          <option>M</option>
          <option>F</option>
        </select>
        <font color="#FF0000">*</font></b></td>
    </tr>
    <tr>
      <td>Identifications <b> </b></td>
      <td><b>
        <input type="text" name="IDENTIFICATIONS" value="" size="25">
        <font color="#FF0000">*</font> </b></td>
    </tr>
    <tr>
      <td>Station Id<b> </b></td>
      <td><b>
        <input type="text" name="STATION_ID" value="">
        <font color="#FF0000">*</font></b></td>
    </tr>
    <tr>
      <td>Complaint Address</td>
      <td><b>
        <input type="text" name="COMPLAINT_ADDRESS" value="" size="30">
        </b></td>
    </tr>
    <tr>
      <td>Phone Number<b> </b></td>
      <td><b>
        <input type="text" name="PHONE_NUMBER" value="" size="30">
        </b></td>
    </tr>
    <tr>
      <td>Status<b> </b></td>
      <td><b>
        <input type="radio" name="STATUS" value="MISSING" checked>
        </b>Missing<b>
        <input type="radio" name="radiobutton" value="radiobutton">
        </b> Found</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
        <input type="submit" name="Submit" value="Submit Information">
      </td>
    </tr>
  </table>
  <p><font size="2"><b><i>FIELDS MARKED BY <font color="#FF0000">*</font> ARE
    MANDATORY</i></b></font></p>
</FORM>
</BODY>
</HTML>