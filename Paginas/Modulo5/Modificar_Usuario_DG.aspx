<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Modificar_Usuario_DG.aspx.vb" Inherits="seca.Modificar_Usuario_DG"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Modificar_Usuario_DG</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 52px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla en la cual 
							se podrá modificar los Usuarios del Sistema.</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Height="20px" Width="720px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 358px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="656px" BorderColor="SlateBlue" BorderStyle="Double" BackColor="SkyBlue" ForeColor="Black" Font-Names="Arial" Font-Bold="True"> Presione sobre el usuario que desee modificar</asp:label></p>
					</td>
				</tr>
			</table>
			<table align="center">
				<TR>
					<td><asp:datagrid id="Grid1" runat="server" AllowPaging="True" PageSize="12" Height="214px" Width="651px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:HyperLinkColumn Text="uname" DataNavigateUrlField="uname" DataNavigateUrlFormatString="Modificar_Usuario1.aspx?uname={0}" DataTextField="uname" SortExpression="uname" HeaderText="Nombre de Usuario" NavigateUrl="uname"></asp:HyperLinkColumn>
								<asp:BoundColumn DataField="nombre" SortExpression="nombre" HeaderText="Nombre"></asp:BoundColumn>
								<asp:BoundColumn DataField="apellido" SortExpression="apellido" HeaderText="Apellido"></asp:BoundColumn>
								<asp:BoundColumn DataField="ci" SortExpression="ci" HeaderText="C.I"></asp:BoundColumn>
								<asp:BoundColumn DataField="area" SortExpression="area" HeaderText="&#193;rea"></asp:BoundColumn>
								<asp:BoundColumn DataField="Perfil" SortExpression="Perfil" HeaderText="Perfil"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></td>
				</TR>
			</table>
		</form>
	</body>
</HTML>
