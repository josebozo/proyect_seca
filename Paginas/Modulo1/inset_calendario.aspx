<%@ Page language="VB" AutoEventWireup="false" Codebehind="inset_calendario.aspx.vb" Inherits="seca.inset_calendario" buffer="True" smartNavigation="True" enableViewState="True"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>inset_calendario</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa"><FONT face="Arial">
							<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para la inserción de nuevos alumnos los campos necesarios u 
							obligatorios tendran un asterisco(*) a un lado cuando trate de enviar el 
							formulario.</FONT></P>
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
			<table align="center" id="Table2">
				<TR>
					<td>
						<asp:Image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" id="Table3">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="437px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Datos de Cita para Evaluación</asp:label></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<p></p>
			<p></p>
			<table borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" style="WIDTH: 535px; HEIGHT: 92px" id="Table6">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro"><FONT face="Arial"> Tipo de 
							Evaluación: </FONT>
					</td>
					<td bgColor="gainsboro" style="HEIGHT: 30px">
						<asp:DropDownList id="L_eva" runat="server" Width="277px" Height="30px"></asp:DropDownList>
						<asp:ListBox id="L_cod_eva" runat="server" Height="22px" Width="23px" Visible="False"></asp:ListBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_eva"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 5px" bgColor="#ffffff"><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: ES-VE; mso-fareast-language: ES-VE; mso-bidi-language: AR-SA">Número 
								del Expediente del alumno</SPAN>: </FONT>
					</td>
					<td bgColor="#ffffff" style="HEIGHT: 5px">
						<P>
							<asp:DropDownList id="L_alum" runat="server" Height="30px" Width="276px"></asp:DropDownList>
							<asp:ListBox id="L_cod_alum" runat="server" Height="22px" Width="24px" Visible="False"></asp:ListBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="L_alum"></asp:RequiredFieldValidator></P>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table align="center" id="Table7">
				<tr>
					<td bgColor="gainsboro" align="middle"><FONT face="Arial">Fecha de Evaluación </FONT>
					</td>
				</tr>
				<tr>
					<td bgColor="gainsboro" style="HEIGHT: 23px" align="middle">
						<asp:Calendar id="Calendar1" runat="server" Height="182px" Width="261px" BackColor="White" BorderStyle="Solid" NextPrevFormat="ShortMonth" ForeColor="Black" CellSpacing="1" Font-Size="9pt" Font-Names="Verdana" BorderColor="Black">
							<TodayDayStyle ForeColor="White" BackColor="#999999"></TodayDayStyle>
							<DayStyle BackColor="#CCCCCC"></DayStyle>
							<NextPrevStyle Font-Size="8pt" Font-Bold="True" ForeColor="White"></NextPrevStyle>
							<DayHeaderStyle Font-Size="8pt" Font-Bold="True" Height="8pt" ForeColor="#333333"></DayHeaderStyle>
							<SelectedDayStyle ForeColor="White" BackColor="#333399"></SelectedDayStyle>
							<TitleStyle Font-Size="12pt" Font-Bold="True" Height="12pt" ForeColor="White" BackColor="#333399"></TitleStyle>
							<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
						</asp:Calendar></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Button id="Button2" runat="server" Width="92px" BackColor="#8080FF" Text="Reset" ForeColor="White" Font-Bold="True"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" BackColor="#8080FF" Text="Guardar" EnableViewState="False" ForeColor="White" Font-Bold="True"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="80px" BackColor="#8080FF" Text="Nueva Cita" EnableViewState="False" ForeColor="White" Font-Bold="True"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<table align="center" id="Table8">
				<tr>
					<td align="middle">
						<asp:Label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red" Font-Names="Arial"></asp:Label>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
