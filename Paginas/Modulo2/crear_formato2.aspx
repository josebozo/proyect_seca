<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Crear_formato2.aspx.vb" Inherits="seca.Crear_formato2" debug="True"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Crear_formato2</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" background="../../Imagenes/fondo cuadros1.jpg">
		<form id="Form1" method="post" runat="server">
			<asp:DropDownList id="DropDownList1" style="Z-INDEX: 101; LEFT: 21px; POSITION: absolute; TOP: 579px" runat="server" Visible="False"></asp:DropDownList>
			<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
							Pantalla para&nbsp;Crear El Formato de Evaluación&nbsp;en la Fundación. Los 
							campos necesarios u obligatorios tendran un asterisco(*) a un lado cuando trate 
							de enviar el formulario.</p>
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
			<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center">
							<asp:label id="Label1" runat="server" Width="474px" BorderStyle="Double" BorderColor="SlateBlue" BackColor="SkyBlue" ForeColor="Black" Font-Bold="True" Font-Names="Arial"> Grupos de Preguntas de la Evaluación</asp:label></p>
					</td>
				</tr>
			</table>
			<table align="center" style="FONT-FAMILY: Arial" borderColor="#0033cc" borderColorDark="#0000cc" borderColorLight="#0000ff" border="1">
				<TR>
					<td>
						Grupo de Preguntas:
						<asp:DropDownList id="L_grupo" runat="server" AutoPostBack="True" Width="42px">
							<asp:ListItem Value="1">1</asp:ListItem>
						</asp:DropDownList>
					</td>
					<td style="WIDTH: 330px">
						Descripción del Grupo:
						<asp:TextBox id="T_descrip" runat="server" MaxLength="149"></asp:TextBox>
					</td>
					<td>
						<asp:LinkButton id="LinkButton2" runat="server">Agregar Grupo</asp:LinkButton>
					</td>
				</TR>
			</table>
			<table align="center">
				<TR>
					<td>
						<asp:Label id="Label2" runat="server" Visible="False" Font-Bold="True" ForeColor="Red" Font-Names="Arial">Falta Descripción del grupo</asp:Label>
					</td>
				</TR>
			</table>
			<table align="center">
				<TR>
					<td>
						<asp:DataGrid id="Grid1" runat="server" Height="159px" Width="654px" BorderStyle="None" BorderColor="#999999" BackColor="White" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" AllowSorting="True" OnItemCommand="Grid_Command" AutoGenerateColumns="False">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#008A8C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="Gainsboro"></AlternatingItemStyle>
							<ItemStyle ForeColor="Black" BackColor="#EEEEEE"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#000084"></HeaderStyle>
							<FooterStyle ForeColor="Black" BackColor="#CCCCCC"></FooterStyle>
							<Columns>
								<asp:ButtonColumn Text="Select" DataTextField="Cod_pregunta" SortExpression="Cod_pregunta" HeaderText="Código de la Pregunta" CommandName="Select"></asp:ButtonColumn>
								<asp:BoundColumn DataField="Pregunta" SortExpression="Pregunta" HeaderText="Pregunta"></asp:BoundColumn>
								<asp:BoundColumn DataField="tipo" SortExpression="tipo" HeaderText="Tipo de Pregunta"></asp:BoundColumn>
								<asp:BoundColumn Visible="False" DataField="Cod_pregunta" HeaderText="Cod_pregunta"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:ListBox id="L_grupo_selec" runat="server" Height="81px" Width="548px" Rows="1000"></asp:ListBox>
					</td>
				</TR>
				<TR>
					<td align="middle">
						<asp:Button id="Button1" runat="server" Text="Quitar pregunta seleccionada "></asp:Button>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<TABLE id="Table1" borderColor="#0066ff" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="134px" Font-Bold="True" ForeColor="White" Text="Finalizar Formato" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
