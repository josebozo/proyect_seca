<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Seguimiento_Modificar.aspx.vb" Inherits="seca.Seguimiento_Modificar1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Seguimiento_Modificar</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para 
							seleccionar el alumno al cual se le desea modificar las observaciones.</p>
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
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 358px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="529px" Height="30px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Seguimiento de Alumnos.</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="300" align="center" border="0">
				<TR>
				</TR>
				<TR>
					<TD style="HEIGHT: 31px" borderColor="slateblue" align="middle" bgColor="skyblue" colSpan="1" rowSpan="1"><STRONG>Alumno:</STRONG>
						<asp:dropdownlist id="L_Alumno" runat="server" Width="211px" AutoPostBack="True"></asp:dropdownlist><asp:listbox id="L_alumnoimagen" runat="server" Width="72px" Height="23px" Visible="False"></asp:listbox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_Alumno"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD>
						<P><FONT face="Arial"><asp:datagrid id="Grid1" runat="server" Width="520px" Height="66px" BackColor="White" BorderColor="SlateBlue" AutoGenerateColumns="False" AllowSorting="True" GridLines="Vertical" CellPadding="3" BorderWidth="2px">
									<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
									<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
									<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
									<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
									<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
									<Columns>
										<asp:BoundColumn DataField="Fecha" HeaderText="Fecha"></asp:BoundColumn>
										<asp:BoundColumn DataField="Area" HeaderText="Area"></asp:BoundColumn>
										<asp:HyperLinkColumn DataNavigateUrlField="cod_obser" DataNavigateUrlFormatString="seguimiento_modificar2.aspx?cod_obser={0}" DataTextField="observacion" HeaderText="Observacion" NavigateUrl="observacion"></asp:HyperLinkColumn>
									</Columns>
									<PagerStyle VerticalAlign="Top" Visible="False" HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
								</asp:datagrid></FONT></P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 21px" align="middle">
						<P><FONT face="Arial"><STRONG></STRONG></FONT>&nbsp;</P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 28px" align="middle"><FONT face="Arial">
							<P><FONT face="Arial">Seleccione sobre el alumno para poder ver&nbsp;las observaciones, 
									luego seleccione el campo de observación que desee modificar para continuar con 
									la siguiente pantalla..</FONT>
						</FONT></P></TD>
				</TR>
				<TR>
					<TD align="middle"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
