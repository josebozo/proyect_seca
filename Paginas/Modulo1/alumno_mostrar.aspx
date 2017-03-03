<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_mostrar.aspx.vb" Inherits="seca.alumno_mostrar"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>alumno_mostrar</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
			<tr>
				<td align="middle" bgColor="#87cefa"><FONT face="Arial">
						<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center"><FONT face="Arial" color="#330066">Para 
								selecionar el Alumno presione sobre el numero del expediente.</FONT>
					</FONT></P></td>
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
					<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="536px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Alumnos de la Institución.</asp:label></p>
				</td>
			</tr>
		</table>
		<form id="Form1" method="post" runat="server">
			<table align="center">
				<tr>
					<td align="middle">
						<asp:DataGrid id="Grid1" runat="server" Height="167px" Width="620px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="#DCDCDC"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:HyperLinkColumn Text="Expediente" DataNavigateUrlField="Expediente" DataNavigateUrlFormatString="alumno_mostrar2.aspx?cod={0}" DataTextField="Expediente" SortExpression="Expediente" HeaderText="Expediente"></asp:HyperLinkColumn>
								<asp:BoundColumn DataField="Apellido" SortExpression="Apellido" HeaderText="Apellido"></asp:BoundColumn>
								<asp:BoundColumn DataField="Nombre" SortExpression="Nombre" HeaderText="Nombre"></asp:BoundColumn>
							</Columns>
							<PagerStyle VerticalAlign="Top" HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" PageButtonCount="20" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
					</td>
				</tr>
				<tr>
					<td align="middle">
						<P><FONT face="Arial" color="#330066"><STRONG></STRONG></FONT>&nbsp;</P>
						<P><FONT face="Arial" color="#330066"><STRONG>Selecione al Alumno que desea verificar sus 
									expediente.</STRONG></FONT></P>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
