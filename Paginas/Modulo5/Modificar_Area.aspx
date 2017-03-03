<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Modificar_Area.aspx.vb" Inherits="seca.Modificar_Area" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Modificar_Area</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 604px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" align="center"><FONT face="Arial">Pantalla la cual describe y 
								clasifica&nbsp;las áreas de los&nbsp;usuarios del Sistema. Los campos 
								necesarios u obligatorios tendran un asterisco(*) a un lado cuando trate de 
								enviar el formulario</FONT></p>
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
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="470px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Modificación de las Áreas</asp:label></p>
					</td>
				</tr>
			</table>
			</TABLE>
			<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" style="WIDTH: 431px; HEIGHT: 248px">
				<tr>
					<td style="WIDTH: 102px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">
							<P class="MsoNormal">
							Área: </FONT></P>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="T_Area" runat="server" Height="23px" Width="183px"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="T_Area"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 102px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Descripción</SPAN>:
						</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><asp:textbox id="T_Descripcion" runat="server" Height="176px" Width="370px" TextMode="MultiLine"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="T_Descripcion" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 102px; HEIGHT: 22px" bgColor="gainsboro"><FONT face="Arial">Evaluación:
						</FONT>
					</td>
					<td style="HEIGHT: 22px" bgColor="gainsboro"><asp:radiobuttonlist id="R_Evalua" runat="server" Width="103px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="R_Evalua" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="80px" Font-Bold="True" ForeColor="#FFFFC0" Text="Reset" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" Font-Bold="True" ForeColor="#FFFFC0" Text="Aceptar" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="108px" Font-Bold="True" ForeColor="#FFFFC0" Text="Modificar Otro" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="WIDTH: 416px; HEIGHT: 48px" rules="none" align="center" border="0">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="T_error" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red" Visible="False">Label</asp:label>
					</TD>
				</TR>
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Blue" Visible="False">Modificación Realizada</asp:label>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
