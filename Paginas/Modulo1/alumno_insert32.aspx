<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_insert32.aspx.vb" Inherits="seca.alumno_insert32"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>alumno_insert32</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
			<tr>
				<td align="middle" bgColor="#87cefa">
					<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
						Pantalla para inserción de nuevos alumnos, los campos necesarios u obligatorios 
						tendrán un asterisco(*) a un lado cuando trate de enviar el formulario.</p>
				</td>
			</tr>
		</table>
		<p></p>
		<p></p>
		<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
			<tr>
				<td align="middle">
					<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Entrevista Social.</asp:label></p>
				</td>
			</tr>
		</table>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<form id="Form1" method="post" runat="server">
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 322px; FONT-FAMILY: Arial; HEIGHT: 62px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Usuario:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Width="213px" Height="24px" Enabled="False"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 97px">Expediente:</TD>
					<TD><asp:textbox id="T_exp" runat="server" Width="213px" Height="24px" Enabled="False"></asp:textbox></TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image2" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Constelación Familiar.</asp:label></p>
					</td>
				</tr>
			</table>
			<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" style="WIDTH: 471px; HEIGHT: 321px">
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Motivo de la consulta: </FONT>
					</td>
					<td bgColor="gainsboro">
						<asp:TextBox id="T_consulta" runat="server" Width="272px" Height="65px" TextMode="MultiLine"></asp:TextBox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial"> Filiación: </FONT>
					</td>
					<td bgColor="#ffffff">
						<asp:DropDownList id="l_filiacion" runat="server" Width="200px" Height="35px">
							<asp:ListItem Value="No hay Datos">No hay Datos</asp:ListItem>
							<asp:ListItem Value="Leg&#237;tima">Leg&#237;tima</asp:ListItem>
							<asp:ListItem Value="Natural">Natural</asp:ListItem>
							<asp:ListItem Value="Natural Reconocida">Natural Reconocida</asp:ListItem>
							<asp:ListItem Value="Adoptiva">Adoptiva</asp:ListItem>
						</asp:DropDownList></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Custodia: </FONT>
					</td>
					<td bgColor="gainsboro">
						<asp:DropDownList id="l_custodia" runat="server" Width="200px" Height="35px">
							<asp:ListItem Value="Ambos Padres">Ambos Padres</asp:ListItem>
							<asp:ListItem Value="Padre">Padre</asp:ListItem>
							<asp:ListItem Value="Madre">Madre</asp:ListItem>
							<asp:ListItem Value="Tutor">Tutor</asp:ListItem>
							<asp:ListItem Value="Otros Familiares">Otros Familiares</asp:ListItem>
							<asp:ListItem Value="Institucion">Institucion</asp:ListItem>
						</asp:DropDownList></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Observaciones de la 
							Custodia: </FONT>
					</td>
					<td bgColor="#ffffff">
						<asp:TextBox id="T_obs_custo" runat="server" Width="272px" Height="65px" TextMode="MultiLine"></asp:TextBox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial"> Unión de los Padres: </FONT>
					</td>
					<td bgColor="gainsboro">
						<asp:DropDownList id="L_padre_union" runat="server" Width="200px" Height="35px">
							<asp:ListItem Value="Leg&#237;tima">Leg&#237;tima</asp:ListItem>
							<asp:ListItem Value="Concubinaria">Concubinaria</asp:ListItem>
							<asp:ListItem Value="Ocasional">Ocasional</asp:ListItem>
							<asp:ListItem Value="Divorciados">Divorciados</asp:ListItem>
							<asp:ListItem Value="Otros">Otros</asp:ListItem>
						</asp:DropDownList></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 19px" bgColor="#ffffff"><FONT face="Arial">Lugar que 
							ocupa el caso en la constelación familiar: </FONT>
					</td>
					<td style="HEIGHT: 19px" bgColor="#ffffff">
						<asp:DropDownList id="l_lugar_fami" runat="server" Width="200px" Height="35px">
							<asp:ListItem Value="&#218;nico">&#218;nico</asp:ListItem>
							<asp:ListItem Value="Mayor">Mayor</asp:ListItem>
							<asp:ListItem Value="Menor">Menor</asp:ListItem>
							<asp:ListItem Value="Intermedio">Intermedio</asp:ListItem>
							<asp:ListItem Value="Otro">Otro</asp:ListItem>
							<asp:ListItem Value="No se pudo precisar">No se pudo precisar</asp:ListItem>
						</asp:DropDownList></td>
				</tr>
			</table>
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
						<asp:button id="Button2" runat="server" Width="80px" Text="Continuar" BackColor="#8080FF" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
		</form>
	</body>
</HTML>
