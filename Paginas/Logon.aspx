<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Logon.aspx.vb" Inherits="seca.Logon" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Logon</title>
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#0099cc" background="../exportar/fondo menu.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<p></p>
			<P>&nbsp;</P>
			<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="101" border="0">
				<TR>
					<TD style="FONT-SIZE: 14px; COLOR: #ffffff; FONT-FAMILY: Arial" align="middle"><STRONG>Sección 
							de Autentificación</STRONG></TD>
				</TR>
			</TABLE>
			<p></p>
			<P>
				<TABLE id="Table1" cellSpacing="2" cellPadding="2" width="277" border="0">
					<TR>
						<TD style="WIDTH: 123px" vAlign="bottom" borderColor="#ffff00" align="left" colSpan="1" rowSpan="1"><asp:label id="Label1" runat="server" Width="52px" Height="8px" Font-Names="Arial" Font-Bold="True" Font-Size="Small" ForeColor="#FFFF80">Usuario</asp:label></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px">
							<P><INPUT id="txtUserName" style="WIDTH: 117px; HEIGHT: 22px" type="text" maxLength="8" size="14" name="txtUserName" runat="server" tabIndex="1"></P>
						</TD>
						<TD><ASP:REQUIREDFIELDVALIDATOR id="vUserName" runat="server" ErrorMessage="*" Display="Static" ControlToValidate="txtUserName"></ASP:REQUIREDFIELDVALIDATOR></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px" vAlign="bottom" align="left"><asp:label id="Label2" runat="server" Width="80px" Height="9px" Font-Names="Arial" Font-Bold="True" Font-Size="Small" ForeColor="#FFFF80">Contraseña</asp:label></TD>
						<TD></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px; HEIGHT: 37px"><INPUT id="txtUserPass" type="password" size="15" name="txtUserPass" runat="server" tabIndex="2"></TD>
						<TD style="HEIGHT: 37px"><ASP:REQUIREDFIELDVALIDATOR id="vUserPass" runat="server" ErrorMessage="*" Display="Static" ControlToValidate="txtUserPass"></ASP:REQUIREDFIELDVALIDATOR></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px; HEIGHT: 28px" vAlign="center" align="middle"></TD>
						<TD style="HEIGHT: 28px"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 123px" vAlign="center" align="middle"><INPUT id="cmdLogin" style="WIDTH: 112px; HEIGHT: 28px" type="submit" value="Entrar Sesión" name="cmdLogin" runat="server"></TD>
						<TD></TD>
					</TR>
				</TABLE>
			</P>
			<ASP:CHECKBOX id="chkPersistCookie" runat="server" Width="143px" Visible="False" autopostback="false"></ASP:CHECKBOX>
			<TABLE id="Table3" style="WIDTH: 90px; HEIGHT: 25px" cellSpacing="1" cellPadding="1" width="90" border="0">
				<TR>
					<TD><asp:label id="T_error" runat="server" Width="148px" Height="20px" Font-Names="Arial" Font-Bold="True" Font-Size="Smaller" ForeColor="Gold" Visible="False">Verifique Login y Pass</asp:label></TD>
				</TR>
			</TABLE>
			<P><asp:label id="lblMsg" runat="server" Font-Size="10" ForeColor="red" Font-Name="Verdana"></asp:label></P>
		</form>
	</body>
</HTML>
