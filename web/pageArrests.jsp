<%@ page language="java"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD><TITLE>INSERT INTO ARRESTS</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<CENTER>
  <DIV align=left><b><p align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333">ARRESTS DATA ENTRY</font></b>
    <FORM NAME="LOGIN"
ACTION="/ecops/respArrests.jsp" METHOD="post">
     
      <table width="75%" align="center">
        <tr> 
          <td>Station Id</td>
          <td><font color="#000000"> 
            <input type="text" name="STATION_ID" size="10">
            <font color="#FF0000">*</font></font></td>
        </tr>
        <tr> 
          <td>Crime Id</td>
          <td> 
            <input type="text" name="CRIME_ID" value="" size="10">
            <font color="#FF0000">*</font> </td>
        </tr>
        <tr> 
          <td>Name</td>
          <td> 
            <input type="text" name="NAME" value="" size="20">
            <font color="#FF0000">*</font> </td>
        </tr>
        <tr> 
          <td>Father's Name</td>
          <td> 
            <input type="text" name="FATHERS_NAME" value="" size="20">
          </td>
        </tr>
        <tr> 
          <td>Address</td>
          <td> 
            <input type="text" name="ADDRESS" value="" size="30">
          </td>
        </tr>
        <tr> 
          <td>Date Of Arrest(mm/dd/yyyy)</td>
          <td><b> 
            <input type="text" name="DATE_OF_ARREST" value="" size="15">
            </b> <font color="#FF0000">*</font></td>
        </tr>
        <tr> 
          <td>Place Of Arrest</td>
          <td><b> 
            <input type="text" name="PLACE_OF_ARREST" value="" size="20">
            </b></td>
        </tr>
        <tr> 
          <td>Relative Name</td>
          <td><b> 
            <input type="text" name="RELATIVE_NAME" value="" size="25">
            </b></td>
        </tr>
        <tr> 
          <td>Relative Address</td>
          <td><b> 
            <input type="text" name="RELATIVE_ADDRESS" value="" size="30">
            </b></td>
        </tr>
        <tr> 
          <td>Relation</td>
          <td><b> 
            <input type="text" name="RELATION" value="" size="20">
            </b></td>
        </tr>
        <tr> 
          <td>Finger Print Number</td>
          <td><b> 
            <input type="text" name="FINGER_PRINT_NUMBER" value="" size="10">
            </b></td>
        </tr>
        <tr> 
          <td>Other Identifications</td>
          <td><b> 
            <input type="text" name="OTHER_IDENTIFICATIONS" value="" size="30">
            </b></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>
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