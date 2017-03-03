<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Reporte_citas.aspx.vb" Inherits="seca.Reporte_citas"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Reporte_citas</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<CR:CRYSTALREPORTVIEWER 
				id="Report1" 
				runat="server" 
				Width="901px" 
				Height="1069px" 
				ReportSource='<%# "c:\inetpub\wwwroot\seca\Paginas\Modulo3\reporte_citas1.rpt" %>' PageToTreeRatio="6">
			</CR:CRYSTALREPORTVIEWER>
		</form>
	</body>
</HTML>
