<%@ Page Language="vb" AutoEventWireup="false" Codebehind="evaluacion(test).aspx.vb" Inherits="seca.evaluacion"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>evaluacion</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table2" style="Z-INDEX: 101; LEFT: 212px; POSITION: absolute; TOP: 984px" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <INPUT style="WIDTH: 83px; HEIGHT: 24px; BACKGROUND-COLOR: #8080ff" type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" Text="Continuar" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<table align="center" bgColor="#66ffff">
				<tr>
					<td align="middle">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para 
							inserción de nuevos alumnos los campos necesarios u obligatorios tendran un 
							asterisco(*) a un lado cuando trate de enviar el formulario.</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table align="center" bgColor="#ccffcc">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center">EVALUACION</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 322px; HEIGHT: 62px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Alumno:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Width="213px" Height="24px" Enabled="False">Bozo Cairo, Jose Antonio</asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 97px">Evaluacion:</TD>
					<TD><asp:textbox id="T_exp" runat="server" Width="213px" Height="24px" Enabled="False">Examen Psicologico 1</asp:textbox></TD>
				</TR>
			</TABLE>
			<HR width="95.56%" color="#0066ff" SIZE="4">
			<p></p>
			<p></p>
			<table style="WIDTH: 258px; HEIGHT: 30px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 138px" align="middle" bgColor="#ffffff">Grupo
					</td>
					<td align="middle" bgColor="#ffffff"><asp:textbox id="TextBox1" runat="server" Width="88px">1</asp:textbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 650px; HEIGHT: 696px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 236px" bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
					</td>
					<td bgColor="gainsboro">Descripcion de Habitos al Dormir</td>
				</tr>
				<tr>
					<td style="WIDTH: 236px; HEIGHT: 47px" align="right" bgColor="#ffffff"><FONT face="Arial">Horario:
						</FONT>
					</td>
					<td style="HEIGHT: 47px" bgColor="#ffffff"><asp:textbox id="TextBox2" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="gainsboro"><FONT face="Arial">Forma de 
							dormir: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="TextBox3" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="#ffffff"><FONT face="Arial">Cuanto 
							tiempo duerme: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="TextBox4" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" bgColor="gainsboro"><FONT face="Arial"><FONT face="Arial">Pregunta:&nbsp;</FONT>
						</FONT>
					</td>
					<td bgColor="gainsboro">Descripcion de Habitos al Comer</td>
				</tr>
				<tr>
					<td style="WIDTH: 236px; HEIGHT: 34px" align="right" bgColor="#ffffff"><FONT face="Arial">Horario:
						</FONT>
					</td>
					<td style="HEIGHT: 34px" bgColor="#ffffff"><asp:textbox id="TextBox5" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="gainsboro"><FONT face="Arial">Ayuda al 
							Comer: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="TextBox6" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="#ffffff"><FONT face="Arial">Forma: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="TextBox7" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="gainsboro"><FONT face="Arial">¿Que le 
							Gusta?: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="TextBox8" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" bgColor="#ffffff"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial">Pregunta:</FONT></FONT>
						</FONT>
					</td>
					<td bgColor="#ffffff">Descripcion de Juegos</td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="gainsboro"><FONT face="Arial">Horario: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="TextBox9" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="#ffffff"><FONT face="Arial">¿Con que?: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="TextBox10" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="gainsboro"><FONT face="Arial">¿Como?: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="TextBox11" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="left" bgColor="#ffffff"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial">Pregunta:</FONT></FONT></FONT>
						</FONT>
					</td>
					<td bgColor="#ffffff">Reacciones a eventos</td>
				</tr>
				<tr>
					<td style="WIDTH: 236px; HEIGHT: 32px" align="right" bgColor="gainsboro">
						<P><FONT face="Arial">TV:</FONT></P>
					</td>
					<td style="HEIGHT: 32px" bgColor="gainsboro"><asp:textbox id="TextBox12" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="#ffffff"><FONT face="Arial">Sonidos:</FONT></td>
					<td bgColor="#ffffff">
						<asp:textbox id="Textbox13" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="gainsboro"><FONT face="Arial">Jugetes:</FONT></td>
					<td bgColor="gainsboro">
						<asp:textbox id="Textbox14" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="#ffffff">
						<P><FONT face="Arial">Colores:</FONT></P>
					</td>
					<td bgColor="#ffffff">
						<asp:textbox id="Textbox15" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" bgColor="gainsboro"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial">Pregunta:</FONT></FONT></FONT></FONT></FONT></td>
					<td bgColor="gainsboro"></td>
				</tr>
				<tr>
					<td style="WIDTH: 236px" align="right" bgColor="#ffffff"><SPAN>Que tipo de Objetos le 
							gusta: </SPAN>
					</td>
					<td bgColor="#ffffff">
						<asp:DropDownList id="DropDownList1" runat="server" Width="194px">
							<asp:ListItem Value="Suaves">Suaves</asp:ListItem>
						</asp:DropDownList></td>
				</tr>
				<TR>
					<TD style="WIDTH: 236px" bgColor="gainsboro"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial"><FONT face="Arial">Pregunta:</FONT></FONT></FONT></FONT></FONT></TD>
					<TD bgColor="gainsboro"></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 236px" align="right" bgColor="#ffffff">Que compone su dieta 
						basica:</TD>
					<TD bgColor="#ffffff">
						<asp:TextBox id="TextBox16" runat="server" Width="336px" Height="87px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
				<tr>
				</tr>
			</table>
		</form>
	</body>
</HTML>
