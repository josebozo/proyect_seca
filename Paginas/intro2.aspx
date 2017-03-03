<%@ Page Language="vb" AutoEventWireup="false" Codebehind="intro2.aspx.vb" Inherits="seca.intro2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Cronograma</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 668px; HEIGHT: 56px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" align="center"><FONT face="Arial">Pantalla que nos presenta las 
								citas&nbsp;que se encuentran pendientes por realizar evaluación</FONT></p>
					</td>
				</tr>
			</table>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Height="20px" Width="720px" ImageUrl="../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<P></P>
			<P></P>
			<table style="WIDTH: 358px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="643px" BorderStyle="Double" BorderColor="SlateBlue" BackColor="SkyBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Citas Pendientes por realizar Evaluación.</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" align="center" border="0">
				<TR>
					<TD><asp:datagrid id="Grid1" runat="server" Height="66px" Width="640px" BorderStyle="None" BorderColor="#0000C0" BackColor="White" PageSize="12" AllowPaging="True" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowSorting="True">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Blue" BorderColor="White" BackColor="#336699"></FooterStyle>
							<PagerStyle VerticalAlign="Top" BorderColor="Transparent" HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
			</TABLE>
			<P></P>
			<table align="center">
				<TR>
					<td><asp:image id="Image2" runat="server" Height="20px" Width="720px" ImageUrl="../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<P></P>
			<TABLE id="Table3" style="WIDTH: 498px; HEIGHT: 42px" cellSpacing="1" cellPadding="1" width="498" align="center" border="0">
				</TD></TR>
				<TR>
					<TD align="middle" background="skyblue" bgColor="skyblue"><FONT face="Arial"><STRONG>De ser 
								necesario, por favor seleccione el número para pasar a la página indicada.</STRONG></FONT></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
