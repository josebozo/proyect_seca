<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_insert3.aspx.vb" Inherits="seca.alumno_insert3"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>alumno_insert3</title>
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft FrontPage 5.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
			<tr>
				<td align="middle" bgColor="#87cefa">
					<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
						Pantalla para inserción de nuevos alumnos, los campos necesarios u obligatorios 
						tendrán un asterisco(*) a un lado cuando trate de enviar el formulario.</p>
				</td>
			</tr>
		</table>
		<p></p>
		<p></p>
		<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
			<tr>
				<td align="middle">
					<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Entrevista Social.</asp:label></p>
				</td>
			</tr>
		</table>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<form id="Form1" method="post" runat="server">
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table1" style="WIDTH: 322px; FONT-FAMILY: Arial; HEIGHT: 62px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
				<TR>
					<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Usuario:</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Width="213px" Height="24px" Enabled="False"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 97px">Expediente:</TD>
					<TD><asp:textbox id="T_exp" runat="server" Width="213px" Height="24px" Enabled="False"></asp:textbox></TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image2" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			</TABLE>
			<p></p>
			<p></p>
			<p><a name="parientes"></a></p>
			<table align="center" style="WIDTH: 485px; HEIGHT: 33px">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="485px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Constelación Familiar (Familiares que conviven con el menor)</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table2" style="WIDTH: 480px; HEIGHT: 201px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="480" align="center" border="1">
				<TR>
					<TD style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">CI: </FONT>
					</TD>
					<td bgColor="gainsboro"><asp:textbox id="T_ci" runat="server" Width="198px" Height="23px"></asp:textbox>
						<asp:requiredfieldvalidator id="Requiredfieldvalidator5" runat="server" ErrorMessage="*" ControlToValidate="T_ci"></asp:requiredfieldvalidator><asp:rangevalidator id="RangeValidator1" runat="server" MinimumValue="100000" MaximumValue="99999999" ControlToValidate="T_ci" ErrorMessage="Num" Type="Integer"></asp:rangevalidator></td>
				</TR>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Nombre: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_nombre" runat="server" Width="198px" Height="23px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="T_nombre" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</tr>
				<TR>
					<TD style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Apellido: </FONT>
					</TD>
					<td bgColor="gainsboro"><asp:textbox id="T_Apellido" runat="server" Width="198px" Height="23px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="T_Apellido" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</TR>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Edad: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_edad" runat="server" Width="83px" Height="23px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="T_edad" ErrorMessage="*"></asp:requiredfieldvalidator>
						<asp:rangevalidator id="Rangevalidator2" runat="server" ControlToValidate="T_edad" ErrorMessage="Num" Type="Integer" MaximumValue="200" MinimumValue="1"></asp:rangevalidator></td>
				</tr>
				<TR>
					<TD style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Sexo: </FONT>
					</TD>
					<td bgColor="gainsboro"><asp:dropdownlist id="L_sexo" runat="server" Width="124px" Height="35px">
							<asp:ListItem Value="0">Femenino</asp:ListItem>
							<asp:ListItem Value="1">Masculino</asp:ListItem>
						</asp:dropdownlist><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="L_sexo" ErrorMessage="*"></asp:requiredfieldvalidator></td>
				</TR>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Vínculo Familiar: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_vinculo" runat="server" Width="198px" Height="23px"></asp:textbox>
						<asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" ErrorMessage="*" ControlToValidate="T_vinculo"></asp:requiredfieldvalidator></td>
				</tr>
				<TR>
					<TD style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Nivel De Educación: </FONT>
					</TD>
					<td bgColor="gainsboro"><asp:textbox id="T_nivel" runat="server" Width="198px" Height="23px"></asp:textbox></td>
				</TR>
				<tr>
					<td style="WIDTH: 179px" bgColor="#ffffff"><FONT face="Arial">Profesión : </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_profe" runat="server" Width="198px" Height="23px"></asp:textbox></td>
				</tr>
				<TR>
					<TD style="WIDTH: 179px" bgColor="gainsboro"><FONT face="Arial">Ocupación: </FONT>
					</TD>
					<td bgColor="gainsboro"><asp:textbox id="T_ocupa" runat="server" Width="198px" Height="23px"></asp:textbox></td>
				</TR>
			</TABLE>
			<table style="WIDTH: 417px; HEIGHT: 122px" cellSpacing="0" cellPadding="0" rules="none" align="center" border="0" frame="void">
				<tr>
					<td style="HEIGHT: 33px" align="middle"><asp:button id="Button4" runat="server" Width="80px" CausesValidation="False" Text="Reset" BackColor="#8080FF" ForeColor="White"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Width="80px" Text="Agregar" BackColor="#8080FF" ForeColor="White"></asp:button></td>
				</tr>
				<tr>
					<td align="middle">
						<P><asp:listbox id="L_parientes" runat="server" Width="388px" Height="84px"></asp:listbox></P>
						<P><asp:button id="Button2" runat="server" Width="80px" Text="Elminar" BackColor="#8080FF" CausesValidation="False" ForeColor="White"></asp:button>&nbsp;</P>
					</td>
				</tr>
			</table>
			<p></p>
			<table align="center">
				<TR>
					<td>
						<asp:Image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<table style="WIDTH: 417px; HEIGHT: 28px" cellSpacing="0" cellPadding="0" rules="none" align="center" border="0" frame="void">
				<tr>
					<td style="HEIGHT: 33px" align="middle"><asp:button id="Button3" runat="server" Width="80px" Text="Continuar" BackColor="#8080FF" CausesValidation="False" ForeColor="White"></asp:button></td>
				</tr>
			</table>
			<table style="WIDTH: 417px; HEIGHT: 28px" cellSpacing="0" cellPadding="0" rules="none" align="center" border="0" frame="void">
				<tr>
					<td style="HEIGHT: 33px" align="middle">
						<asp:Label id="t_error" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:Label></td>
				</tr>
			</table>
			<asp:TextBox id="TextBox1" runat="server" Visible="False"></asp:TextBox>
			<asp:ListBox id="ListBox1" runat="server" Height="30px" Width="153px" Visible="False"></asp:ListBox>
		</form>
	</body>
</HTML>
