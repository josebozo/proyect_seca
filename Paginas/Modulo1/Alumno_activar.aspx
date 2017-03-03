<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Alumno_activar.aspx.vb" Inherits="seca.Alumno_activar"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Alumno_activar</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla que muestra los alumnos tratados en la Institución y los cuales podrán 
							ser activados cuando la Directora así lo requiera..</p>
					</td>
				</tr>
			</table>
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
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label3" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Selección de Alumnos para ser activados.</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table11" cellSpacing="1" cellPadding="1" width="300" align="center" border="0" bgColor="#ffffff">
				<TR>
					<TD><asp:datagrid id="Grid1" runat="server" AutoGenerateColumns="False" GridLines="Vertical" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#999999" Height="66px" Width="482px" OnItemCommand="Grid_Command" AllowSorting="True" AllowPaging="True" PageSize="15">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="Cod" SortExpression="Cod" HeaderText="Expediente"></asp:BoundColumn>
								<asp:BoundColumn DataField="Alumno" SortExpression="Alumno" HeaderText="Alumno"></asp:BoundColumn>
								<asp:ButtonColumn Text="Selecionar" CommandName="Select"></asp:ButtonColumn>
							</Columns>
							<PagerStyle VerticalAlign="Top" HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
				<TR>
					<TD>
						<P><FONT face="Arial">Selecione el alumno a desactivar, luego presione el botón de 
								Desactivar.</FONT></P>
					</TD>
				</TR>
				<TR>
					<TD align="middle">
						<P><FONT face="Arial"><STRONG></STRONG></FONT>&nbsp;</P>
						<P><FONT face="Arial"><STRONG>Usted ha seleccionado Activar este alumno:</STRONG></FONT></P>
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="715" align="center" border="0" style="WIDTH: 715px; HEIGHT: 42px">
				<TR>
					<TD align="middle" style="WIDTH: 370px" bgColor="#ffffff"><STRONG><FONT face="Arial">Expediente:
								<asp:label id="Label1" runat="server" Width="279px"></asp:label></FONT></STRONG>
					</TD>
					<TD align="middle" style="WIDTH: 370px" bgColor="#ffffff"><STRONG><FONT face="Arial">Alumno:&nbsp; 
								&nbsp;
								<asp:label id="Label2" runat="server" Width="279px"></asp:label></FONT></STRONG>
					</TD>
				</TR>
			</TABLE>
			<p>
			</p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p>
			</p>
			<p>
			</p>
			<TABLE cellSpacing="1" cellPadding="1" width="300" align="center" border="0">
				<tr>
					<td align="middle">
						<asp:Button id="Button1" runat="server" BackColor="LightGreen" Height="22px" Width="101px" Text="Activar!" ForeColor="Black" Font-Bold="True"></asp:Button></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
