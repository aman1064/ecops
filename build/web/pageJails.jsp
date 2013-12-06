<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO JAILS</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  JAILS DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN"
ACTION="/ecops/respJails.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr>
      <td><font color="#000000">Jail Id<b> </b></font></td>
      <td><b><font color="#000000">
        <input type="text" name="JAIL_ID" size="10">
        <font color="#FF0000">*</font> </font></b></td>
    </tr>
    <tr>
      <td>Jail Description</td>
      <td><b><font color="#FF0000">
        <input type="text" name="JAIL_DESCRIPTION" size="20">
        </font></b></td>
    </tr>
    <tr>
      <td>Number of Cells<b> &nbsp; </b></td>
      <td><b>
        <input type="text" name="NUMBER_OF_ROOMS" value="" size="10">
        </b></td>
    </tr>
    <tr>
      <td>State<b> </b></td>
      <td><b>
        <input type="text" name="STATE" value="" size="20">
        <font color="#FF0000">*</font></b></td>
    </tr>
    <tr>
      <td>Location</td>
      <td><b>
        <input type="text" name="LOCATION" value="" size="20">
        </b></td>
    </tr>
    <tr>
      <td>Capacity<b> </b></td>
      <td><b>
        <input type="text" name="CAPACITY" value="" size="10">
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