<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Seguimiento_N_Tratamiento.aspx.vb" Inherits="seca.Seguimiento_N_Tratamiento" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Seguimiento_N_Tratamiento</title>
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
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla 
							para&nbsp;mostrar los tratamientos realizado por los especialistas. Los campos 
							necesarios u obligatorios tendran un asterisco(*) a un lado cuando trate de 
							enviar el formulario.</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Height="20px" Width="720px"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<table id="Table1" style="WIDTH: 485px; HEIGHT: 33px" align="center" runat="server">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BorderColor="SlateBlue" BorderStyle="Double" BackColor="SkyBlue"> Mostrar Tratamientos y Realizar Correción</asp:label></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 565px; HEIGHT: 69px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 26px" bgColor="#ffffff"><FONT face="Arial">Alumnos con 
							Evaluaciónes Cerradas: </FONT>
					</td>
					<td style="HEIGHT: 26px" bgColor="#ffffff"><asp:dropdownlist id="L_alumno" runat="server" Height="30px" Width="245px" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="L_alumno" ErrorMessage="*"></asp:requiredfieldvalidator><asp:listbox id="L_cod_alumno" runat="server" Height="28px" Width="31px" Visible="False"></asp:listbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Evaluación 
							y Correción: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Height="30px" Width="327px" AutoPostBack="True" Enabled="False"></asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator3" runat="server" ControlToValidate="L_eva" ErrorMessage="*"></asp:requiredfieldvalidator><asp:listbox id="L_cod_eva" runat="server" Height="28px" Width="31px" Visible="False"></asp:listbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN></FONT>reas 
							que Evaluaron: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:dropdownlist id="L_area" runat="server" Height="30px" Width="327px" AutoPostBack="True" Enabled="False"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="L_area" ErrorMessage="*"></asp:requiredfieldvalidator><asp:listbox id="L_cod_area" runat="server" Height="28px" Width="31px" Visible="False"></asp:listbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 593px; HEIGHT: 175px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 117px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Fecha: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="t_fecha" runat="server" Width="122px" ReadOnly="True"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 117px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Tratamiento</SPAN>:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_trata" runat="server" Height="130px" Width="446px" MaxLength="700" TextMode="MultiLine" ReadOnly="True"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="T_trata" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
				</tr>
			</table>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="144px" Font-Bold="True" ForeColor="White" BackColor="#8080FF" Text="Guardar Corrección" Enabled="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="116px" Font-Bold="True" ForeColor="White" BackColor="#8080FF" Text="Mostrar Otro" Enabled="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle"><asp:label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Blue" Font-Bold="True" Font-Name="arial"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
