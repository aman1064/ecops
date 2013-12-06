<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO STATIONS</TITLE></HEAD>
<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333">STATIONS 
  DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN" ACTION="/ecops/respStations.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr> 
      <td>Station Id<b> </b></td>
      <td><b> 
        <input name="STATION_ID" size="10">
        <font color="#CC0000">*</font> </b></td>
    </tr>
    <tr> 
      <td><b> </b>State<b><font size=2> </font></b></td>
      <td><b><font size=2> 
        <input size=20 name=STATE>
        </font></b></td>
    </tr>
    <tr> 
      <td> District<b><font size=2> </font></b> </td>
      <td><b><font size=2> 
        <input size=20 name=DISTRICT>
        </font></b></td>
    </tr>
    <tr> 
      <td>Location<b><font size=2></font></b></td>
      <td><b><font size=2> 
        <input size=30 name=LOCATION>
        </font></b></td>
    </tr>
    <tr> 
      <td>Phone Number 1<b><font size=2> </font></b></td>
      <td><b><font size=2> 
        <input type="text" name="PHONE_NUMBER_1" size="15">
        </font></b></td>
    </tr>
    <tr> 
      <td>Phone Number 2<b> </b></td>
      <td><b> 
        <input type="text" name="PHONE_NUMBER_2" size="15">
        </b></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><b><font size=2> 
        <input type="submit" name="btnSubmit"
	 value="Submit Information">
        </font></b></td>
    </tr>
  </table>
  <p><FONT SIZE=2><i><b>FIELDS MARKED BY <font size=2><font color="#CC0000">*</font></font>ARE 
    MANDATORY </b></i></font></p>
  </FORM>
</BODY>
</HTML>