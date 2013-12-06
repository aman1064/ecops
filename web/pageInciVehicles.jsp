<%@ page language="java"%>

<HTML>
<HEAD><TITLE>INSERT INTO INCIDENT VEHICLES</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  INCIDENT VEHICLES DATA ENTRY</font></b> </div>
<FORM NAME="MISSING_VEHICLES"
ACTION="/ecops/respInciVehicles.jsp" METHOD="post">
  <table width="75%" ALIGN="center">
    <tr> 
      <td>Incident Number<font color="#000000"> &nbsp; </font></td>
      <td><font color="#000000"> 
        <input type="text" name="INCIDENT_NUMBER" size="20">
        </font></td>
    </tr>
    <tr> 
      <td>License </td>
      <td> 
        <input type="text" name="LICENSE" value="" size="20">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td>State </td>
      <td> 
        <input type="text" name="STATE" value="" size="15">
      </td>
    </tr>
    <tr> 
      <td>Year</td>
      <td> 
        <input type="text" name="YEAR" value="" size="10">
      </td>
    </tr>
    <tr> 
      <td>Make </td>
      <td> 
        <input type="text" name="MAKE" value="" size="15">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td>Model<b> </b></td>
      <td><b> 
        <input type="text" name="MODEL" value="" size="10">
        </b></td>
    </tr>
    <tr> 
      <td>Style<b> </b></td>
      <td><b> 
        <input type="text" name="STYLE" value="" size="20">
        </b></td>
    </tr>
    <tr> 
      <td>Color<b> </b></td>
      <td><b> 
        <input type="text" name="COLOUR" value="" size="20">
        </b></td>
    </tr>
    <tr> 
      <td>Registration Number<b> </b></td>
      <td><b> 
        <input type="text" name="REGISTRATION_OWNER" value="" size="20">
        </b></td>
    </tr>
    <tr> 
      <td>Is Stolen </td>
      <td>
        <input type="radio" value="Y" checked name="IS_STOLEN">
        Yes&nbsp; 
        <input type="radio" name="IS_STOLEN" value="N">
        No</td>
    </tr>
    <tr> 
      <td>Is Recovered </td>
      <td> 
        <input type="radio" value="Y" name="IS_RECOVERED">
        Yes&nbsp; 
        <input type="radio" name="IS_RECOVERED" value="N" checked>
        No</td>
    </tr>
    <tr> 
      <td>Is Left at Scene </td>
      <td> 
        <input type="radio" value="Y" name="IS_LEFT_AT_SCENE">
        Yes&nbsp; 
        <input type="radio" name="IS_LEFT_AT_SCENE" value="N" checked>
        No</td>
    </tr>
    <tr> 
      <td>Is Released at Scene </td>
      <td> 
        <input type="radio" value="Y" name="IS_RELEASED_AT_SCENE">
        Yes&nbsp; 
        <input type="radio" name="IS_RELEASED_AT_SCENE" value="N" checked>
        No </td>
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