<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Mostrar_Area.aspx.vb" Inherits="seca.Mostrar_Area"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Mostrar_Area</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" align="center"><FONT face="Arial"> Pantalla que nos presenta los 
								datos de todas las áreas existentes&nbsp;en el Sistema de Evaluación y Control 
								de Acceso</FONT></p>
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
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="610px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Áreas Creadas en el Sistema S.E.C.A.</asp:label></p>
					</td>
				</tr>
			</table>
			<table align="center" bgColor="#66ffff">
				<tr>
				</tr>
			</table>
			<TABLE align="center" id="Table" width="683" style="WIDTH: 683px; HEIGHT: 358px">
				<TR>
					<TD align="middle">
						<P><asp:datagrid id="Grid1" runat="server" Width="614px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" GridLines="Vertical" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#999999" CellPadding="3" PageSize="12">
								<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
								<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
								<FooterStyle ForeColor="Black" BackColor="#E0E0E0"></FooterStyle>
								<Columns>
									<asp:BoundColumn DataField="area" SortExpression="area" HeaderText="&#193;rea"></asp:BoundColumn>
									<asp:BoundColumn DataField="Descripcion" SortExpression="Descripcion" HeaderText="Descripci&#243;n"></asp:BoundColumn>
									<asp:BoundColumn DataField="evalaci&#243;n" SortExpression="Evalaci&#243;n" HeaderText="Evaluaci&#243;n"></asp:BoundColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
							</asp:datagrid></P>
					</TD>
					</TD></TR>
			</TABLE>
		</form>
	</body>
</HTML>
