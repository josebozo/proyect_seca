<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Mostrar_eva.aspx.vb" Inherits="seca.Mostrar_eva"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Mostrar_eva</title>
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
							para&nbsp;Mostrar los formatos de avaluacion. Los campos necesarios u 
							obligatorios tendran un asterisco(*) a un lado cuando trate de enviar el 
							formulario.</p>
					</td>
				</tr>
			</table>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<table style="WIDTH: 553px; HEIGHT: 33px" align="center" runat="server" ID="Table2">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="563px" BackColor="SkyBlue" BorderStyle="Double" BorderColor="SlateBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Formato de Evaluación.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 559px; HEIGHT: 34px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
				<tr>
					<td style="WIDTH: 179px; HEIGHT: 30px" bgColor="gainsboro" colSpan="1" rowSpan="1"><FONT face="Arial">Evaluación 
							: </FONT>
					</td>
					<td style="HEIGHT: 30px" bgColor="gainsboro"><asp:dropdownlist id="L_eva" runat="server" Width="327px" Height="30px" AutoPostBack="True"></asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_eva"></asp:requiredfieldvalidator>
						<asp:listbox id="L_cod_eva" runat="server" Width="31px" Height="28px" Visible="False"></asp:listbox></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="300" align="center" border="0">
				<TR>
					<TD>
						<P><FONT face="Arial">
								<asp:DataGrid id="Grid1" runat="server" Width="704px" Height="66px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" AllowSorting="True" AutoGenerateColumns="False">
									<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
									<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
									<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
									<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
									<Columns>
										<asp:BoundColumn DataField="text" HeaderText="Pregunta"></asp:BoundColumn>
										<asp:BoundColumn DataField="grupo" HeaderText="Grupo"></asp:BoundColumn>
									</Columns>
									<PagerStyle VerticalAlign="Top" Visible="False" HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
								</asp:DataGrid></FONT></P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 21px" align="middle">
						<P><FONT face="Arial"><STRONG></STRONG></FONT>&nbsp;</P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 28px" align="middle"><FONT face="Arial">
							<P><FONT face="Arial">Para selecionar la evaluación&nbsp; a desplegar cambiar entre las 
									disponibles en la lista.</FONT>
						</FONT></P></TD>
				</TR>
				<TR>
					<TD align="middle"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
