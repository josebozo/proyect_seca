<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Alumno_modificar1.aspx.vb" Inherits="seca.Alumno_modificar1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Alumno_modificar1</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
			<tr>
				<td align="middle" bgColor="#87cefa">
					<p class="MsoNormal" align="center"><FONT face="Arial">Para seleccionar el alumno 
							presione sobre el número del expediente.</FONT></p>
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
					<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="437px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Alumnos de la Institución</asp:label></p>
				</td>
			</tr>
		</table>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<form id="Form1" method="post" runat="server">
			<table align="center" style="WIDTH: 628px; HEIGHT: 483px">
				<tr>
					<td align="middle">
						<asp:DataGrid id="Grid1" runat="server" Height="167px" Width="620px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:HyperLinkColumn Text="Expediente" DataNavigateUrlField="cod" DataNavigateUrlFormatString="alumno_modificar2.aspx?cod={0}" DataTextField="cod" SortExpression="cod" HeaderText="Expediente"></asp:HyperLinkColumn>
								<asp:BoundColumn DataField="alumno" SortExpression="alumno" HeaderText="Nombre del Alumno"></asp:BoundColumn>
							</Columns>
							<PagerStyle VerticalAlign="Top" HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" PageButtonCount="20" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
					</td>
				</tr>
				<tr>
					<td align="middle">
						<P><FONT face="Arial" color="#330066"><STRONG></STRONG></FONT>&nbsp;</P>
						<P><FONT face="Arial" color="#330066"><STRONG>Seleccione al Alumno que 
									desea&nbsp;actualizar la Entrevista Social.</STRONG></FONT></P>
						<P><STRONG><FONT face="Arial" color="#330066">Debe estar consciente que este proceso 
									reiniziará los datos </FONT></STRONG>
						</P>
						<P><STRONG><FONT face="Arial" color="#330066">de la Entrevista Social para el alumno 
									seleccionado&nbsp;y deberán ser </FONT></STRONG>
						</P>
						<P><STRONG><FONT face="Arial" color="#330066">introducidos toda la información </FONT></STRONG>
							<STRONG><FONT face="Arial" color="#330066">para tener una verdadera </FONT></STRONG>
						</P>
						<P><STRONG><FONT face="Arial" color="#330066">actualización de los datos del caso.</FONT></STRONG></P>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
