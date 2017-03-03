<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Seguimiento_modificar2.aspx.vb" Inherits="seca.Seguimiento_modificar" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Seguimiento_modificar</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para 
							Modificar las Observaciones&nbsp;de los alumnos que ya posean un expediente 
							abierto en la Fundación.</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 358px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="435px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"></asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 431px; HEIGHT: 240px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 28px" bgColor="#dcdcdc" colSpan="1" rowSpan="1"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea</SPAN>:
						</FONT>
					</td>
					<td style="HEIGHT: 28px" bgColor="gainsboro"><asp:textbox id="t_area" runat="server" Width="292px" Height="24px" Enabled="False"></asp:textbox></td>
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 30px" bgColor="#ffffff" colSpan="1" rowSpan="1"><FONT face="Arial">Observaciones:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_observacion" runat="server" Width="292px" Height="154px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 30px" bgColor="#dcdcdc"><FONT face="Arial">Fecha: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#dcdcdc"><asp:textbox id="t_fecha" runat="server" Width="84px" Height="23px" Enabled="False"></asp:textbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 383px; HEIGHT: 55px" borderColor="#0066ff" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Reset" runat="server" Width="80px" Font-Bold="True" ForeColor="#FFFFC0" BackColor="#8080FF" BorderColor="White" CausesValidation="False" Text="Reset"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="aceptar" runat="server" Width="80px" Font-Names="Arial" Font-Bold="True" ForeColor="#FFFFC0" BackColor="#8080FF" Text="Guardar"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Otro" runat="server" Width="100px" Font-Names="Arial" Font-Bold="True" ForeColor="#FFFFC0" BackColor="#8080FF" Text="Modificar Otro"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<TABLE id="Table2" style="WIDTH: 414px; HEIGHT: 32px" rules="none" align="center" border="0">
				<TR>
					<TD style="HEIGHT: 44px" align="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="Pie" runat="server" Width="370px" Height="32px" Font-Names="Arial" Font-Bold="True" ForeColor="Blue" BackColor="Transparent" BorderColor="DarkCyan" Visible="False" Font-Size="Smaller"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
