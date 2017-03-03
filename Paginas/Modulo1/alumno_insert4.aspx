<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_insert4.aspx.vb" Inherits="seca.alumno_insert4"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>alumno_insert4</title>
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
						<p class="MsoNormal" align="center"><FONT face="Arial">Pantalla para inserción de 
								nuevos alumnos, los campos necesarios u obligatorios tendrán un asterisco(*) a 
								un lado cuando trate de enviar el formulario.</FONT></p>
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
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="437px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Entrevista Social.</asp:label></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 322px; FONT-FAMILY: Arial; HEIGHT: 62px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Usuario:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Enabled="False" Height="24px" Width="213px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 97px">Expediente:</TD>
					<TD><asp:textbox id="T_exp" runat="server" Enabled="False" Height="24px" Width="213px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image2" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="640px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="508px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Cierre de Entrevista.</asp:label></p>
					</td>
				</tr>
			</table>
			<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" style="WIDTH: 509px; HEIGHT: 321px">
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial"> Síntesis del Caso: </FONT>
					</td>
					<td bgColor="gainsboro">
						<asp:TextBox id="T_sintesis" runat="server" Width="337px" Height="66px" TextMode="MultiLine" MaxLength="299"></asp:TextBox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Observaciones</SPAN>:
						</FONT>
					</td>
					<td bgColor="#ffffff">
						<asp:TextBox id="T_observacion" runat="server" Width="344px" Height="65px" TextMode="MultiLine" MaxLength="299"></asp:TextBox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Resultado: </FONT>
					</td>
					<td bgColor="gainsboro">
						<asp:DropDownList id="L_resultado" runat="server" Width="343px" Height="35px">
							<asp:ListItem Value="Aceptado">Aceptado</asp:ListItem>
							<asp:ListItem Value="Referido a Otra Instituci&#243;n">Referido a Otra Instituci&#243;n</asp:ListItem>
							<asp:ListItem Value="Pidi&#243; s&#243;lo Informaci&#243;n">Pidi&#243; s&#243;lo Informaci&#243;n</asp:ListItem>
							<asp:ListItem Value="Requiere Servicios que no puede prestar la Instituci&#243;n">Requiere Servicios que no puede prestar la Instituci&#243;n</asp:ListItem>
							<asp:ListItem Value="Razones Econ&#243;micas">Razones Econ&#243;micas</asp:ListItem>
							<asp:ListItem Value="Otras">Otras</asp:ListItem>
						</asp:DropDownList></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial"> Recomendaciones: </FONT>
					</td>
					<td bgColor="#ffffff">
						<asp:TextBox id="T_recomendaciones" runat="server" Width="344px" Height="65px" TextMode="MultiLine" MaxLength="299"></asp:TextBox></td>
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
			<TABLE id="Table2" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="80px" Text="Reset" BackColor="#8080FF" CausesValidation="False" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="80px" Text="Finalizar" BackColor="#8080FF" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
