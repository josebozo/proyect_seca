<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Crear_Usuario.aspx.vb" Inherits="seca.Crear_Usuario" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Crear_Usuario</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body text="darkblue" background="http://jon:/seca/Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:listbox id="L_Areaimagen" style="Z-INDEX: 101; LEFT: 609px; POSITION: absolute; TOP: 269px" runat="server" Width="90px" Height="23px" Visible="False"></asp:listbox>
			<table style="WIDTH: 458px; HEIGHT: 60px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="lightskyblue">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center"><FONT color="#000000">Pantalla 
								para la creación de los&nbsp;usuarios. Los campos necesarios u obligatorios 
								tendran un asterisco(*) a un lado cuando trate de enviar el formulario.</FONT></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
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
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="386px" BorderStyle="Double" BorderColor="SlateBlue" BackColor="SkyBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial">Creación de Usuarios del Sistema S.E.C.A.</asp:label></p>
					</td>
				</tr>
			</table>
			<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial"><FONT color="#000000">Nombre:</FONT>
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="T_Nombre" runat="server" Width="180px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="T_Nombre"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><FONT color="#000000"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Apellido</SPAN>:</FONT>
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_Apellido" runat="server" Width="183px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="T_Apellido"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 23px" bgColor="gainsboro"><FONT face="Arial"><FONT color="#000000">Cédula 
								de Identidad:</FONT> </FONT>
					</td>
					<td style="HEIGHT: 23px" bgColor="gainsboro"><asp:textbox id="T_ci" runat="server" Width="180px" MaxLength="8"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="T_ci"></asp:requiredfieldvalidator></td>
				</tr>
				<TR>
					<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="#ffffff" colSpan="1" rowSpan="1"><FONT face="Arial" color="#000000">Área:</FONT></TD>
					<TD style="HEIGHT: 23px" bgColor="#ffffff"><asp:dropdownlist id="L_Area" runat="server" Width="186px" Height="30px">
							<asp:ListItem Value="Examen Psicologico 1 ">Terapia del Lenguaje</asp:ListItem>
						</asp:dropdownlist></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="#dcdcdc"><FONT face="Arial" color="#000000">Nombre 
							de Usuario</FONT></TD>
					<TD style="HEIGHT: 23px" bgColor="#dcdcdc"><asp:textbox id="T_user" runat="server" Width="180px" MaxLength="8"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="T_user"></asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="#ffffff"><FONT face="Arial" color="#000000">Password:</FONT></TD>
					<TD style="HEIGHT: 23px" bgColor="#ffffff"><asp:textbox id="T_Pass" runat="server" Width="180px" MaxLength="8" TextMode="Password"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="T_Pass"></asp:requiredfieldvalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial" color="#000000">Perfil 
							del Usuario:</FONT></TD>
					<TD style="HEIGHT: 23px" bgColor="#ffffff"><asp:dropdownlist id="L_Perfil" runat="server" Width="186px" Height="30px">
							<asp:ListItem Value="Administrador" Selected="True">Administrador</asp:ListItem>
							<asp:ListItem Value="Especialista">Especialista</asp:ListItem>
							<asp:ListItem Value="Secretaria">Secretaria</asp:ListItem>
							<asp:ListItem Value="Trabajador Social">Trabajador Social</asp:ListItem>
						</asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" ErrorMessage="*" ControlToValidate="L_Perfil"></asp:requiredfieldvalidator></TD>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="slateblue" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Reset" runat="server" Width="80px" BorderColor="White" BackColor="#8080FF" ForeColor="#FFFFC0" Font-Bold="True" Text="Reset" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="aceptar" runat="server" Width="80px" BackColor="#8080FF" ForeColor="#FFFFC0" Font-Bold="True" Font-Names="Arial" Text="Aceptar"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="126px" BackColor="#8080FF" ForeColor="#FFFFC0" Font-Bold="True" Font-Names="Arial" Text="Agregar Usuario" CausesValidation="False" Enabled="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<TABLE id="Table2" style="WIDTH: 406px; HEIGHT: 38px" rules="none" align="center" border="0">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="Pie" runat="server" Width="297px" Height="32px" Visible="False" ForeColor="Blue" Font-Bold="True" Font-Names="Arial"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" style="WIDTH: 404px; HEIGHT: 38px" rules="none" align="center" border="0">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="T_error" runat="server" Width="301px" Height="32px" Visible="False" ForeColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Larger"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table4" style="WIDTH: 406px; HEIGHT: 38px" rules="none" align="center" border="0">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
		<P align="center"></P>
	</body>
</HTML>
