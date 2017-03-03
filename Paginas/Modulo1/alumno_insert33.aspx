<%@ Page Language="vb" AutoEventWireup="false" Codebehind="alumno_insert33.aspx.vb" Inherits="seca.alumno_insert33"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>alumno_insert33</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body background="../../Imagenes/fondo cuadros1.jpg" MS_POSITIONING="GridLayout">
		<table align="center" bgColor="#0066ff" style="WIDTH: 548px; HEIGHT: 78px" border="2">
			<tr>
				<td align="middle" bgColor="#87cefa"><FONT face="Arial">
						<P class="MsoNormal" style="FONT-FAMILY: Arial" align="center">
						Pantalla para inserción de nuevos alumnos, los campos necesarios u obligatorios 
						tendrán un asterisco(*) a un lado cuando trate de enviar el formulario.</FONT></P>
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
		<table align="center" id="Table4">
			<tr>
				<td align="middle">
					<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label1" runat="server" Width="437px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Entrevista Social.</asp:label></p>
				</td>
			</tr>
		</table>
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
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:textbox id="T_usuario" runat="server" Enabled="False" Height="24px" Width="213px"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 97px">Expediente:</TD>
					<TD><asp:textbox id="T_exp" runat="server" Enabled="False" Height="24px" Width="213px"></asp:textbox></TD>
				</TR>
			</TABLE>
			<p></p>
			<p></p>
			<table align="center" id="Table3">
				<TR>
					<td>
						<asp:Image id="Image1" runat="server" ImageUrl="../../Imagenes/barra.gif" Width="583px" Height="20px"></asp:Image>
					</td>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" id="Table4">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label2" runat="server" Width="468px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Plano Físico Ambiental.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 471px; FONT-FAMILY: Arial; HEIGHT: 316px; TEXT-ALIGN: left" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" id="Table8">
				<tr>
					<td style="WIDTH: 211px" bgColor="gainsboro"><FONT face="Arial">Tipo de Vivienda:</FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="t_tipo_casa" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 211px" bgColor="#ffffff"><FONT face="Arial">Tenencia de la Vivienda:</FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_tenencia_casa" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 211px" bgColor="gainsboro"><FONT face="Arial">Ambientes:</FONT>
					</td>
					<td bgColor="gainsboro"><asp:textbox id="T_ambientes_casa" runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 211px" bgColor="#ffffff"><FONT face="Arial">Descripción de la 
							Vivienda: </FONT>
					</td>
					<td bgColor="#ffffff"><asp:textbox id="T_descrip_casa" runat="server" Height="67px" Width="270px" TextMode="MultiLine"></asp:textbox></td>
				</tr>
				<tr>
					<td style="WIDTH: 211px" bgColor="gainsboro"><FONT face="Arial">Servicio de Agua: </FONT>
					</td>
					<td bgColor="gainsboro"><asp:radiobuttonlist id="R_agua_casa" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="R_agua_casa"></asp:RequiredFieldValidator></td>
				</tr>
				<TR>
					<TD style="WIDTH: 211px; HEIGHT: 19px" bgColor="#ffffff"><FONT face="Arial">Servicio de 
							Luz:</FONT></TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:radiobuttonlist id="R_luz_casa" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="R_luz_casa"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 211px; HEIGHT: 19px" bgColor="gainsboro">Servicios Sanitarios:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:radiobuttonlist id="R_serv_casa" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="R_serv_casa"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 211px; HEIGHT: 19px" bgColor="#ffffff">Vialidad Adecuada:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:radiobuttonlist id="R_via_adecu" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="R_via_adecu"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 211px; HEIGHT: 19px" bgColor="gainsboro">Vialidad Inadecuada:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:radiobuttonlist id="R_via_inade" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="R_via_inade"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 211px; HEIGHT: 19px" bgColor="#ffffff">Transporte Público:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:radiobuttonlist id="R_via_t_publico" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="R_via_t_publico"></asp:RequiredFieldValidator></TD>
				</TR>
				<tr>
					<td style="WIDTH: 211px; HEIGHT: 19px" bgColor="gainsboro"><FONT face="Arial">&nbsp;Transporte 
							Privada: </FONT>
					</td>
					<td style="HEIGHT: 19px" bgColor="gainsboro"><asp:radiobuttonlist id="R_via_t_privado" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="R_via_t_privado"></asp:RequiredFieldValidator></td>
				</tr>
				<TR>
					<TD style="WIDTH: 211px; HEIGHT: 19px" bgColor="#ffffff">Servicios Recreativos:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_recrea" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" id="Table4">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label3" runat="server" Width="468px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Plano Socio-Económico.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 471px; FONT-FAMILY: Arial; HEIGHT: 316px; TEXT-ALIGN: left" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" id="Table10">
				<TR>
					<TD style="WIDTH: 237px; FONT-FAMILY: Arial; HEIGHT: 19px" bgColor="gainsboro">Sueldo 
						o Salario del Padre:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_ingre_padre" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Sueldo o Salario de la 
						Madre:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_ingre_madre" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="gainsboro">Aporte de Otros 
						Familiares:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_ingre_familia" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Rentas:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_ingre_rentas" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="gainsboro">Becas:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_ingre_becas" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Otros Ingresos:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_ingre_otros" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" align="right" bgColor="gainsboro">Total de 
						Ingresos:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="TotalI" runat="server" ReadOnly="True"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button1" runat="server" Text="Calcular" CausesValidation="False"></asp:button></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff"><P>Gastos de Alimnetación:</P>
					</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_agre_alimen" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="gainsboro">Gastos de Vivienda:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_egre_vivi" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Gastos de Educación:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_egre_edu" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="gainsboro">Gastos de Transporte:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_egre_trans" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Gastos&nbsp; de Vestuario:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_egre_ropa" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="gainsboro">Gastos de Medicinas:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_egre_credi" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Otros Egresos:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_egre_otros" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" align="right" bgColor="gainsboro">Total de 
						Egresos:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="TotalE" runat="server" ReadOnly="True"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button4" runat="server" Text="Calcular" CausesValidation="False"></asp:button>&nbsp;&nbsp;&nbsp;</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Observaciones de Ingresos 
						y Egresos:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_ingre_observa" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="gainsboro">Condición 
						Socio-Económica:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:dropdownlist id="L_condicion" runat="server" Width="165px">
							<asp:ListItem Value="Alta">Alta</asp:ListItem>
							<asp:ListItem Value="Media Alta">Media Alta</asp:ListItem>
							<asp:ListItem Value="Media Baja">Media Baja</asp:ListItem>
							<asp:ListItem Value="Obrera">Obrera</asp:ListItem>
							<asp:ListItem Value="Marginal">Marginal</asp:ListItem>
							<asp:ListItem Value="Pts">Pts</asp:ListItem>
						</asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="L_condicion"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 237px; HEIGHT: 19px" bgColor="#ffffff">Observaciones 
						Socio-Económica:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_cond_obser" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
			</table>
			<p></p>
			<p></p>
			<table align="center" id="Table4">
				<tr>
					<td align="middle">
						<p style="FONT-FAMILY: Arial" align="center"><asp:label id="Label4" runat="server" Width="537px" Font-Names="Arial" Font-Bold="True" ForeColor="Black" BackColor="SkyBlue" BorderColor="SlateBlue" BorderStyle="Double"> Plano Psico-Social.</asp:label></p>
					</td>
				</tr>
			</table>
			<table style="WIDTH: 541px; FONT-FAMILY: Arial; HEIGHT: 530px; TEXT-ALIGN: left" borderColor="gainsboro" cellSpacing="0" cellPadding="1" align="center" border="1" id="Table12">
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 18px" bgColor="gainsboro">Tipo de Familia</TD>
					<TD style="HEIGHT: 18px" bgColor="gainsboro"><asp:dropdownlist id="L_tipo_familia" runat="server" Width="321px">
							<asp:ListItem Value="Nuclear con presencia de ambos Padres">Nuclear con presencia de ambos Padres</asp:ListItem>
							<asp:ListItem Value="Nuclear con presencia de la Madre">Nuclear con presencia de la Madre</asp:ListItem>
							<asp:ListItem Value="Nuclear con presencia solo del padre">Nuclear con presencia solo del padre</asp:ListItem>
							<asp:ListItem Value="Nuclear sin presencia de ambos padres">Nuclear sin presencia de ambos padres</asp:ListItem>
							<asp:ListItem Value="Extendida con la presencia de ambos Pradres">Extendida con la presencia de ambos Pradres</asp:ListItem>
							<asp:ListItem Value="Extendida solo con la presencia de la madre">Extendida solo con la presencia de la madre</asp:ListItem>
							<asp:ListItem Value="Extendida solo con la presencia del Padre">Extendida solo con la presencia del Padre</asp:ListItem>
							<asp:ListItem Value="No existen Datos">No existen Datos</asp:ListItem>
						</asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="L_tipo_familia"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="#ffffff">Observaciones del Tipo de 
						Familia:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_familia_obser" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="gainsboro">Interacción de la 
						Pareja:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:dropdownlist id="L_tipo_relac" runat="server" Width="165px">
							<asp:ListItem Value="Positiva">Positiva</asp:ListItem>
							<asp:ListItem Value="Negativa">Negativa</asp:ListItem>
							<asp:ListItem Value="Ocasional">Ocasional</asp:ListItem>
							<asp:ListItem Value="Frecuentes">Frecuentes</asp:ListItem>
							<asp:ListItem Value="Con poco Frecuencia">Con poco Frecuencia</asp:ListItem>
							<asp:ListItem Value="No existe Interacci&#243;n ">No existe Interacci&#243;n </asp:ListItem>
						</asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="L_tipo_relac"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="#ffffff">Observaciones de la 
						Interacción de la Pareja:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_rela_obser" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="gainsboro">Interacción entre los 
						demas miembros de la Familia:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_tipo_rela_fami" runat="server"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="#ffffff">Observaciones de la 
						interacción Familiar:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_rela_fami_obser" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="gainsboro">Irresponsabilidad 
						Paterna:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:radiobuttonlist id="R_respo_paterna" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="R_respo_paterna"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="#ffffff">Irresponsabilidad Materna:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:radiobuttonlist id="R_repo_materna" runat="server" Width="47px" RepeatDirection="Horizontal">
							<asp:ListItem Value="1">Si</asp:ListItem>
							<asp:ListItem Value="0">No</asp:ListItem>
						</asp:radiobuttonlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="R_repo_materna"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="gainsboro">Observaciones de la 
						Irresponsabilidad:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:textbox id="T_respo_obse" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="#ffffff">¿Quién resuelve o toma las 
						decisiones relativas a la vida familiar?:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:textbox id="T_decision_familia" runat="server" Height="49px" Width="270px" TextMode="MultiLine"></asp:textbox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="gainsboro">Tipo de autoriadad de la 
						Padre:</TD>
					<TD style="HEIGHT: 19px" bgColor="gainsboro"><asp:dropdownlist id="L_autoridad_padre" runat="server" Width="165px">
							<asp:ListItem Value="No Disponible">No Disponible</asp:ListItem>
							<asp:ListItem Value="Autocr&#225;tica">Autocr&#225;tica</asp:ListItem>
							<asp:ListItem Value="Democratica">Democratica</asp:ListItem>
							<asp:ListItem Value="Dejar Hacer">Dejar Hacer</asp:ListItem>
							<asp:ListItem Value="Se desconoce">Se desconoce</asp:ListItem>
						</asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="L_autoridad_padre"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 197px; HEIGHT: 19px" bgColor="#ffffff">Tipo de autoriadad de la 
						Madre:</TD>
					<TD style="HEIGHT: 19px" bgColor="#ffffff"><asp:dropdownlist id="L_autoridad_madre" runat="server" Width="165px">
							<asp:ListItem Value="No Disponible">No Disponible</asp:ListItem>
							<asp:ListItem Value="Autocr&#225;tica">Autocr&#225;tica</asp:ListItem>
							<asp:ListItem Value="Democratica">Democratica</asp:ListItem>
							<asp:ListItem Value="Dejar Hacer">Dejar Hacer</asp:ListItem>
							<asp:ListItem Value="Se desconoce">Se desconoce</asp:ListItem>
						</asp:dropdownlist>
						<asp:RequiredFieldValidator id="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="L_autoridad_madre"></asp:RequiredFieldValidator></TD>
				</TR>
			</table>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<TABLE id="Table2" borderColor="#0033cc" rules="none" align="center" border="2">
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Width="80px" Text="Reset" CausesValidation="False" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="Button2" runat="server" Width="80px" Text="Continuar" BackColor="#8080FF"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</TD>
				</TR>
			</TABLE>
			<p></p>
		</form>
	</body>
</HTML>
