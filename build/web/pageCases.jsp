<%@page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO CASES</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333">
  CASES DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN"
ACTION="/ecops/respCases.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr>
      <td><font color="#000000">Station Id</font></td>
      <td><font color="#000000">
        <input type="text" name="STATION_ID" size="10">
        </font><font color="#FF0000">*</font><font color="#000000"> </font> </td>
    </tr>
    <tr>
      <td>FIR Number</td>
      <td>
        <input type="text" name="FIR_NUMBER" value="" size="5">
        <font color="#FF0000">*</font> </td>
    </tr>
    <tr>
      <td>FIR Description</td>
      <td>
        <input type="text" name="FIR_DESCRIPTION" value="" size="12">
      </td>
    </tr>
    <tr>
      <td>FIR Date</td>
      <td>
        <input type="text" name="FIR_DATE" value="" size="10">
        <font color="#FF0000">*</font> </td>
    </tr>
    <tr>
      <td height="21">
        <p>Complaint Name</p>
      </td>
      <td height="21">
        <input type="text" name="COMPLAINT_NAME" value="" size="8">
      </td>
    </tr>
    <tr>
      <td>Address</td>
      <td><b>
        <input type="text" name="ADDRESS" value="" size="20">
        </b></td>
    </tr>
    <tr>
      <td>Act Sections</td>
      <td><b>
        <input type="text" name="ACT" value="" size="20">
        </b></td>
    </tr>
    <tr>
      <td>Accused Details</td>
      <td><b>
        <input type="text" name="ACCUSED_DETAILS" value="" size="30">
        </b></td>
    </tr>
    <tr>
      <td>Disposal</td>
      <td><b>
        <input type="text" name="DISPOSAL" value="" size="10">
        </b></td>
    </tr>
    <tr>
      <td>Judgement</td>
      <td><b>
        <input type="text" name="JUDGEMENT" value="" size="20">
        </b></td>
    </tr>
    <tr>
      <td>Punishment Details<b> </b></td>
      <td><b>
        <input type="text" name="PUNISHMENT_DETAILS" value="" size="15">
        </b></td>
    </tr>
    <tr>
      <td>Property Lost<b> </b></td>
      <td><b>
        <input type="text" name="PROPERTY_LOST" value="" size="19">
        </b></td>
    </tr>
    <tr>
      <td>Property Received<b></b></td>
      <td><b>
        <input type="text" name="PROPERTY_RECIEVED" value="" size="18">
        </b></td>
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