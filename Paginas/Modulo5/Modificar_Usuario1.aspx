<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Modificar_Usuario1.aspx.vb" Inherits="seca.Modificar_Usuario1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Modificar_Usuario1</title>
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
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para la 
							modificación de usuarios. Los campos necesarios u obligatorios tendran un 
							asterisco(*) a un lado cuando trate de enviar el formulario.</p>
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
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 403px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="391px" Font-Bold="True" Font-Names="Arial" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Modificación de Usuarios del Sistema S.E.C.A.</asp:label></p>
					</td>
				</tr>
			</table>
			<table align="center">
				<tr>
					<td>
						<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="2">
							<TBODY>
								<tr>
									<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Nombre: </FONT>
									</td>
									<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="T_Nombre" runat="server" Width="180px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" ControlToValidate="T_Nombre" ErrorMessage="*"></asp:requiredfieldvalidator></td>
								</tr>
								<tr>
									<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><SPAN>Apellido</SPAN>:
										</FONT>
									</td>
									<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_Apellido" runat="server" Width="183px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="T_Apellido" ErrorMessage="*"></asp:requiredfieldvalidator></td>
								</tr>
								<tr>
									<td style="WIDTH: 179px; HEIGHT: 23px" bgColor="gainsboro"><FONT face="Arial">Cédula de 
											Identidad: </FONT>
									</td>
									<td style="HEIGHT: 23px" bgColor="gainsboro"><asp:textbox id="T_ci" runat="server" Width="180px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="T_ci" ErrorMessage="*"></asp:requiredfieldvalidator></td>
								</tr>
								<TR>
									<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="#ffffff" colSpan="1" rowSpan="1"><FONT face="Arial">Área:</FONT></TD>
									<TD style="HEIGHT: 23px" bgColor="#ffffff"><asp:dropdownlist id="L_Area" runat="server" Width="186px" Height="30px">
											<asp:ListItem Value="Examen Psicologico 1 ">Terapia del Lenguaje</asp:ListItem>
										</asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="#dcdcdc"><FONT face="Arial">Nombre de 
											Usuario</FONT></TD>
									<TD style="HEIGHT: 23px" bgColor="#dcdcdc"><asp:textbox id="T_user" runat="server" Width="180px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="T_user" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="#ffffff"><FONT face="Arial">Nuevo 
											Password:</FONT></TD>
									<TD style="HEIGHT: 23px" bgColor="#ffffff"><asp:textbox id="T_Pass" runat="server" Width="180px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="T_Pass" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
								<TR>
									<TD style="WIDTH: 179px; HEIGHT: 23px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Perfil 
											del Usuario:</FONT></TD>
									<TD style="HEIGHT: 23px" bgColor="#ffffff"><asp:dropdownlist id="L_Perfil" runat="server" Width="186px" Height="30px">
											<asp:ListItem Value="Administrador" Selected="True">Administrador</asp:ListItem>
											<asp:ListItem Value="Especialista">Especialista</asp:ListItem>
											<asp:ListItem Value="Secretaria">Secretaria</asp:ListItem>
											<asp:ListItem Value="Trabajador Social">Trabajador Social</asp:ListItem>
										</asp:dropdownlist><asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" ControlToValidate="L_Perfil" ErrorMessage="*"></asp:requiredfieldvalidator></TD>
					</td>
				</tr>
			</table>
			</TD></TR></TBODY></TABLE>
			<asp:listbox id="L_Areaimagen" runat="server" Width="90px" Height="23px" Visible="False" style="Z-INDEX: 101; LEFT: 659px; POSITION: absolute; TOP: 286px"></asp:listbox>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Reset" runat="server" Width="80px" Font-Bold="True" ForeColor="#FFFFC0" BackColor="#8080FF" Text="Reset" BorderColor="White" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="aceptar" runat="server" Width="80px" Font-Bold="True" Font-Names="Arial" ForeColor="#FFFFC0" BackColor="#8080FF" Text="Aceptar"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="126px" Font-Bold="True" Font-Names="Arial" ForeColor="#FFFFC0" BackColor="#8080FF" Text="Modificar Usuario" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<TABLE id="Table2" rules="none" align="center" border="0">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="Pie" runat="server" Width="297px" Height="32px" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Blue"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" rules="none" align="center" border="0">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="T_error" runat="server" Width="301px" Height="32px" Visible="False" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Font-Size="Larger"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
