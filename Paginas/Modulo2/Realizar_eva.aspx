<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Realizar_eva.aspx.vb" Inherits="seca.Realizar_eva"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Realizar_eva</title>
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
							para&nbsp;Realizar&nbsp;Evaluaciones&nbsp;en la Fundación. Los campos 
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
			<table style="WIDTH: 485px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BorderColor="SlateBlue" BorderStyle="Double" BackColor="SkyBlue"> Realizar Evaluación.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 471px; HEIGHT: 96px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Evaluación:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Height="30px" Width="208px"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="L_eva" ErrorMessage="*"></asp:requiredfieldvalidator><asp:listbox id="L_cod_eva" runat="server" Height="28px" Width="31px" Visible="False"></asp:listbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial">Alumnos 
							programados para evaluación: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:dropdownlist id="L_alum" runat="server" Height="30px" Width="208px"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="L_alum" ErrorMessage="*"></asp:requiredfieldvalidator><asp:listbox id="L_cod_alum" runat="server" Height="28px" Width="31px" Visible="False"></asp:listbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <INPUT style="WIDTH: 83px; COLOR: white; HEIGHT: 24px; BACKGROUND-COLOR: #8080ff" type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="80px" ForeColor="White" BackColor="#8080FF" Text="Continuar"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<table align="center">
				<tr>
					<td align="middle"><asp:label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red" Font-Bold="True" Font-Name="arial"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
