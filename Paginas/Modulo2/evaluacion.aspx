<%@ Page Language="vb" AutoEventWireup="false" Codebehind="evaluacion.aspx.vb" Inherits="seca.evaluacion1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>evaluacion</title>
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
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			</TABLE>
			<table style="WIDTH: 485px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" BackColor="SkyBlue" Width="474px" BorderStyle="Double" BorderColor="SlateBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial">Evaluación.</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table1" style="WIDTH: 322px; HEIGHT: 62px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Alumno:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Width="213px" Height="24px" ReadOnly="True"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 97px">Evaluacion:</TD>
					<TD><asp:textbox id="T_eva" runat="server" Width="213px" Height="24px" ReadOnly="True"></asp:textbox></TD>
				</TR>
			</TABLE>
			<table align="center">
				<TR>
					<td><asp:image id="Image2" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
		</form>
	</body>
</HTML>
