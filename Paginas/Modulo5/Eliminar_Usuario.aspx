<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Eliminar_Usuario.aspx.vb" Inherits="seca.Eliminar_Usuario"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Eliminar_Usuario</title>
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
							Pantalla para realizar la eliminación de los Usuarios que posean perfil para 
							trabajar en el Sistema S.E.C.A.</p>
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
			<table align="center" style="WIDTH: 521px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center">
							<asp:label id="Label3" runat="server" BackColor="SkyBlue" BorderStyle="Double" BorderColor="SlateBlue" Width="516px" Font-Bold="True" ForeColor="Black" Font-Names="Arial"> Selección de Usuarios a Eliminar</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table11" cellSpacing="1" cellPadding="1" width="300" align="center" border="0" bgColor="#ffffff">
				<TR>
					<TD style="HEIGHT: 162px">
						<asp:DataGrid id="Grid1" runat="server" Width="519px" Height="159px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" OnItemCommand="Grid_Command" AllowSorting="True" AllowPaging="True">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="uname" SortExpression="uname" HeaderText="Usuario"></asp:BoundColumn>
								<asp:BoundColumn DataField="nombre" SortExpression="nombre" HeaderText="Nombre"></asp:BoundColumn>
								<asp:BoundColumn DataField="Apellido" SortExpression="Apellido" HeaderText="Apellido"></asp:BoundColumn>
								<asp:BoundColumn DataField="ci" SortExpression="ci" HeaderText="C.I."></asp:BoundColumn>
								<asp:ButtonColumn Text="Seleccionar" HeaderText="Seleccione Aqu&#237;" CommandName="Select"></asp:ButtonColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 20px">
						<P><FONT face="Arial">Selecione el usuario a eliminar y presione el botón de Eliminar.</FONT></P>
					</TD>
				</TR>
				<TR>
					<TD align="middle">
						<P><FONT face="Arial"><STRONG></STRONG></FONT>&nbsp;</P>
						<P><FONT face="Arial"><STRONG>Usted ha seleccionado Eliminar este Usuario:</STRONG></FONT></P>
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="715" align="center" border="0" style="WIDTH: 715px; HEIGHT: 42px">
				<TR>
					<TD align="middle" style="WIDTH: 370px" bgColor="#ffffff"><STRONG><FONT face="Arial">Nombre 
								del Usuario:
								<asp:label id="Label1" runat="server" Width="279px"></asp:label></FONT></STRONG>
					</TD>
					<TD align="middle" style="WIDTH: 370px" bgColor="#ffffff"><STRONG><FONT face="Arial">Persona 
								Seleccionada:&nbsp; &nbsp;
								<asp:label id="Label2" runat="server" Width="279px"></asp:label></FONT></STRONG>
					</TD>
				</TR>
			</TABLE>
			<p>
			</p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image2" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
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
						<asp:Button id="Button1" runat="server" BackColor="Red" Height="22px" Width="101px" Text="Eliminar" ForeColor="White" Font-Bold="True"></asp:Button></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
