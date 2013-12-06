<%@ page language="java" %>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD><TITLE>Accident Data Entry</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<CENTER>
  <DIV align=left><b>
    <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="4">
    ACCIDENT DATA ENTRY</font></b>
    <FORM NAME="LOGIN" ACTION="/ecops/respAccidents.jsp" METHOD="post">
      <table width="75%" align="center">
        <tr>
          <td width="58%">Accident Number</td>
          <td width="42%">
            <input type="text" name="ACCIDENT_NUMBER" size="10">
            <font color="#FF0000">*</font><font color="#000000"> </font> </td>
        </tr>
        <tr>
          <td width="58%">Incident Number</td>
          <td width="42%">
            <p>
              <input type="text" name="INCIDENT_NUMBER" value="" size="5">
              <font color="#FF0000">*</font></p>
          </td>
        </tr>
        <tr>
          <td width="58%">Date</td>
          <td width="42%">
            <input type="text" name="DATE" value="" size="12">
            <font color="#FF0000">*</font> </td>
        </tr>
        <tr>
          <td width="58%">Time</td>
          <td width="42%">
            <input type="text" name="TIME" value="" size="10">
          </td>
        </tr>
        <tr>
          <td width="58%">Reporting officer Id</td>
          <td width="42%">
            <input type="text" name="REPORTING_OFFICER_ID" value="" size="8">
            <font color="#FF0000">*</font> </td>
        </tr>
        <tr>
          <td width="58%">Agency</td>
          <td width="42%">
            <input type="text" name="AGENCY" value="" size="8">
          </td>
        </tr>
        <tr>
          <td width="58%">Location</td>
          <td width="42%"><b>
            <input type="text" name="LOCATION" value="" size="20">
            </b></td>
        </tr>
        <tr>
          <td width="58%">Address<b> </b></td>
          <td width="42%"><b>
            <input type="text" name="ADDRESS" value="" size="30">
            </b></td>
        </tr>
        <tr>
          <td width="58%">Zip Code<b></b></td>
          <td width="42%"><b>
            <input type="text" name="ZIP_CODE" value="" size="10">
            </b></td>
        </tr>
        <tr>
          <td width="58%">Staion Id<b> </b></td>
          <td width="42%"><b>
            <input type="text" name="STATION_ID" value="" size="20">
            <font color="#FF0000">*</font><b> </b></b></td>
        </tr>
        <tr>
          <td width="58%">Crime Id<b> </b></td>
          <td width="42%"><b>
            <input type="text" name="CRIME_ID" value="" size="15">
            <font color="#FF0000">*</font></b></td>
        </tr>
        <tr>
          <td width="58%">Number Of Injured</td>
          <td width="42%"><b>
            <input type="text" name="NUMBER_OF_INJURED" value="" size="5">
            </b></td>
        </tr>
        <tr>
          <td width="58%">Number of Fatal</td>
          <td width="42%"><b>
            <input type="text" name="NUMBER_OF_FATAL" value="" size="5">
            </b></td>
        </tr>
        <tr>
          <td width="58%">&nbsp;</td>
          <td width="42%">
            <input type="submit" name="Submit" value="Submit Information">
          </td>
        </tr>
      </table>
      <p><i><font size="2">FIELDS MARKED BY <b><font color="#FF0000">*</font></b>
        ARE MANDATORY</font></i></p>
      <p>&nbsp;</p>
    </FORM>
  </DIV>
</center></BODY>
</HTML>