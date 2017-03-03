<%@ Page Language="vb" AutoEventWireup="false" Codebehind="editar_calendario2.aspx.vb" Inherits="seca.editar_calendario2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>editar_calendario2</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa"><FONT face="Arial">
							<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para la edición de nuevos citas de los alumnos, los campos necesarios 
							u obligatorios tendran un asterisco(*) a un lado cuando trate de enviar el 
							formulario.</FONT></P></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<table id="Table2" align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" id="Table3">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="536px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Actualizar Datos de Cita para Evaluación</asp:label></p>
					</td>
				</tr>
			</table>
			</TABLE>
			<table style="WIDTH: 535px; HEIGHT: 92px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial">Tipo de 
							Evaluación: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Height="30px" Width="277px"></asp:dropdownlist><asp:listbox id="L_cod_eva" runat="server" Height="22px" Width="23px" Visible="False"></asp:listbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="L_eva" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 5px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Número 
								del Expediente del alumno</SPAN>: </FONT>
					</td>
					<td style="HEIGHT: 5px" bgColor="#ffffff">
						<P><asp:dropdownlist id="L_alum" runat="server" Height="30px" Width="276px"></asp:dropdownlist><asp:listbox id="L_cod_alum" runat="server" Height="22px" Width="24px" Visible="False"></asp:listbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="L_alum" ErrorMessage="*"></asp:requiredfieldvalidator></P>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle" bgColor="gainsboro"><FONT face="Arial">Fecha de Evaluacion </FONT>
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 23px" align="middle" bgColor="gainsboro"><asp:calendar id="Calendar1" runat="server" Height="182px" Width="261px" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" CellSpacing="1" ForeColor="Black" NextPrevFormat="ShortMonth" BorderStyle="Solid" BackColor="White">
							<TodayDayStyle ForeColor="White" BackColor="#999999"></TodayDayStyle>
							<DayStyle BackColor="#CCCCCC"></DayStyle>
							<NextPrevStyle Font-Size="8pt" Font-Bold="True" ForeColor="White"></NextPrevStyle>
							<DayHeaderStyle Font-Size="8pt" Font-Bold="True" Height="8pt" ForeColor="#333333"></DayHeaderStyle>
							<SelectedDayStyle ForeColor="White" BackColor="#333399"></SelectedDayStyle>
							<TitleStyle Font-Size="12pt" Font-Bold="True" Height="12pt" ForeColor="White" BackColor="#333399"></TitleStyle>
							<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
						</asp:calendar></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="92px" ForeColor="White" BackColor="#8080FF" Font-Bold="True" Text="Reset"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" ForeColor="White" BackColor="#8080FF" Font-Bold="True" Text="Guardar" EnableViewState="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="80px" ForeColor="White" BackColor="#8080FF" Font-Bold="True" Text="Nueva Cita" EnableViewState="False"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<table align="center">
				<tr>
					<td align="middle"><asp:label id="t_error" runat="server" Height="46px" Width="744px" ForeColor="Red"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
