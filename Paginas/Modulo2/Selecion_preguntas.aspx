<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Selecion_preguntas.aspx.vb" Inherits="seca.Selecion_preguntas"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Selecion_preguntas</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table2" style="Z-INDEX: 102; LEFT: 221px; WIDTH: 322px; POSITION: absolute; TOP: 181px; HEIGHT: 36px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Grupo:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro">
						<asp:textbox id="Textbox1" runat="server" Width="102px" Height="24px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<TABLE id="Table3" style="Z-INDEX: 106; LEFT: 223px; POSITION: absolute; TOP: 613px" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <INPUT style="WIDTH: 83px; HEIGHT: 24px; BACKGROUND-COLOR: #8080ff" type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="80px" BackColor="#8080FF" Text="Aceptar"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<table align="center" bgColor="#66ffff">
				<tr>
					<td align="middle">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para 
							inserción de nuevos alumnos los campos necesarios u obligatorios tendran un 
							asterisco(*) a un lado cuando trate de enviar el formulario.</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<table align="center" bgColor="#ccffcc">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center">Selecion de Preguntas</p>
					</td>
				</tr>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 322px; HEIGHT: 36px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Evaluacion:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Enabled="False" Height="24px" Width="213px">Examen Psicologico</asp:textbox></TD>
				</TR>
			</TABLE>
			<HR width="95.56%" color="#0066ff" SIZE="6" style="WIDTH: 95.56%; HEIGHT: 6px">
			<asp:DataGrid id="Grid1" style="Z-INDEX: 100; LEFT: 165px; POSITION: absolute; TOP: 225px" runat="server" Width="432px" Height="126px" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Vertical" ForeColor="Black" AutoGenerateColumns="False">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#000099"></SelectedItemStyle>
				<AlternatingItemStyle BackColor="#CCCCCC"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="Black"></HeaderStyle>
				<FooterStyle BackColor="#CCCCCC"></FooterStyle>
				<Columns>
					<asp:ButtonColumn Text="Seleccionar" ButtonType="PushButton" DataTextField="Numero de Pregunta" HeaderText="Numero de Pregunta" CommandName="Select"></asp:ButtonColumn>
					<asp:BoundColumn DataField="Pregunta" HeaderText="Pregunta"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999"></PagerStyle>
			</asp:DataGrid>
			<asp:ListBox id="ListBox1" style="Z-INDEX: 103; LEFT: 149px; POSITION: absolute; TOP: 481px" runat="server" Width="352px" Height="120px">
				<asp:ListItem></asp:ListItem>
				<asp:ListItem Value="Pregunta en Formato N&#186; 1, Grupo 1, N&#186;: 1005">Pregunta en Formato N&#186; 1, Grupo 1, N&#186;: 1005</asp:ListItem>
			</asp:ListBox>
			<asp:Label id="Label1" style="Z-INDEX: 104; LEFT: 315px; POSITION: absolute; TOP: 450px" runat="server" Width="156px" Height="24px" Font-Bold="True">Preguntas selecionadas</asp:Label>
			<asp:Button id="Button1" style="Z-INDEX: 105; LEFT: 519px; POSITION: absolute; TOP: 484px" runat="server" Width="148px" Height="29px" Text="Deselecionar  Pregunta"></asp:Button></form>
	</body>
</HTML>
