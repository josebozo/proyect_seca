<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_mostrar2.aspx.vb" Inherits="seca.alumno_mostrar2" debug="True"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>alumno_mostrar2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<cr:CrystalReportViewer id=Report1 runat="server" Width="773px" Height="1049px" ReportSource='<%# "c:\inetpub\wwwroot\seca\Paginas\Modulo1\Alumno1.rpt" %>' DisplayGroupTree="False" SeparatePages="False">
			</cr:CrystalReportViewer>
			<table style="WIDTH: 306px; HEIGHT: 30px" align="center">
				<tr>
					<td align="middle">
						<asp:Button id="Button1" runat="server" Text="Continuar - Informacion de los Representantes" Width="275px"></asp:Button>
					</td>
				</tr>
				<tr>
					<td align="middle">
						<asp:Button id="Button2" runat="server" Text="Continuar - Informacion de los Parientes" Width="275px"></asp:Button>
					</td>
				</tr>
				<tr>
					<td align="middle">
						<asp:Button id="Button3" runat="server" Text="Continuar - Constelacion Familiar" Width="275px" Height="27px" Visible="False"></asp:Button>
					</td>
				</tr>
				<tr>
					<td align="middle">
						<asp:Button id="Button4" runat="server" Text="Continuar - Informacion Social" Width="275px" Visible="False"></asp:Button>
					</td>
				</tr>
				<tr>
					<td align="middle">
						<asp:Button id="Button5" runat="server" Text="Continuar - Cierre de Entrevista Social" Width="275px" Visible="False"></asp:Button>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
