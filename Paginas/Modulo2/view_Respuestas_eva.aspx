<%@ Page Language="vb" AutoEventWireup="false" Codebehind="view_Respuestas_eva.aspx.vb" Inherits="seca.view_Respuestas_eva"%>
<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>view_Respuestas_eva</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<CR:CrystalReportViewer id=CrystalReportViewer1 runat="server" ReportSource='<%# "C:\Inetpub\wwwroot\seca\Paginas\Modulo2\Respuestas_Eva.rpt" %>' Width="773px" Height="1069px" DisplayGroupTree="False">
			</CR:CrystalReportViewer>
		</form>
	</body>
</HTML>
