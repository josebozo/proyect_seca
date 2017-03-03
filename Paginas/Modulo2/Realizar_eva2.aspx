<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Realizar_eva2.aspx.vb" Inherits="seca.Realizar_eva2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Realizar_eva2</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server">
<TABLE style="WIDTH: 548px; HEIGHT: 39px" align="center" bgColor="#0066ff" border="2">
					<TR>
						<TD align="middle" bgColor="#87cefa">
							<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center">Pantalla 
								para&nbsp;Realizar&nbsp;Evaluaciones&nbsp;en la Fundación.
							</P>
						</TD>
					</TR>
				</TABLE>
<P></P>
<P></P>
<P></P>
<P></P>
<P></P></TABLE>
<P></P>
<P></P>
<TABLE align="center">
					<TR>
						<TD>
							<asp:image id="Image1" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></TD>
					</TR>
				</TABLE>
<P></P>
<P></P>
<P></P></TABLE>
<TABLE style="WIDTH: 485px; HEIGHT: 33px" align="center">
					<TR>
						<TD align="middle">
							<P style="FONT-FAMILY: Arial" align="center">
								<asp:label id="Label1" runat="server" Width="474px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BorderColor="SlateBlue" BorderStyle="Double" BackColor="SkyBlue"> Realizar Evaluación.</asp:label></P>
						</TD>
					</TR>
				</TABLE>
<P></P>
<P></P>
<TABLE id="Table1" style="WIDTH: 322px; FONT-FAMILY: Arial; HEIGHT: 62px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" width="322" align="center" border="1">
					<TR>
						<TD style="WIDTH: 97px; HEIGHT: 18px" bgColor="gainsboro">Alumno:</TD>
						<TD style="HEIGHT: 18px" bgColor="gainsboro">
							<asp:textbox id="T_alumno" runat="server" Width="213px" Height="24px" ReadOnly="True"></asp:textbox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 97px" bgColor="#ffffff">Evaluación:</TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_eva" runat="server" Width="213px" Height="24px" ReadOnly="True"></asp:textbox></TD>
					</TR>
				</TABLE>
<TABLE align="center">
					<TR>
						<TD>
							<asp:image id="Image2" runat="server" Width="720px" Height="20px" ImageUrl="../../Imagenes/barra.gif"></asp:image></TD>
					</TR>
				</TABLE>
<TABLE align="center">
					<TR>
						<TD bgColor="#ffffff"><FONT face="Arial">Grupo: </FONT>
							<asp:TextBox id="T_grupo" runat="server" Width="110px" ReadOnly="True"></asp:TextBox></TD>
						<TD>&nbsp; <FONT face="Arial">Descripción</FONT>:</TD>
						<TD>
							<asp:TextBox id="T_descrip_g" runat="server" ReadOnly="True"></asp:TextBox></TD>
					</TR>
				</TABLE></asp:panel><asp:panel id="Panel2" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD style="WIDTH: 247px" bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu1" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_11" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_11" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_11" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_11" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_11" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_11" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_12" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_12" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_12" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_13" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_13" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_13" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_14" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_14" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_14" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_15" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_15" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_15" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel><asp:panel id="Panel3" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD style="WIDTH: 246px" bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu2" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_21" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_21" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_21" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_21" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_21" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_21" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 246px" align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_22" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_22" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_22" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 246px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_23" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_23" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_23" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 246px" align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_24" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_24" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_24" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 246px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_25" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_25" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_25" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel><asp:panel id="Panel4" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu3" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_31" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_31" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_31" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_31" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_31" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_31" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_32" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_32" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_32" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_33" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_33" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_33" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_34" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_34" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_34" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_35" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_35" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_35" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel5" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu4" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_41" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_41" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_41" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_41" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_41" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_41" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_42" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_42" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_42" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_43" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_43" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_43" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_44" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_44" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_44" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_45" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_45" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_45" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel6" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu5" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_51" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_51" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_51" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_51" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_51" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_51" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_52" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_52" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_52" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_53" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_53" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_53" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_54" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_54" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_54" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_55" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_55" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_55" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel7" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu6" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_61" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_61" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_61" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_61" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_61" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_61" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_62" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_62" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_62" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_63" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_63" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_63" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_64" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_64" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_64" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_65" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_65" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_65" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel8" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 756px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu7" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_71" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_71" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_71" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_71" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_71" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_71" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_72" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_72" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_72" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_73" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_73" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_73" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_74" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_74" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_74" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_75" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_75" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_75" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel9" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 856px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu8" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_81" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_81" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_81" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_81" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_81" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_81" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_82" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_82" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_82" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_83" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_83" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_83" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_84" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_84" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_84" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_85" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_85" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_85" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:panel id="Panel10" runat="server" HorizontalAlign="Center" Visible="False">
				<TABLE style="WIDTH: 956px" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1">
					<TR>
						<TD bgColor="gainsboro"><FONT face="Arial">Pregunta:&nbsp; </FONT>
						</TD>
						<TD bgColor="gainsboro">
							<asp:Label id="L_pregu9" runat="server" Font-Names="Arial">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 247px" align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_91" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_91" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:DropDownList id="L_91" runat="server" Width="236px" Visible="False"></asp:DropDownList>
							<asp:CheckBox id="C_91" runat="server" Visible="False"></asp:CheckBox>
							<asp:RadioButtonList id="R_91" runat="server" Visible="False"></asp:RadioButtonList>
							<asp:TextBox id="TB_91" runat="server" Width="409px" Height="94px" Visible="False" MaxLength="499" TextMode="MultiLine"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_92" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_92" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_92" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_93" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_93" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_93" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="gainsboro"><FONT face="Arial">
								<asp:Label id="E_94" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="gainsboro">
							<asp:textbox id="T_94" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_94" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
					<TR>
						<TD align="right" bgColor="#ffffff"><FONT face="Arial">
								<asp:Label id="E_95" runat="server" Visible="False">Label</asp:Label></FONT></TD>
						<TD bgColor="#ffffff">
							<asp:textbox id="T_95" runat="server" Visible="False" MaxLength="49"></asp:textbox>
							<asp:CheckBox id="C_95" runat="server" Visible="False"></asp:CheckBox></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<p></p>
			<p></p>
			<TABLE borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" style="WIDTH: 635px; HEIGHT: 76px">
				<TR>
					<TD bgColor="gainsboro" align="middle"><FONT face="Arial">
							<asp:Label id="L_grupo" runat="server" Font-Names="Arial">Observación del Grupo</asp:Label>:
						</FONT>
					</TD>
					<TD bgColor="gainsboro" align="middle"><asp:TextBox id="T_obs_grupo" runat="server" Width="357px" Height="117px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<TABLE id="Table111" borderColor="#0066ff" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="137px" Font-Bold="True" ForeColor="White" Text="Continuar" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center">
				<tr>
					<td align="middle"><asp:label id="t_error" runat="server" Width="744px" Height="46px" ForeColor="Red" Font-Bold="True" Font-Name="arial"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
