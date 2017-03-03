<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Realizar_pregunta.aspx.vb" Inherits="seca.Realizar_pregunta"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Realizar_pregunta</title>
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
						<p class="MsoNormal" align="center"><FONT face="Arial">Pantalla de ingreso 
								de&nbsp;preguntas para las evaluaciones,&nbsp;los campos necesarios u 
								obligatorios tendran un asterisco(*) a un lado cuando trate de enviar el 
								formulario.</FONT></p>
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
			<table align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label7" runat="server" Width="504px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Preguntas para la Evaluación</asp:label></p>
					</td>
				</tr>
			</table>
			</TABLE>
			<table style="WIDTH: 503px; HEIGHT: 229px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 205px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Tipo de 
							pregunta: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial"><asp:dropdownlist id="L_Tipo" runat="server" Width="218px" Height="30px" AutoPostBack="True">
								<asp:ListItem></asp:ListItem>
								<asp:ListItem Value="0">Tipo Texto</asp:ListItem>
								<asp:ListItem Value="1">Tipo Lista</asp:ListItem>
								<asp:ListItem Value="2">Tipo Check</asp:ListItem>
								<asp:ListItem Value="3">Tipo Radio Boton</asp:ListItem>
								<asp:ListItem Value="4">Tipo Observacion</asp:ListItem>
							</asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_Tipo"></asp:requiredfieldvalidator></FONT></td>
				</tr>
				<tr>
					<td style="WIDTH: 205px; HEIGHT: 54px" bgColor="#ffffff"><FONT face="Arial">Pregunta: </FONT>
					</td>
					<td style="HEIGHT: 54px" bgColor="#ffffff"><FONT face="Arial"><asp:textbox id="T_Pregunta" runat="server" Width="278px" Height="64px" TextMode="MultiLine" ReadOnly="True" MaxLength="100"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="T_Pregunta"></asp:requiredfieldvalidator></FONT></td>
				</tr>
				<tr>
					<td style="WIDTH: 205px; HEIGHT: 11px" bgColor="gainsboro"><asp:label id="Label1" runat="server" Font-Names="Arial" Visible="False">Label</asp:label><FONT face="Arial">&nbsp;</FONT>
					</td>
					<td style="HEIGHT: 11px" bgColor="gainsboro"><FONT face="Arial"><asp:textbox id="T_1" runat="server" Width="237px" Visible="False" MaxLength="25"></asp:textbox><asp:requiredfieldvalidator id="F_3" runat="server" ErrorMessage="*" ControlToValidate="T_1" Enabled="False" Visible="False"></asp:requiredfieldvalidator></FONT></td>
				</tr>
				<tr>
					<td bgColor="#ffffff" style="WIDTH: 205px; HEIGHT: 13px"><FONT face="Arial"><asp:label id="Label2" runat="server" Visible="False">Label</asp:label></FONT></td>
					<td bgColor="#ffffff" style="HEIGHT: 13px"><FONT face="Arial"><asp:textbox id="T_2" runat="server" Width="237px" Visible="False" MaxLength="25"></asp:textbox><asp:requiredfieldvalidator id="F_4" runat="server" ErrorMessage="*" ControlToValidate="T_2" Enabled="False" Visible="False"></asp:requiredfieldvalidator></FONT></td>
				</tr>
				<tr>
					<td bgColor="gainsboro" style="WIDTH: 205px; HEIGHT: 10px"><FONT face="Arial"><asp:label id="Label3" runat="server" Visible="False">Label</asp:label></FONT></td>
					<td bgColor="gainsboro" style="HEIGHT: 10px"><FONT face="Arial"><asp:textbox id="T_3" runat="server" Width="237px" Visible="False" MaxLength="25"></asp:textbox></FONT></td>
				</tr>
				<tr>
					<td bgColor="#ffffff" style="WIDTH: 205px; HEIGHT: 8px"><FONT face="Arial"><asp:label id="Label4" runat="server" Visible="False">Label</asp:label></FONT></td>
					<td bgColor="#ffffff" style="HEIGHT: 8px"><FONT face="Arial"><asp:textbox id="T_4" runat="server" Width="237px" Visible="False" MaxLength="25"></asp:textbox></FONT></td>
				</tr>
				<tr>
					<td bgColor="gainsboro" style="WIDTH: 205px; HEIGHT: 9px"><FONT face="Arial"><asp:label id="Label5" runat="server" Visible="False">Label</asp:label></FONT></td>
					<td bgColor="gainsboro" style="HEIGHT: 9px"><FONT face="Arial"><asp:textbox id="T_5" runat="server" Width="237px" Visible="False" MaxLength="25"></asp:textbox></FONT></td>
				</tr>
				<tr>
					<td bgColor="#ffffff" style="WIDTH: 205px"><FONT face="Arial"><asp:label id="Label6" runat="server" Visible="False">Label</asp:label></FONT></td>
					<td bgColor="#ffffff"><FONT face="Arial"><asp:textbox id="T_6" runat="server" Width="237px" Visible="False" MaxLength="25"></asp:textbox></FONT></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="reset" runat="server" Text="Reset" BackColor="#8080FF" Width="80px" CausesValidation="False" ForeColor="White" Font-Bold="True"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Crear" runat="server" Text="Aceptar" BackColor="#8080FF" Width="80px" ForeColor="White" Font-Bold="True" Enabled="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="proxima" runat="server" Text="Siguiente pregunta" BackColor="#8080FF" Width="137px" ForeColor="White" Font-Bold="True" Enabled="False" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle"><asp:label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
