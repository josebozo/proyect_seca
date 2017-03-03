<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Seguimiento_ModificarDG.aspx.vb" Inherits="seca.Seguimiento_ModificarDG"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Seguimiento_ModificarDG</title>
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
							Pantalla para Modificar las Observaciones que se le han realizado a los 
							alumnos&nbsp;en el Sistema S.E.C.A.</p>
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
				<TR>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center">
							<asp:label id="Label3" runat="server" BackColor="SkyBlue" BorderStyle="Double" BorderColor="SlateBlue" Width="673px" Font-Bold="True" ForeColor="Black" Font-Names="Arial"> Seleccione el Alumno a Modificar.</asp:label></p>
					</td>
				</TR>
			</table>
			<table align="center">
				<TR>
					<td>
						<asp:DataGrid id="Grid1" runat="server" Height="245px" Width="670px" BorderColor="#999999" BorderStyle="None" BackColor="White" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" AllowPaging="True">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:HyperLinkColumn Text="Apellido" Target="main" DataNavigateUrlField="cod_alumno" DataNavigateUrlFormatString="seguimiento_modificar.aspx?cod_alumno={0}" DataTextField="Apellido" HeaderText="Apellido" NavigateUrl="cod_alumno"></asp:HyperLinkColumn>
								<asp:BoundColumn DataField="Nombre" HeaderText="Nombre"></asp:BoundColumn>
								<asp:BoundColumn DataField="Area" HeaderText="&#193;rea"></asp:BoundColumn>
								<asp:BoundColumn DataField="fecha" HeaderText="Fecha" FooterText="Fecha"></asp:BoundColumn>
								<asp:BoundColumn DataField="observacion" HeaderText="Observaciones"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
					</td>
				</TR>
			</table>
		</form>
	</body>
</HTML>
