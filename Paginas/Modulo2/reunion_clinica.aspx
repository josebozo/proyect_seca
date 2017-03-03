<%@ Page Language="vb" AutoEventWireup="false" Codebehind="reunion_clinica.aspx.vb" Inherits="seca.reunion_clinica"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>reunion_clinica</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla 
							para&nbsp;Realizar&nbsp;Reunión Clínica&nbsp;en la Fundación. Los campos 
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
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<table style="WIDTH: 485px; HEIGHT: 33px" align="center" runat="server">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" BackColor="SkyBlue" BorderStyle="Double" BorderColor="SlateBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Realizar Reunión Clínica.</asp:label></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 565px; HEIGHT: 69px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial">Alumnos sin 
							Reunión : </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:dropdownlist id="L_alum" runat="server" Width="245px" Height="30px" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="L_alum"></asp:requiredfieldvalidator><asp:listbox id="L_cod_alum" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Evaluación 
							Pendientes: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Width="327px" Height="30px" Enabled="False" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_eva"></asp:requiredfieldvalidator><asp:listbox id="L_cod_eva" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image2" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 591px; HEIGHT: 327px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 117px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_area" runat="server" Width="186px" Height="30px" Enabled="False" AutoPostBack="True"></asp:dropdownlist>
						<asp:listbox id="L_area_cod" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="L_area" ErrorMessage="*"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 117px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Observaciones</SPAN>:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_Observ" runat="server" Width="446px" Height="130px" TextMode="MultiLine" MaxLength="700"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="T_Observ" ErrorMessage="*"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 117px; HEIGHT: 23px" bgColor="gainsboro"><FONT face="Arial">Tratamiento:
						</FONT>
					</td>
					<td style="HEIGHT: 23px" bgColor="gainsboro"><asp:textbox id="T_trata" runat="server" Width="447px" Height="119px" TextMode="MultiLine" MaxLength="600"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="T_trata" ErrorMessage="*"></asp:RequiredFieldValidator></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="116px" Font-Bold="True" ForeColor="White" BackColor="#8080FF" Text="Reset" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="116px" BackColor="#8080FF" Text="Guardar Area" Enabled="False" Font-Bold="True" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="124px" BackColor="#8080FF" Text="Concluir Reunion" Enabled="False" Font-Bold="True" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
