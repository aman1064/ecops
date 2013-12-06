<%@ page language="java"%>

<HTML>
<HEAD><TITLE>INSERT INTO CELLS</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333">CELLS 
  DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN"
ACTION="/ecops/respCells.jsp" METHOD="post">
  <table width="75%" align="center">
    <tr>
      <td>Cell Id</td>
      <td><b>
        <input name="CELL_ID" size="10">
        <font color="#CC0000">*</font></b></td>
    </tr>
    <tr>
      <td height="33">Cell Description</td>
      <td height="33"> 
        <input size=30 name=CELL_DESCRIPTION>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><b><font size=2>
        <input type="submit" name="btnSubmit"
	 value="Submit Information">
        </font></b></td>
    </tr>
  </table>
  <p> <FONT SIZE=2><i><b>FIELDS MARKED BY <font size=2><font color="#CC0000">*</font></font>ARE 
    MANDATORY </b></i></font></p>
</FORM>
</BODY>
</HTML>