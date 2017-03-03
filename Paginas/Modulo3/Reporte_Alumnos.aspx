<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Reporte_Alumnos.aspx.vb" Inherits="seca.Reporte_Alumnos1"%>
<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Reporte_Alumnos</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<cr:CrystalReportViewer id=CrystalReportViewer1 style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" Width="1030px" Height="1069px" ReportSource='<%# "C:\Inetpub\wwwroot\seca\Paginas\Modulo3\Reporte_Alumnos.rpt" %>' DisplayGroupTree="False">
			</cr:CrystalReportViewer>
		</form>
	</body>
</HTML>
