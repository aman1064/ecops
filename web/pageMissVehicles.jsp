<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO MISSING VEHICLES</TITLE></HEAD>
<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333"> 
  MISSING VEHICLES DATA ENTRY</font></b> </div>
<FORM NAME="MISSING_VEHICLES" ACTION="/ecops/respMissVehicles.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr> 
      <td><font color="#000000">Make</font></td>
      <td><font color="#000000"> 
        <input type="text" name="MAKE" size="20">
        </font></td>
    </tr>
    <tr> 
      <td>Model </td>
      <td> 
        <input type="text" name="MODEL" value="" size="20">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td>Vehicle Registration</td>
      <td> 
        <input type="text" name="VEHICLE_REGISTRATION" value="" size="15">
      </td>
    </tr>
    <tr> 
      <td>Engine Number </td>
      <td> 
        <input type="text" name="ENGINE_NUMBER" value="" size="10">
      </td>
    </tr>
    <tr> 
      <td>Chasis Number</td>
      <td> 
        <input type="text" name="CHASIS_NUMBER" value="" size="15">
        <font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td>Station Id<b> </b></td>
      <td><b> 
        <input type="text" name="STATION_ID" value="" size="10">
        </b></td>
    </tr>
    <tr> 
      <td height="20">Fir Number<b> </b></td>
      <td height="20"><b> 
        <input type="text" name="FIR_NUMBER" value="" size="20">
        </b></td>
    </tr>
    <tr> 
      <td>Record Types<b> </b></td>
      <td><font color="#000000"><b> 
        <input type="text" name="RECORD_TYPES" value="" size="20">
        </b> </font></td>
    </tr>
    <tr> 
      <td>Fully Recovered</td>
      <td> 
        <input type="radio" value="Y" checked name="FULLY_RECOVERED">
        Yes 
        <input type="radio" name="FULLY_RECOVERED" value="N">
        No</td>
    </tr>
    <tr> 
      <td>Post Recovery Details<b> </b></td>
      <td><b> 
        <input type="text" name="POST_RECOVERY_DETAILS" value="" size="30">
        <font color="#FF0000">*</font></b></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td> 
        <input type="submit" name="Submit" value="Submit Information">
      </td>
    </tr>
  </table>

  <p><b><i><font size="2">FIELDS MARKED BY <font color="#FF0000">*</font> ARE 
    MANDATORY</font></i></b></p>
</FORM>
  </BODY>
</HTML>