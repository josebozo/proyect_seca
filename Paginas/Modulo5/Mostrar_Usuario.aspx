<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Mostrar_Usuario.aspx.vb" Inherits="seca.Mostrar_Usuario" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Mostrar_Usuario</title>
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
						<p class="MsoNormal" align="center"><FONT face="Arial">Pantalla que nos presenta los 
								datos de todos los usuarios creados en el Sistema de Evaluación y Control de 
								Acceso</FONT></p>
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
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="636px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Usuarios Creados en el Sistema S.E.C.A.</asp:label></p>
					</td>
				</tr>
			</table>
			<table align="center">
				<TR>
					<td>
						<asp:datagrid id="Grid1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" GridLines="Vertical" CellPadding="3" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#999999" Width="637px" Height="177px" PageSize="12">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="nombre" SortExpression="nombre" HeaderText="Nombre"></asp:BoundColumn>
								<asp:BoundColumn DataField="apellido" SortExpression="apellido" HeaderText="Apellido"></asp:BoundColumn>
								<asp:BoundColumn DataField="area" SortExpression="area" HeaderText="&#193;rea"></asp:BoundColumn>
								<asp:BoundColumn DataField="Perfil" SortExpression="Perfil" HeaderText="Perfil"></asp:BoundColumn>
								<asp:BoundColumn DataField="uname" SortExpression="uname" HeaderText="Username"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:datagrid>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image2" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
		</form>
	</body>
</HTML>
