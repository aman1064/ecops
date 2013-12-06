<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO INCIDENT_MODUS_OPERANDI</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b> <font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  INCIDENT MODUS OPERANDI DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN" ACTION="/ecops/respInciModOper.jsp" METHOD="post">
  <table width="75%" ALIGN="CENTER">
    <tr> 
      <td>Incident Number</td>
      <td><font color="#000000"> 
        <input type="text" name="INCIDENT_NUMBER" size="5">
        </font> <font color="#FF0000">*</font><font color="#000000"> </font></td>
    </tr>
    <tr> 
      <td>Premises </td>
      <td> 
        <input type="text" name="PREMISES" value="" size="10">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td>Condition </td>
      <td> 
        <input type="text" name="CONDITION" value="" size="12">
      </td>
    </tr>
    <tr> 
      <td>Entry Method</td>
      <td> 
        <input type="text" name="ENTRY_METHOD" value="" size="12">
      </td>
    </tr>
    <tr> 
      <td>Point Of Entry</td>
      <td> 
        <input type="text" name="POINT_OF_ENTRY" value="" size="10">
      </td>
    </tr>
    <tr> 
      <td>Vehicle Entry<b> </b></td>
      <td><b> 
        <input type="text" name="VEHICLE_ENTRY" size="20">
        </b></td>
    </tr>
    <tr> 
      <td>Weapon Used<b></b></td>
      <td><b> 
        <input type="text" name="WEAPON_USED" value="" size="15">
        </b></td>
    </tr>
    <tr> 
      <td>Tools Used<b> </b></td>
      <td><b> 
        <input type="text" name="TOOLS_USED" size="20">
        </b></td>
    </tr>
    <tr> 
      <td>Victims Injured<b>&nbsp;</b></td>
      <td><b> 
        <input type="text" name="VICTIMS_INJURED" value="" size="8">
        </b></td>
    </tr>
    <tr> 
      <td>Suspected Actions<b> </b></td>
      <td><b> 
        <input type="text" name="SUSPECTED_ACTIONS" value="" size="15">
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