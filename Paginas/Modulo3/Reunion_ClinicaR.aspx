<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Reunion_ClinicaR.aspx.vb" Inherits="seca.Reporte_Area" %>
<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Reporte_Area</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 548px; HEIGHT: 78px" align="center" bgColor="#0066ff" border="2">
				<tr>
					<td align="middle" bgColor="#87cefa">
						<p class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla para 
							mostrar el reporte de las Reuniones Clínicas, realizadas por los Especialistas.</p>
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
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<table align="center">
				<TR>
					<td><asp:image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="720px" Height="20px"></asp:image></td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table style="WIDTH: 358px; HEIGHT: 33px" align="center">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="529px" Height="30px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Reunión Clínica</asp:label></p>
					</td>
				</tr>
			</table>
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="528" align="center" border="0" style="WIDTH: 528px; HEIGHT: 45px">
				<TR>
				</TR>
				<TR>
					<TD style="WIDTH: 152px; HEIGHT: 31px" borderColor="slateblue" align="middle" bgColor="skyblue" colSpan="1" rowSpan="1"><STRONG>Alumno:</STRONG></TD>
					<td bgColor="#87ceeb">
						<asp:dropdownlist id="L_Alumno" runat="server" Width="211px" AutoPostBack="True"></asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="L_Alumno"></asp:RequiredFieldValidator><asp:listbox id="L_alumnoimagen" runat="server" Width="78px" Height="23px" Visible="False"></asp:listbox></td>
				</TR>
				<TR>
					<TD style="WIDTH: 152px; HEIGHT: 31px" borderColor="slateblue" align="middle" colSpan="1" rowSpan="1"><STRONG>Evaluación:</STRONG></TD>
					<td><asp:dropdownlist id="L_Evaluacion" runat="server" Width="211px" AutoPostBack="True"></asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="L_Evaluacion"></asp:RequiredFieldValidator><asp:listbox id="L_Evaluacionimagen" runat="server" Width="77px" Height="23px" Visible="False"></asp:listbox></td>
				</TR>
			</TABLE>
			<table style="WIDTH: 323px; HEIGHT: 416px" align="center">
				<TR>
				</TR>
				<TR>
					<td>
						<P>
							<CR:CrystalReportViewer id=CrystalReportViewer1 runat="server" Height="50px" Width="350px" DisplayGroupTree="False" ReportSource='<%# "C:\Inetpub\wwwroot\seca\Paginas\Modulo3\Reunion_ClinicaR.rpt" %>' Visible="False" HasZoomFactorList="False" HyperlinkTarget="main" SeparatePages="False">
							</CR:CrystalReportViewer>
						</P>
					</td>
				</TR>
				<TR>
					<TD align="middle">
						<P><FONT face="Arial"> Seleccione sobre el alumno para poder ver las evaluaciones 
								realizadas por los especialistas, luego seleccione la evaluación para poder</FONT>
						</P>
					</TD>
					<P></P>
				</TR>
			</table>
			<asp:Button id="Button1" style="Z-INDEX: 101; LEFT: 292px; POSITION: absolute; TOP: 1419px" runat="server" Text="Button"></asp:Button>
		</form>
	</body>
</HTML>
