<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mostrar_eva2.aspx.vb" Inherits="seca.mostrar_eva2" smartNavigation="False"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>mostrar_eva2</title>
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="WIDTH: 816px; HEIGHT: 131px" cellSpacing="1" cellPadding="1" width="816" align="center" border="0">
				<TR>
					<TD style="WIDTH: 121px"><IMG style="WIDTH: 134px; HEIGHT: 88px" height="88" alt="" src="../../Imagenes/Logo FunpaliceF.gif" width="134"></TD>
					<TD style="WIDTH: 481px" align="middle"><asp:label id="Label1" runat="server" Font-Names="Arial" Font-Bold="True" ForeColor="Teal" Font-Size="Large">Reporte de Evaluación</asp:label></TD>
					<TD vAlign="bottom"><asp:label id="Label2" runat="server" Font-Names="Arial" ForeColor="Blue">Label</asp:label></TD>
				</TR>
			</TABLE>
			<HR style="WIDTH: 100%" width="100%" color="#ff0000" noShade SIZE="3">
			<TABLE id="Table112" style="WIDTH: 319px; HEIGHT: 45px" cellSpacing="1" cellPadding="1" align="center" border="0">
				<TR>
					<TD style="WIDTH: 89px"><asp:label id="Label13" runat="server" Font-Names="Arial" Font-Bold="True" ForeColor="DarkBlue" Font-Size="X-Small">Alumno:</asp:label></TD>
					<TD><asp:label id="l_alumno" runat="server" Font-Names="Arial" ForeColor="Blue" Font-Size="X-Small">Label</asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 89px"><asp:label id="Label15" runat="server" Font-Names="Arial" Font-Bold="True" ForeColor="DarkBlue" Font-Size="X-Small">Evaluación:</asp:label></TD>
					<TD><asp:label id="L_eva" runat="server" Font-Names="Arial" ForeColor="Blue" Font-Size="X-Small">Label</asp:label></TD>
				</TR>
			</TABLE>
			<p></p>
			<HR style="WIDTH: 50.66%; HEIGHT: 3px" align="left" width="50.66%" color="navy" noShade SIZE="3">
			<asp:panel id="Panel2" runat="server" Width="202px">
				<TABLE id="Table12" style="WIDTH: 420px; HEIGHT: 25px" align="left">
					<TR>
						<TD style="WIDTH: 58px">
							<asp:Label id="Label17" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial">Grupo:</asp:Label></TD>
						<TD style="WIDTH: 34px">
							<asp:Label id="L_grupo1" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label></TD>
						<TD style="WIDTH: 89px">
							<asp:Label id="Label19" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial">Descripción:</asp:Label></TD>
						<TD>
							<asp:Label id="L_descri_grup1" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<HR align="left" width="50.66%" color="navy" noShade SIZE="3">
			<asp:panel id="Panel1" runat="server" HorizontalAlign="Center" Visible="false">
				<TABLE id="Table2" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="L" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_10" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_10" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_15" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_11" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_16" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_12" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_17" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_13" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_18" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_14" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_19" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel><asp:panel id="Panel3" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table22" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label3" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_20" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_20" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_25" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_21" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_26" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_22" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_27" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_23" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_28" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_24" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_29" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel4" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table32" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label5" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_30" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_30" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_35" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_31" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_36" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_32" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_37" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_33" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_38" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_34" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_39" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel5" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table42" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label4" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_40" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_40" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_45" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_41" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_46" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_42" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_47" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_43" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_48" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_44" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_49" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel6" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table52" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label6" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_50" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_50" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_55" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_51" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_56" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_52" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_57" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_53" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_58" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_54" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_59" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel7" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table62" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label7" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_60" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_60" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_65" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_61" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_66" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_62" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_67" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_63" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_68" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_64" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_69" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel8" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table72" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label8" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_70" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_70" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_75" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_71" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_76" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_72" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_77" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_73" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_78" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_74" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_79" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel9" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table82" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label9" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_80" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_80" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_85" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_81" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_86" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_82" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_87" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_83" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_88" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_84" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_89" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel10" runat="server" Height="110px" HorizontalAlign="center" Visible="False">
				<TABLE id="Table92" style="WIDTH: 599px" cellSpacing="1" cellPadding="1" border="0">
					<TR>
						<TD style="WIDTH: 205px">
							<asp:Label id="Label10" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Pregunta:</asp:Label></TD>
						<TD>
							<asp:Label id="P_90" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_90" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_95" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_91" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_96" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_92" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_97" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_93" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_98" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="L_94" runat="server" Font-Size="X-Small" ForeColor="DarkBlue" Font-Bold="True" Font-Names="Arial" Visible="False" Font-Underline="True">Label</asp:Label><FONT face="Arial" color="navy" size="4"></FONT></TD>
						<TD>
							<asp:Label id="L_99" runat="server" Font-Size="X-Small" ForeColor="Blue" Font-Names="Arial" Visible="False">Label</asp:Label></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<HR style="WIDTH: 50.66%; HEIGHT: 3px" align="center" width="50.66%" color="navy" noShade SIZE="3">
			<TABLE id="Table1121" style="WIDTH: 519px; HEIGHT: 45px" cellSpacing="1" cellPadding="1" align="center" border="0">
				<TR>
					<TD style="WIDTH: 172px"><asp:label id="Label11" runat="server" Font-Names="Arial" Font-Bold="True" ForeColor="DarkBlue" Font-Size="X-Small">Observaciones del Grupo:</asp:label></TD>
					<TD><asp:label id="grup_obser" runat="server" Font-Names="Arial" ForeColor="Blue" Font-Size="X-Small"></asp:label></TD>
				</TR>
			</TABLE>
			<HR style="WIDTH: 50.66%; HEIGHT: 3px" align="center" width="50.66%" color="navy" noShade SIZE="3">
			<TABLE id="Table11121" cellSpacing="1" cellPadding="1" align="center" border="0">
				<TR>
					<TD align="middle">
						<asp:Button id="Button1" runat="server" Text="Siguiente Grupo"></asp:Button></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
