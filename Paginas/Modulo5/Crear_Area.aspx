<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Crear_Area.aspx.vb" Inherits="seca.Area" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Area</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla la cual 
							describe y clasifica&nbsp;las áreas de los&nbsp;usuarios del Sistema. Los 
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
			<table align="center" style="WIDTH: 358px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="489px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Descripción de las Áreas.</asp:label></p>
					</td>
				</tr>
			</table>
			<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" style="WIDTH: 490px; HEIGHT: 173px">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea:
						</FONT>
					</td>
					<td bgColor="gainsboro" style="HEIGHT: 30px">
						<asp:TextBox id="T_Area" runat="server" Height="23px" Width="183px"></asp:TextBox>
						<asp:Label id="T_error" runat="server" Width="85px" Height="18px" ForeColor="Red" Visible="False">Label</asp:Label></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">
								Descripción</SPAN>: </FONT>
					</td>
					<td bgColor="#ffffff" style="HEIGHT: 30px">
						<asp:TextBox id="T_Descripcion" runat="server" Width="286px" Height="82px" TextMode="MultiLine"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="T_Descripcion"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 22px" bgColor="gainsboro"><FONT face="Arial">Evaluación:
						</FONT>
					</td>
					<td bgColor="gainsboro" style="HEIGHT: 22px">
						<asp:RadioButtonList id="R_Evalua" runat="server" Width="82px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:RadioButtonList>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="R_Evalua" Width="27px"></asp:RequiredFieldValidator></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Reset" runat="server" Width="80px" ForeColor="#FFFF80" Text="Reset" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" BackColor="#8080FF" Text="Aceptar" ForeColor="#FFFF80"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
