<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Modificar_Area_DG.aspx.vb" Inherits="seca.Modificar_Area_DG"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Modificar_Area_DG</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" align="center"><FONT face="Arial">Pantalla que nos presenta todas 
								las áreas que han sido creadas en el Sistema y las cuales podrán ser 
								modificadas mediante este menú.</FONT></p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="690px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Presione sobre el área que desee modificar</asp:label></p>
					</td>
				</tr>
			</table>
			<table align="center">
				<tr>
					<td>
						<asp:datagrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Height="260px" Width="688px" AllowPaging="True" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" PageSize="12">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:HyperLinkColumn Text="Area" DataNavigateUrlField="cod_area" DataNavigateUrlFormatString="modificar_area.aspx?cod_area={0}" DataTextField="Area" HeaderText="&#193;rea" NavigateUrl="cod_area"></asp:HyperLinkColumn>
								<asp:BoundColumn DataField="Evaluacion" HeaderText="Evaluaci&#243;n"></asp:BoundColumn>
								<asp:BoundColumn DataField="Descripcion" HeaderText="Descripci&#243;n"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:datagrid>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
		</form>
	</body>
</HTML>
