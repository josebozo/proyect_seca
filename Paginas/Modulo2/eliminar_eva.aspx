<%@ Page Language="vb" AutoEventWireup="false" Codebehind="eliminar_eva.aspx.vb" Inherits="seca.eliminar_eva" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>eliminar_eva</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 46px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para&nbsp;Eliminar Evaluacions.</p>
					</td>
				</tr>
			</table>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<table style="WIDTH: 553px; HEIGHT: 33px" align="center" runat="server" ID="Table2">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="563px" BackColor="SkyBlue" BorderStyle="Double" BorderColor="SlateBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Formato de Evaluación.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 559px; HEIGHT: 34px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Evaluación 
							: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Width="327px" Height="30px"></asp:dropdownlist>
						<asp:listbox id="L_cod_eva" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="L_eva" ErrorMessage="*"></asp:RequiredFieldValidator></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0066ff" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" Font-Bold="True" ForeColor="White" Text="Eliminar" BackColor="Red" Enabled="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle"><asp:label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red" Font-Bold="True" Font-Name="arial"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
