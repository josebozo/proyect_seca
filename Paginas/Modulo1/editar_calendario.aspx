<%@ Page Language="vb" AutoEventWireup="false" Codebehind="editar_calendario.aspx.vb" Inherits="seca.editar_calendario"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>editar_calendario</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa"><FONT face="Arial">
							<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para la edición de nuevos citas de los alumnos.</FONT></P></td>
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
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="669px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Evaluaciones Pendientes</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table" width="830" style="WIDTH: 830px; HEIGHT: 308px">
				<TR>
					<TD align="middle">
						<P>
							<asp:DataGrid id="Grid1" runat="server" Width="677px" CellPadding="3" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" GridLines="Vertical" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
								<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
								<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
								<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
								<Columns>
									<asp:BoundColumn DataField="Nombre del Alumno" SortExpression="Nombre del Alumno" HeaderText="Nombre de la Alumno"></asp:BoundColumn>
									<asp:BoundColumn DataField="Evaluacion" SortExpression="Evaluacion" HeaderText="Evaluaci&#243;n"></asp:BoundColumn>
									<asp:HyperLinkColumn DataNavigateUrlField="cod" DataNavigateUrlFormatString="editar_calendario2.aspx?cod={0}" DataTextField="Fecha de la Evaluacion" SortExpression="Fecha de la Evaluacion" HeaderText="Fecha de la Evaluaci&#243;n" NavigateUrl="cod"></asp:HyperLinkColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
							</asp:DataGrid></P>
					</TD>
					</TD>
				</TR>
			</TABLE>
			<p></p>
		</form>
	</body>
</HTML>
