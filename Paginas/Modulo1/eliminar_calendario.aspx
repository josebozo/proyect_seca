<%@ Page Language="vb" AutoEventWireup="false" Codebehind="eliminar_calendario.aspx.vb" Inherits="seca.mostrar_calendario" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>mostrar_calendario</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa"><FONT face="Arial">
							<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla que nos muestras las citas a realizar y en la cual podrán ser 
							eliminadas con tan solo seleccionarlas y presionar el botón de eliminar.</FONT></P></td>
				</tr>
			</table>
			<p></p>
			<p></p>
			</TABLE>
			<p></p>
			<p></p>
			<table id="Table2" align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></td>
				</TR>
			</table>
			<table id="Table3" align="center">
				<tr>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			</TABLE>
			<TABLE id="Table4" cellSpacing="1" cellPadding="1" width="300" align="center" bgColor="#ffffff" border="0">
				<TR>
					<TD style="HEIGHT: 54px" align="middle"><FONT face="Arial"><STRONG>
								<P style="FONT-FAMILY: Arial" align="center"><asp:label id="Label5" runat="server" Width="437px" BorderColor="SlateBlue" BorderStyle="Double" BackColor="SkyBlue" Font-Bold="True" ForeColor="Black" Font-Names="Arial"> Selección de cita a eliminar</asp:label></P>
							</STRONG></FONT>
					</TD>
				</TR>
				<TR>
					<TD><asp:datagrid id="Grid1" runat="server" AllowPaging="True" AllowSorting="True" OnItemCommand="Grid_Command" Width="606px" Height="66px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="DodgerBlue"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="Nombre del Alumno" SortExpression="Nombre del Alumno" HeaderText="Nombre del Alumno"></asp:BoundColumn>
								<asp:BoundColumn DataField="Evaluacion" SortExpression="Evaluacion" HeaderText="Evaluaci&#243;n"></asp:BoundColumn>
								<asp:BoundColumn DataField="Fecha de la Evaluacion" SortExpression="Fecha de la Evaluacion" HeaderText="Fecha de la Evaluaci&#243;n"></asp:BoundColumn>
								<asp:BoundColumn Visible="False" DataField="cod" SortExpression="cod" HeaderText="cod"></asp:BoundColumn>
								<asp:ButtonColumn Text="Selecionar" CommandName="Select"></asp:ButtonColumn>
							</Columns>
							<PagerStyle VerticalAlign="Top" HorizontalAlign="Center" ForeColor="Black" BackColor="SkyBlue" Mode="NumericPages"></PagerStyle>
						</asp:datagrid></TD>
				</TR>
				<TR>
					<TD>
						<P><FONT face="Arial">Seleccione la cita a eliminar, luego presione el botón de 
								eliminar</FONT></P>
					</TD>
				</TR>
				<TR>
					<TD align="middle">
						<P><FONT face="Arial"><STRONG></STRONG></FONT>&nbsp;</P>
						<P><FONT face="Arial"><STRONG>Usted ha seleccionado eliminar esta cita:
									<asp:label id="Label4" runat="server"></asp:label></STRONG></FONT></P>
					</TD>
				</TR>
			</TABLE>
			<TABLE id="Table1" style="WIDTH: 715px; HEIGHT: 42px" cellSpacing="1" cellPadding="1" width="715" align="center" border="0">
				<TR>
					<TD style="WIDTH: 268px" align="middle" bgColor="#ffffff"><STRONG><FONT face="Arial">Alumno:
								<asp:label id="Label1" runat="server" Width="279px"></asp:label></FONT></STRONG></TD>
					<TD align="middle" bgColor="#ffffff"><STRONG><FONT face="Arial"><SPAN style="FONT-SIZE: 12pt; FONT-FAMILY: Arial; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Á</SPAN>rea:
								<asp:label id="Label2" runat="server" Width="220px"></asp:label></FONT></STRONG></TD>
					<TD align="middle" bgColor="#ffffff"><STRONG><FONT face="Arial">Fecha:
								<asp:label id="Label3" runat="server" Width="136px"></asp:label></FONT></STRONG></TD>
				</TR>
			</TABLE>
			<p></p>
			<HR width="95.56%" color="#0066ff" SIZE="4">
			<p></p>
			<p></p>
			<TABLE cellSpacing="1" cellPadding="1" width="300" align="center" border="0">
				<tr>
					<td align="middle"><asp:button id="Button1" runat="server" Width="101px" Height="22px" BackColor="Red" Font-Bold="True" ForeColor="White" Text="Eliminar!"></asp:button></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
