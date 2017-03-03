<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mostrar_eva_selec.aspx.vb" Inherits="seca.mostrar_eva_selec"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>mostrar_eva_selec</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para&nbsp;Mostrar las Evaluaciones Realizadas. Selecione el alumno y 
							la evaluacion para cargar la siguiente pantalla.</p>
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
			<table style="WIDTH: 485px; HEIGHT: 33px" align="center" runat="server" ID="Table1">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" BackColor="SkyBlue" BorderStyle="Double" BorderColor="SlateBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Mostrar Evaluación</asp:label></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 565px; HEIGHT: 69px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"> Alumnos: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:dropdownlist id="L_alum" runat="server" Width="245px" Height="30px" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="L_alum"></asp:requiredfieldvalidator><asp:listbox id="L_cod_alum" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Evaluación:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Width="327px" Height="30px" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_eva"></asp:requiredfieldvalidator><asp:listbox id="L_cod_eva" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
		</form>
	</body>
</HTML>
