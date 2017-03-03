<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_insert.aspx.vb" Inherits="seca.alumno_insert"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Nuevo Alumno</title>
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
			<TABLE id="info" borderColor="lightgrey" cellSpacing="0" cellPadding="1" width="356" align="center" border="1" style="WIDTH: 356px; HEIGHT: 74px">
				<TR>
					<TD style="WIDTH: 136px" bgColor="gainsboro"><FONT face="Arial" size="2">FECHA:</FONT></TD>
					<TD bgColor="gainsboro"><FONT face="Arial"><asp:textbox id="fechaACT" runat="server" Width="152px" BorderStyle="None" Enabled="False"></asp:textbox></FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 136px" bgColor="white"><FONT face="Arial" size="2">REALIZADA POR:</FONT></TD>
					<TD bgColor="white"><FONT face="Arial"><asp:textbox id="usuario" runat="server" Width="228px" BorderStyle="None" Enabled="False"></asp:textbox></FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 136px" bgColor="gainsboro"><FONT face="Arial" size="2">HISTORIA Nº:</FONT></TD>
					<TD bgColor="gainsboro"><FONT face="Arial"><asp:textbox id="historia" runat="server" Width="152px" BorderStyle="None" Enabled="False"></asp:textbox></FONT></TD>
				</TR>
			</TABLE>
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
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="513px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Datos de Identificación del Alumno.</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table1" style="HEIGHT: 30px" height="128" cellSpacing="0" cellPadding="1" width="512" align="center" bgColor="lightgrey" border="1">
				<TR>
					<TD style="WIDTH: 166px; HEIGHT: 28px" bgColor="gainsboro"><FONT face="Arial">Nombre:</FONT></TD>
					<TD style="HEIGHT: 28px" bgColor="gainsboro"><asp:textbox id="T_Nombre" runat="server" Width="256px" MaxLength="20"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="T_Nombre" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px; HEIGHT: 32px" bgColor="#ffffff"><FONT face="Arial">Apellido:</FONT></TD>
					<TD style="HEIGHT: 32px" bgColor="#ffffff"><asp:textbox id="T_apellido" runat="server" Width="256px" MaxLength="20"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="T_apellido" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Fecha de 
							Nacimiento:</FONT></TD>
					<TD style="HEIGHT: 30px" bgColor="gainsboro"><asp:textbox id="T_fechan" runat="server" Width="200px" MaxLength="10" AutoPostBack="True"></asp:textbox>&nbsp;
						<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="T_fechan" ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:rangevalidator id="Val1" runat="server" Width="96px" Height="16px" ErrorMessage="Valor de Fecha" MaximumValue="01/01/2003" MinimumValue="01/01/1900" ControlToValidate="T_fechan" Type="Date" Enabled="False"></asp:rangevalidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px" bgColor="#ffffff"><FONT face="Arial">Ciudad&nbsp;de 
							Nacimiento:</FONT></TD>
					<TD bgColor="#ffffff"><asp:textbox id="T_lugarn" runat="server" Width="256px" MaxLength="12"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="T_lugarn" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px; HEIGHT: 20px" bgColor="gainsboro"><FONT face="Arial">Lugar de 
							Nacimiento:</FONT></TD>
					<TD style="HEIGHT: 20px" bgColor="gainsboro"><FONT face="Arial">
							<asp:textbox id="T_lugarP" runat="server" Width="256px" MaxLength="25"></asp:textbox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="T_lugarP"></asp:RequiredFieldValidator></FONT></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px; HEIGHT: 20px" bgColor="#ffffff"><FONT face="Arial">Edad:</FONT></TD>
					<TD style="HEIGHT: 20px" bgColor="#ffffff"><asp:textbox id="T_edad" runat="server" Width="168px" Enabled="False"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px; HEIGHT: 26px" bgColor="gainsboro"><FONT face="Arial">Sexo:</FONT></TD>
					<TD style="HEIGHT: 26px" bgColor="gainsboro"><asp:listbox id="L_sexo" runat="server" Width="152px" Height="24px">
							<asp:ListItem Value="1">Masculino</asp:ListItem>
							<asp:ListItem Value="0">Femenino</asp:ListItem>
						</asp:listbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="L_sexo" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px" bgColor="#ffffff"><FONT face="Arial">Nacionalidad:</FONT></TD>
					<TD bgColor="#ffffff"><asp:textbox id="T_Naciona" runat="server" Width="256px" MaxLength="12"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="T_Naciona" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px" bgColor="gainsboro"><FONT face="Arial">Dirección:</FONT></TD>
					<TD bgColor="gainsboro"><asp:textbox id="T_direcc" runat="server" Width="280px" Height="50px" TextMode="MultiLine" MaxLength="120"></asp:textbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="T_direcc" ErrorMessage="*"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 166px" bgColor="#ffffff"><FONT face="Arial">Teléfono Habitación:</FONT></TD>
					<TD bgColor="#ffffff"><asp:textbox id="T_tlf" runat="server" Width="312px" MaxLength="25"></asp:textbox></TD>
				</TR>
				<tr>
					<td bgColor="gainsboro" style="WIDTH: 166px"><FONT face="Arial">Cédula de Identidad:</FONT>
					</td>
					<td bgColor="gainsboro"><FONT face="Arial">
							<asp:textbox id="T_ci" runat="server" Width="224px" MaxLength="10"></asp:textbox></FONT>
					</td>
				</tr>
			</TABLE>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 512px; HEIGHT: 90px" height="90" cellSpacing="0" cellPadding="1" width="512" align="center" bgColor="lightgrey" border="1">
				<TR>
					<td style="WIDTH: 166px; HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial">Referido 
							por:</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="#ffffff"><FONT face="Arial"><asp:textbox id="T_ref" runat="server" Width="256px" MaxLength="40"></asp:textbox></FONT></td>
				</TR>
				<TR>
					<td style="WIDTH: 166px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Escuela:</FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial"><asp:textbox id="T_Escue" runat="server" Width="256px" MaxLength="24"></asp:textbox></FONT></td>
				</TR>
				<TR>
					<td style="WIDTH: 166px" bgColor="#ffffff"><FONT face="Arial">Grado:</FONT>
					</td>
					<td bgColor="#ffffff">
						<asp:TextBox id="T_grado" runat="server" Width="256px" MaxLength="12"></asp:TextBox></td>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table borderColor="#6a5acd" rules="none" align="center" border="2">
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="reset" runat="server" Width="80px" Text="Reset" BackColor="#8080FF" CausesValidation="False" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="Button1" runat="server" Width="80px" BackColor="#8080FF" Text="Continuar" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
			</table>
		</form>
		<table align="center">
			<tr>
				<td align="middle">
					<asp:Label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red"></asp:Label>
				</td>
			</tr>
		</table>
	</body>
</HTML>
