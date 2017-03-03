<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Seguimiento_Insertar.aspx.vb" Inherits="seca.Seguimiento_Insertar"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Seguimiento_Insertar</title>
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
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para 
							realizar seguimiento&nbsp;a los alumnos que ya posean un expediente abierto en 
							la Fundación. Los campos necesarios u obligatorios tendran un asterisco(*) a un 
							lado cuando trate de enviar el formulario.</p>
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
					<td><asp:image id="Image1" runat="server" Height="20px" Width="720px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 358px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="435px" BorderStyle="Double" BorderColor="SlateBlue" BackColor="SkyBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Seguimiento de Alumnos.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 435px; HEIGHT: 191px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Alumno: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_alumno" runat="server" Height="30px" Width="277px" AutoPostBack="True">
							<asp:ListItem Value="Seleccione Alumno">Seleccione Alumno</asp:ListItem>
						</asp:dropdownlist><asp:listbox id="L_cod_alumno" runat="server" Height="22px" Width="23px" Visible="False"></asp:listbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="L_alumno" ErrorMessage="*"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 5px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea</SPAN>:
						</FONT>
					</td>
					<td style="HEIGHT: 5px" bgColor="#ffffff">
						<P><asp:dropdownlist id="L_area" runat="server" Height="30px" Width="276px">
								<asp:ListItem Value="Seleccione Area">Seleccione Area</asp:ListItem>
							</asp:dropdownlist><asp:listbox id="L_cod_area" runat="server" Height="22px" Width="24px" Visible="False"></asp:listbox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="L_area" ErrorMessage="*"></asp:RequiredFieldValidator></P>
					</td>
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Observaciones:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="T_observacion" runat="server" Height="97px" Width="292px"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="T_observacion"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 112px; HEIGHT: 30px" bgColor="#ffffff" colSpan="1" rowSpan="1"><FONT face="Arial">Fecha:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="t_fecha" runat="server" Height="23px" Width="84px"></asp:textbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0066ff" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Reset" runat="server" Width="80px" BorderColor="White" BackColor="#8080FF" ForeColor="#FFFFC0" Font-Bold="True" Text="Reset" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="aceptar" runat="server" Width="80px" BackColor="#8080FF" ForeColor="#FFFFC0" Font-Bold="True" Font-Names="Arial" Text="Guardar"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="aceptar2" runat="server" Width="144px" BackColor="#8080FF" ForeColor="#FFFFC0" Font-Bold="True" Font-Names="Arial" Text="Agragar Observación" CausesValidation="False" Enabled="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<TABLE id="Table2" style="WIDTH: 406px; HEIGHT: 38px" rules="none" align="center" border="0">
				<TR>
					<TD style="HEIGHT: 47px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="Pie" runat="server" Height="32px" Width="597px" BorderColor="DarkCyan" BackColor="Transparent" ForeColor="Blue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Size="Smaller"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="T_error" runat="server" Height="32px" Width="501px" BorderStyle="Dotted" BorderColor="IndianRed" BackColor="Transparent" ForeColor="Red" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Size="Smaller"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
