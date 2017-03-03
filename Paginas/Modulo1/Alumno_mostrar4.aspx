<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Alumno_mostrar4.aspx.vb" Inherits="seca.Alumno_mostrar4"%>
<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Alumno_mostrar4</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<CR:CrystalReportViewer id=Report1 style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" Width="350px" Height="50px" ReportSource='<%# "c:\inetpub\wwwroot\seca\Paginas\Modulo1\Alumno3.rpt" %>' DisplayGroupTree="False">
			</CR:CrystalReportViewer>
		</form>
	</body>
</HTML>
