<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Crear_formato.aspx.vb" Inherits="seca.Crear_formato" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Crear_formato</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para&nbsp;Crear El Formato de Evaluación&nbsp;en la Fundación. Los 
							campos necesarios u obligatorios tendran un asterisco(*) a un lado cuando trate 
							de enviar el formulario.</p>
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
					<td>
						<asp:Image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Nuevo Formato de Evaluación.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 483px; HEIGHT: 226px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Tipo de 
							Evaluación: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="T_tipo" runat="server" MaxLength="25" Width="246px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="T_tipo" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Nombre 
								de la Evaluación</SPAN>: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_nombre" runat="server" MaxLength="50" Width="246px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="T_nombre" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 23px" bgColor="gainsboro"><FONT face="Arial">Descripción:
						</FONT>
					</td>
					<td style="HEIGHT: 23px" bgColor="gainsboro"><asp:textbox id="T_descrip" runat="server" MaxLength="200" Width="275px" TextMode="MultiLine" Height="61px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="T_descrip" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 23px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea 
							1: </FONT>
					</td>
					<td style="HEIGHT: 23px" bgColor="#ffffff"><asp:dropdownlist id="L_A1" runat="server" Width="209px" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="L_A1" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 23px" bgColor="gainsboro"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea 
							2: </FONT>
					</td>
					<td style="HEIGHT: 23px" bgColor="gainsboro"><asp:dropdownlist id="L_A2" runat="server" Width="209px" AutoPostBack="True" Enabled="False"></asp:dropdownlist></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 23px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea 
							3&nbsp; </FONT>
					</td>
					<td style="HEIGHT: 23px" bgColor="#ffffff"><asp:dropdownlist id="L_A3" runat="server" Width="209px" AutoPostBack="True" Enabled="False"></asp:dropdownlist><asp:listbox id="L_A_cod" runat="server" Width="55px" Height="28px" Visible="False"></asp:listbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0066ff" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="80px" Font-Bold="True" ForeColor="White" Text="Reset" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" Font-Bold="True" ForeColor="White" Text="Continuar" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
