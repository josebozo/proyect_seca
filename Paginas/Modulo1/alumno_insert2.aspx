<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_insert2.aspx.vb" Inherits="seca.alumno_insert2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Datos de los Padres</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
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
						<asp:Image id="Image2" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Datos de Identificación de los Padres.</asp:label></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 324px; HEIGHT: 25px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td align="middle" bgColor="skyblue" borderColor="slateblue" borderColorDark="#6a5acd" colSpan="" rowSpan=""><FONT face="Arial"><STRONG>Representante:</STRONG></FONT>&nbsp;
					</td>
					<td align="middle" bgColor="skyblue" borderColor="slateblue" borderColorDark="#6a5acd"><asp:listbox id="L_repre" runat="server" Height="24px" Width="120px">
							<asp:ListItem Value="0">Padre</asp:ListItem>
							<asp:ListItem Value="1">Madre</asp:ListItem>
						</asp:listbox><asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" Height="8px" Width="8px" ControlToValidate="L_repre" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 480px; HEIGHT: 696px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Cédula de Identidad: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_ci" runat="server" Width="210px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Height="8px" Width="8px" ControlToValidate="T_ci" ErrorMessage="*"></asp:requiredfieldvalidator>
						<asp:RangeValidator id="RangeValidator1" runat="server" Height="22px" Width="32px" ControlToValidate="T_ci" ErrorMessage="Num" MinimumValue="100000" MaximumValue="999999999" Type="Integer"></asp:RangeValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Nombre: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_nombre" runat="server" Width="248px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" Height="8px" Width="8px" ControlToValidate="T_nombre" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Apellido: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_apellido" runat="server" Width="248px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" Height="8px" Width="8px" ControlToValidate="T_apellido" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Fecha de Nacimiento </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_fecha_n" runat="server" Width="104px" AutoPostBack="True"></asp:textbox><asp:textbox id="Text1" runat="server" Width="144px" Enabled="False"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" Height="8px" Width="8px" ControlToValidate="T_fecha_n" ErrorMessage="*"></asp:requiredfieldvalidator>&nbsp;</td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Nacionalidad: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_naciona" runat="server" Width="248px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" Height="8px" Width="8px" ControlToValidate="T_naciona" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 19px" bgColor="#ffffff"><FONT face="Arial">Estado 
							Civil: </FONT>
					</td>
					<td style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_estadoc" runat="server" Width="248px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" Height="8px" Width="8px" ControlToValidate="T_estadoc" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Profesión: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_profe" runat="server" Width="248px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Ocupación: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_ocupa" runat="server" Width="248px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Instrucción: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_instruc" runat="server" Width="248px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Lugar de Trabajo: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_L_traba" runat="server" Width="248px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Teléfono de Oficina: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_tlf_traba" runat="server" Width="248px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Celular: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_cel" runat="server" Width="248px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Dirección de Hab. </FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_direccH" runat="server" Height="56px" Width="248px" TextMode="MultiLine"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Número de Hijos:(Hermanos 
							del Alumno) </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_herma" runat="server" Width="128px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="gainsboro">
						<P><FONT face="Arial">Número de Hijos:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (otra 
								relación)</FONT></P>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_hijos" runat="server" Width="128px"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Otras Uniones: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:dropdownlist id="L_unions" runat="server" Height="24px" Width="248px">
							<asp:ListItem Value="Ninguna" Selected="True">Ninguna</asp:ListItem>
							<asp:ListItem Value="Anteriores">Anteriores</asp:ListItem>
							<asp:ListItem Value="Posteriores">Posteriores</asp:ListItem>
							<asp:ListItem Value="Simultaneas">Simultaneas</asp:ListItem>
							<asp:ListItem Value="Sin Establecer">Imposible establecer</asp:ListItem>
						</asp:dropdownlist></td>
				</tr>
				<tr>
					<td bgColor="gainsboro" style="WIDTH: 179px"><FONT face="Arial">Observaciones de las 
							otras uniones:</FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_obser_unio" runat="server" Height="56px" Width="248px" TextMode="MultiLine"></asp:textbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table borderColor="#6a5acd" rules="none" align="center" border="2">
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="80px" Text="Reset" BackColor="#8080FF" CausesValidation="False" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="Button1" runat="server" Width="80px" BackColor="#8080FF" Text="Agregar" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="Button2" runat="server" Width="80px" BackColor="#8080FF" Text="Continuar" CausesValidation="False" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
			</table>
			<p></p>
			<table>
				<tr>
					<td align="middle">
						<asp:Label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red" Font-Bold="True"></asp:Label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
