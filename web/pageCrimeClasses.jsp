<%@ page language="java"%>
<HTML>
<HEAD><TITLE>INSERT INTO CRIME CLASSES</TITLE></HEAD>

<body bgcolor="#CCCCFF" text="BLACK"><B>
<div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4" color="#003333">CRIME
  CLASSES DATA ENTRY</font></b> </div>
<FORM NAME="LOGIN"
ACTION="/ecops/respCrimeClasses.jsp" METHOD="post">

  <table width="75%" align="center">
    <tr>
      <td> Crime Id</td>
      <td>
        <input name="CRIMEID" size="10">
        <font color="#CC0000">*
        </font></td>
    </tr>
    <tr>
      <td>Description</td>
      <td>
        <input size=30 name=DESCRIPTION>
        </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><b><font size=2>
        <input type="Submit" name="btnSubmit"
	 value="Submit Information">
        </font></b></td>
    </tr>
  </table>
  <p><FONT SIZE=2><i><b>FIELDS MARKED BY <font size=2><font color="#CC0000">*</font></font>ARE
    MANDATORY </b></i></font> </p>
</FORM>
</BODY>
</HTML>