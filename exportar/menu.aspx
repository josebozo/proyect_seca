<%@ Page Language="vb" AutoEventWireup="false" Codebehind="menu.aspx.vb" Inherits="seca.menu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>SlideMenu </title>
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<style type="text/css">DIV.clSlide { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; Z-INDEX: 10; LEFT: 0px; PADDING-BOTTOM: 3px; WIDTH: 138px; CLIP: rect(0px 138px 22px 0px); PADDING-TOP: 3px; POSITION: absolute; HEIGHT: 22px }
	DIV.clSlideSub { PADDING-RIGHT: 2px; PADDING-LEFT: 2px; Z-INDEX: 10; LEFT: 8px; VISIBILITY: hidden; PADDING-BOTTOM: 2px; WIDTH: 127px; CLIP: rect(0px 127px 20px 0px); PADDING-TOP: 2px; POSITION: absolute; HEIGHT: 20px }
	DIV.clSlideSub2 { PADDING-RIGHT: 2px; PADDING-LEFT: 2px; Z-INDEX: 10; LEFT: 8px; VISIBILITY: hidden; PADDING-BOTTOM: 2px; WIDTH: 118px; CLIP: rect(0px 118px 20px 0px); PADDING-TOP: 2px; POSITION: absolute; HEIGHT: 20px }
	#divSlideCont { Z-INDEX: 10; LEFT: 0px; VISIBILITY: hidden; WIDTH: 170px; POSITION: absolute; TOP: 100px; HEIGHT: 600px }
	A.clSlideLinks { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: white; FONT-FAMILY: Verdana, Helvetica, Helv; TEXT-DECORATION: none }
	A.clSlideSubLinks { FONT-SIZE: 10px; COLOR: navy; FONT-FAMILY: Verdana, Helvetica, Helv; TEXT-DECORATION: none }
	A.clSlideSub2Links { FONT-SIZE: 9px; COLOR: navy; FONT-FAMILY: Verdana, Helvetica, Helv; TEXT-DECORATION: none }
		</style>
		<script language="JavaScript" type="text/javascript">
/**********************************************************************************   
SlideMenu 
*   Copyright (C) 2001 Thomas Brattli
*   This script was released at DHTMLCentral.com
*********************************************************************************/
function lib_bwcheck(){ //Browsercheck (needed)
	this.ver=navigator.appVersion
	this.agent=navigator.userAgent
	this.dom=document.getElementById?1:0
	this.opera5=(navigator.userAgent.indexOf("Opera")>-1 && document.getElementById)?1:0
	this.ie5=(this.ver.indexOf("MSIE 5")>-1 && this.dom && !this.opera5)?1:0; 
	this.ie6=(this.ver.indexOf("MSIE 6")>-1 && this.dom && !this.opera5)?1:0;
	this.ie4=(document.all && !this.dom && !this.opera5)?1:0;
	this.ie=this.ie4||this.ie5||this.ie6
	this.mac=this.agent.indexOf("Mac")>-1
	this.ns6=(this.dom && parseInt(this.ver) >= 5) ?1:0; 
	this.ns4=(document.layers && !this.dom)?1:0;
	this.bw=(this.ie6 || this.ie5 || this.ie4 || this.ns4 || this.ns6 || this.opera5)
	return this
}
var bw=lib_bwcheck()
//Opera didn't seem to like the padding in the layers, it messes up the background-images, so here's a version without it.
if(bw.opera5) document.write("<style>DIV.clSlide{padding:0px; background-image:url(' ')}\nDIV.clSlideSub{padding:0px; background-image:url(' ')}\nDIV.clSlideSub2{padding:0px; background-image:url(' ')}</style>")

/************************************************************************************
Making cross-browser objects
************************************************************************************/
function makeMenuObj(obj,nest){
	nest=(!nest) ? "":'document.'+nest+'.'										
   	this.css=bw.dom? document.getElementById(obj).style:bw.ie4?document.all[obj].style:bw.ns4?eval(nest+"document.layers." +obj):0;		
	this.el=bw.dom?document.getElementById(obj):bw.ie4?document.all[obj]:bw.ns4?eval(nest+'document.'+obj):0;	
	this.ref=bw.dom || bw.ie4? document:bw.ns4?eval(nest+"document.layers." +obj+".document"):0;		
	this.x=(bw.ns4 || bw.ns5)? this.css.left:this.css.offsetLeft;
	this.y=(bw.ns4 || bw.ns5)? this.css.top:this.css.offsetTop;		
	this.hideIt=b_hideIt; this.showIt=b_showIt; this.movey=b_movey
	this.moveIt=b_moveIt; this.moveBy=b_moveBy; this.status=0; 
	this.bgImg=b_bgImg;	this.obj = obj + "Object"; eval(this.obj + "=this"); 
	this.clipTo=b_clipTo;
	return this
}
function b_showIt(){this.css.visibility="visible"; this.status=1}
function b_hideIt(){this.css.visibility="hidden"; this.status=0}
function b_movey(y){this.y=y; this.css.top=this.y}	
function b_moveIt(x,y){this.x=x; this.y=y; this.css.left=this.x;this.css.top=this.y}
function b_moveBy(x,y){this.x=this.x+x; this.y=this.y+y; this.css.left=this.x;this.css.top=this.y}
function b_bgImg(img){if(bw.ie||bw.dom)this.css.backgroundImage="url("+img+")"
else this.css.background.src=img
}
function b_clipTo(t,r,b,l,w){if(bw.ns4){this.css.clip.top=t;this.css.clip.right=r
this.css.clip.bottom=b;this.css.clip.left=l
}else{this.css.clip="rect("+t+","+r+","+b+","+l+")"; if(w){this.css.width=r; this.css.height=b}}}
/********************************************************************************
Initiating page, making objects..
********************************************************************************/
function SlideMenuInit(){
	open('../paginas/intro2.aspx','main')
	oSlideMenu=new makeMenuObj('divSlideCont')
	oSlideMenu.moveIt(menux,menuy)
	oSlide=new Array()
	for(i=0;i<menus.length;i++){
		oSlide[i]=new makeMenuObj('divSlide'+i,'divSlideCont')
		oSlide[i].subs=menus[i].subs
		oSlide[i].sub=new Array()
		oSlide[i].moveIt(0,mainheight*i)
		oSlide[i].starty=oSlide[i].y
    if(bw.opera) oSlide[i].css.paddingLeft="10px"
		if(!menus[i].seperator) oSlide[i].bgImg(level0_regular)
		for(j=0;j<oSlide[i].subs;j++){
			oSlide[i].sub[j]=new makeMenuObj('divSlideSub'+i+"_"+j,'divSlideCont')
			oSlide[i].sub[j].moveIt(10,oSlide[i].y+subheight*j+between)
			oSlide[i].sub[j].starty=oSlide[i].sub[j].y
			oSlide[i][j]=new Array()
			oSlide[i][j].subs=menus[i][j].subs
			oSlide[i][j].sub=new Array()
			img=level1_round
			if(oSlide[i][j].subs!=0){
				if(j!=oSlide[i].subs-1) img=level1_sub
				else img=level1_sub_round
				oSlide[i].sub[j].css.color="white"
			}else{
				if(j!=oSlide[i].subs-1)img=level1_regular
			}
			oSlide[i].sub[j].origimg=img
			oSlide[i].sub[j].bgImg(img)
			for(a=0;a<oSlide[i][j].subs;a++){
				oSlide[i][j].sub[a]=new makeMenuObj('divSlideSub'+i+"_"+j+"_"+a,'divSlideCont')
				oSlide[i][j].sub[a].moveIt(20,oSlide[i].sub[j].y+subheight*a+between-2)
				oSlide[i][j].sub[a].starty=oSlide[i][j].sub[a].y			
				oSlide[i][j][a]=new Array()
				oSlide[i][j][a].subs=menus[i][j][a].subs
				oSlide[i][j][a].sub=new Array()
				if(a!=oSlide[i][j].subs-1) img=level2_regular
				else img=level2_round
				oSlide[i][j].sub[a].origimg=img
				oSlide[i][j].sub[a].bgImg(img)
			}
		}
	}
	oSlideMenu.showIt()
}
/********************************************************************************
Variables
********************************************************************************/
var active=-1;var going;var isthere; var sactive=-1; var sisthere=-1; var s2active=-1; var s2isthere=-1
/********************************************************************************
Switch menu function.
********************************************************************************/
function swmenu(num,snum,s2num){
	if(snum!=-1){
		if(oSlide[num][snum].subs==0) return
	}
	if(s2num!=-1){
		if(oSlide[num][snum][s2num].subs==0) return
	}
	if((num!=active || snum!=sactive || s2num!=s2active) && !going){going=true;isthere=0;sisthere=0;moveUp(num,snum,s2num)}
}
/********************************************************************************
Moving the menus upward to their original position.
********************************************************************************/
function moveUp(num,snum){
	if(snum==-1){
		for(i=0;i<oSlide.length;i++){
			if(oSlide[i].y>oSlide[i].starty+pxspeed && active!=i) oSlide[i].moveBy(0,-pxspeed)
			else{if(active!=i) oSlide[i].moveIt(oSlide[i].x,oSlide[i].starty); isthere=i}
		}
		
		if(isthere<oSlide.length-1) setTimeout("moveUp("+num+","+snum+")",timspeed)
		else swmenu2(num,snum)
	}else{
		if(num==oSlide.length-1) isthere=num
	
		if(sactive!=-1){ //Is out!
			//Slide subs
			j=0
			for(i=sactive+1;i<oSlide[num].sub.length;i++){
				j++
				if(oSlide[num].sub[i].y>oSlide[num].sub[i].starty+pxspeed) oSlide[num].sub[i].moveBy(0,-pxspeed)
				else{oSlide[num].sub[i].moveIt(oSlide[num].sub[i].x,oSlide[num].sub[i].starty); sisthere=i}
			}
			//Slide main
			for(i=num+1;i<oSlide.length;i++){
				if(oSlide[i].y>oSlide[i].starty + oSlide[num].sub[sactive].y +subheight*j )  oSlide[i].moveBy(0,-pxspeed)
				else{oSlide[i].moveIt(oSlide[i].x,oSlide[i].starty + oSlide[num].sub[sactive].y +subheight*j ); isthere=i}
			}
		}else{ //Slide to the one clicked
			for(i=num+1;i<oSlide.length;i++){
				if(oSlide[i].y>oSlide[i].starty + snum*between+between)  oSlide[i].moveBy(0,-pxspeed)
				else{oSlide[i].moveIt(oSlide[i].x,oSlide[i].starty + snum*between+between); isthere=i}
			}
		}
		if(isthere<oSlide.length-1 || (sactive!=-1 && sisthere<oSlide[num].sub.length-1 && sactive!=oSlide[num].sub.length-1)) setTimeout("moveUp("+num+","+snum+")",timspeed)
		else swmenu2(num,snum)
	}
}
/********************************************************************************
Switch menu 2, stuff that happens before the menus are moved down again.
********************************************************************************/
function swmenu2(num,snum){
	isthere=0;
	sisthere=0;
	if(active>-1 && snum==-1){
		//Hiding submenus
		for(j=0;j<oSlide[active].subs;j++){oSlide[active].sub[j].hideIt()}
		oSlide[active].bgImg(level0_regular)
		oSlide[active].moveIt(0,oSlide[active].starty)
	}
	if(sactive>-1){
		//Hiding submenus
		for(j=0;j<oSlide[active][sactive].sub.length;j++){oSlide[active][sactive].sub[j].hideIt()}
		oSlide[active].sub[sactive].bgImg(oSlide[active].sub[sactive].origimg)
		oSlide[active].sub[sactive].moveIt(10,oSlide[active].sub[sactive].starty)
		//Move back to place
		for(i=sactive+1;i<oSlide[active].sub.length;i++){
			oSlide[active].sub[i].moveIt(oSlide[active].sub[i].x,oSlide[active].sub[i].starty)
		}
	}
	active=num
	//Showing submenus
	if(snum>-1){
		sactive=snum
		for(j=0;j<oSlide[num][snum].sub.length;j++){oSlide[num][snum].sub[j].showIt()}
		oSlide[num].sub[snum].moveBy(10,3)
		oSlide[num].sub[snum].bgImg(level1_round2)
	}else{
		sactive=-1
		for(j=0;j<oSlide[active].subs;j++){oSlide[active].sub[j].showIt()}
		oSlide[num].moveBy(10,3)
		oSlide[num].bgImg(level0_round)
	}
	if(num!=oSlide.length-1) moveDown(num,snum)
	else{
		isthere=num
		moveDown(num,snum)
	}
}
/********************************************************************************
Moving the menus down
********************************************************************************/
function moveDown(num,snum){
	//if(num==oSlide.length-1) isthere=num
	for(i=num+1;i<oSlide.length;i++){
		if(snum==-1){
			if(oSlide[i].y<(oSlide[num].subs-1)*subheight+oSlide[i].starty+between-pxspeed) oSlide[i].moveBy(0,pxspeed)
			else{oSlide[i].moveIt(oSlide[i].x,(oSlide[num].subs-1)*subheight+oSlide[i].starty+between); isthere=i}
		}else{
			if(oSlide[i].y<(oSlide[num].subs-1)*subheight+oSlide[i].starty+between-pxspeed + (oSlide[num][snum].subs-1)*subheight+between)  oSlide[i].moveBy(0,pxspeed)
			else{oSlide[i].moveIt(oSlide[i].x,(oSlide[num].subs-1)*subheight+oSlide[i].starty+between  + (oSlide[num][snum].subs-1)*subheight+between); isthere=i}
		}
	}
	if(snum!=-1){
		for(i=snum+1;i<oSlide[num].sub.length;i++){		
			if(oSlide[num].sub[i].y<(oSlide[num][snum].subs-1)*subheight+oSlide[num].sub[i].starty+between-pxspeed) oSlide[num].sub[i].moveBy(0,pxspeed)
			else{oSlide[num].sub[i].moveIt(oSlide[num].sub[i].x,(oSlide[num][snum].subs-1)*subheight+oSlide[num].sub[i].starty+between); sisthere=i}
		}
	}
	if(snum==-1){
		if(isthere<oSlide.length-1) setTimeout("moveDown("+num+","+snum+")",timspeed)
		else going=false
	}else{
		if(isthere<oSlide.length-1 || (sisthere<oSlide[num].sub.length-1 && snum!=oSlide[num].sub.length-1)) setTimeout("moveDown("+num+","+snum+")",timspeed)
		else going=false
	}
}
var test=0
/********************************************************************************
Functions to write out the layers...
********************************************************************************/
menus=new Array(); var a=0; var b=0; var c=0; var d=0
function makeMenu(type,text,lnk,target,end){
	str=""; tg="";
  if(target) tg='target="'+target+'"'
  if(!lnk) lnk="#"
  self.status=lnk
	if(a==0) str='<div id="divSlideCont">\n'
	if(type=="top"){
		menus[a]=new Array();
		if(text=="seperator"){
			str+='\t<div id="divSlide'+a+'" class="clSlide"></div>\n'
			menus[a].seperator=1
		}else{
      str+='\t<div id="divSlide'+a+'" class="clSlide"><a href="'+lnk+'" '+tg+' onclick="swmenu('+a+',-1,-1); if(bw.ie || bw.ns6) this.blur(); '
      if(lnk=="#") str+='return false'
      str+='" class="clSlideLinks"> '+text+'</a><br></div>\n'
		}
    menus[a].subs=0; a++; b=0
	}else if(type=="sub"){
		str+='\t\t<div id="divSlideSub'+(a-1)+'_'+(b)+'" class="clSlideSub"><a '+tg+' onclick="swmenu('+(a-1)+','+b+',-1); if(bw.ie || bw.ns6) this.blur(); '
    if(lnk=="#") str+='return false'
    str+='" href="'+lnk+'" class="clSlideSubLinks">  '+text+'</a><br></div>\n'
		b++; menus[a-1].subs=b; menus[a-1][b-1]=new Array(); c=0; menus[a-1][b-1].subs=0
	}else if(type=="sub2"){
		str+='\t\t<div id="divSlideSub'+(a-1)+'_'+(b-1)+'_'+c+'" class="clSlideSub2"><a '+tg+' href="'+lnk+'" class="clSlideSub2Links">  '+text+'</a><br></div>\n'
		c++; menus[a-1][b-1].subs=c; menus[a-1][b-1][c-1]=new Array(); d=0; menus[a-1][b-1][c-1].subs=0
	}
	if(end) str+="</div>"
	document.write(str)
}
function preLoadBackgrounds(){
  for(i=0;i<arguments.length;i++){
    this[i]=new Image()
    this[i].src=arguments[i]
  }
  return this
}
		</script>
		<!-- ************** HTML DE LA PAGINA ****************** -->
	</HEAD>
	<body bottomMargin="1" bgProperties="fixed" background="fondo menu.jpg">
		<form id="Form1" method="post" runat="server">
			<P>
				<asp:label id="Label1" runat="server" Font-Names="Arial" ForeColor="White"></asp:label></P>
			<A href="intro1.htm" TARGET="main"></A>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>&nbsp;</P>
			<P>
				<asp:Label id="Label3" runat="server" ForeColor="#FFFFC0" Font-Names="Arial" Width="139px" Height="3px" Font-Size="Smaller" Font-Bold="True">Adm. del Sistema</asp:Label></P>
			<P>
				<asp:Label id="Label2" runat="server" ForeColor="White" Font-Bold="True"></asp:Label></P>
		</form>
		<!-- CONTINUACION DEL SCRIPT DEL MENU DESPLEGABLE -->
		<script>
			//Variables to set
			between=28 //The pixel between the menus and the submenus
			mainheight=25 //The height of the mainmenus
			subheight=22 //The height of the submenus
			pxspeed=13 //The pixel speed of the animation
			timspeed=15 //The timer speed of the animation
			menuy=40 //The top placement of the menu.
			menux=0 //The left placement of the menu
			//Images - Play with these
					level0_regular = "level0_regular.gif"
					level0_round = "level0_round.gif"
					level1_regular = "level1_regular.gif"
					level1_round = "level1_round.gif"
					level1_sub = "level1_sub.gif"
					level1_sub_round = "level1_sub_round.gif"
					level1_round2 = "level1_round2.gif"
					level2_regular = "level2_regular.gif"
					level2_round = "level2_regular.gif"

			//Leave this line
					preLoadBackgrounds(level0_regular, level0_round, level1_regular, level1_round, level1_sub, level1_sub_round, level1_round2, level2_regular, level2_round)
		
			//makeMenu('TYPE','TEXT','LINK','TARGET', 'END (THE LAST MENU)')

			//Menu 1 Alumnos
			makeMenu('top','Control de Alumnos')
				makeMenu('sub','Alumno')
				makeMenu('sub2','Insertar','../paginas/modulo1/alumno_insert.aspx','main')
				makeMenu('sub2','Mostrar','../paginas/modulo1/alumno_mostrar.aspx','main')
				makeMenu('sub2','Modificar','../paginas/modulo1/alumno_modificar1.aspx','main')
				makeMenu('sub2','Desactivar','../paginas/modulo1/alumno_desactivar.aspx','main')
				makeMenu('sub2','Activar','../paginas/modulo1/alumno_activar.aspx','main')
				makeMenu('sub','Calendario')
				makeMenu('sub2','Insertar','../paginas/modulo1/inset_calendario.aspx','main')
				makeMenu('sub2','Mostrar','../paginas/modulo1/mostrar_calendario.aspx','main')
				makeMenu('sub2','Modificar','../paginas/modulo1/editar_calendario.aspx','main')
				makeMenu('sub2','Eliminar','../paginas/modulo1/eliminar_calendario.aspx','main')
			

			//Menu 2 Evaluacioes
			makeMenu('top','Evaluación')
				makeMenu('sub','Realizar Evaluación')
				makeMenu('sub2','Realizar','../paginas/modulo2/Realizar_eva.aspx','main')
				makeMenu('sub2','Mostrar','../paginas/modulo2/mostrar_eva_selec.aspx','main')
				makeMenu('sub2','Reunion Clinica','../paginas/modulo2/reunion_clinica.aspx','main')
				makeMenu('sub2','Modificar Reunion C.','../paginas/modulo2/reunion_clinica_modi.aspx','main')
				makeMenu('sub','Formato Evaluación')
				makeMenu('sub2','Crear','../paginas/modulo2/Crear_formato.aspx','main')
				makeMenu('sub2','Mostrar','../paginas/modulo2/Mostrar_eva.aspx','main')
				makeMenu('sub2','Eliminar','../paginas/modulo2/eliminar_eva.aspx','main')
				makeMenu('sub2','Preguntas','../paginas/modulo2/Realizar_pregunta.aspx','main')

			//Menu 3 Reportes
			makeMenu('top','Reportes')
				makeMenu('sub','Evaluaciónes')
				makeMenu('sub2','Reunión Clínica','../paginas/modulo3/Reunion_ClinicaR.aspx','main')
				makeMenu('sub2','Final de Evaluación','../paginas/Modulo3/Reporte_Final_Evaluacion.aspx','main')
				makeMenu('sub','Alumnos')
				makeMenu('sub2','Reporte de Alumnos','../paginas/modulo3/Reporte_Alumnos.aspx','main')
				makeMenu('sub2','Reporte Tratamientos','../paginas/modulo3/view_tratamiento.aspx','main')
				makeMenu('sub2','Reporte Observacion','../paginas/modulo4/Seguimiento_mostrarp.aspx','main')
				makeMenu('sub2','Citas pendientes','../paginas/modulo3/Citas_Pendientes.aspx','main')
				//makeMenu('sub2','Citas Histórico','../paginas/modulo3/CrystalReport2.rpt','main')
				
			//Menu 4 Seguimiento
			makeMenu('top','Seguimiento')
				makeMenu('sub','Tratamiento')
				makeMenu('sub2','Tratamientos/Correción','../paginas/modulo4/Seguimiento_N_Tratamiento.aspx','main')
				makeMenu('sub','Seguimiento')
				makeMenu('sub2','Insertar','../paginas/modulo4/Seguimiento_Insertar.aspx','main')
				makeMenu('sub2','Mostrar','../paginas/modulo4/Seguimiento_mostrarp.aspx','main')
				makeMenu('sub2','Modificar','../paginas/modulo4/Seguimiento_modificar.aspx','main')
			
			//Menu 5 Usuarios
			makeMenu('top','Usuarios')
				makeMenu('sub','Usuario')
				makeMenu('sub2','Nuevo','../paginas/modulo5/Crear_Usuario.aspx','main')			
				makeMenu('sub2','Mostrar','../paginas/modulo5/Mostrar_Usuario.aspx','main')
				makeMenu('sub2','Modificar','../paginas/modulo5/Modificar_Usuario_DG.aspx','main')
				makeMenu('sub2','Eliminar ','../paginas/modulo5/Eliminar_Usuario.aspx','main')
				makeMenu('sub','Area')
				makeMenu('sub2','Crear','../paginas/modulo5/Crear_Area.aspx','main')			
				makeMenu('sub2','Mostrar','../paginas/modulo5/mostrar_Area.aspx','main')
				makeMenu('sub2','Modificar','../paginas/modulo5/modificar_Area_DG.aspx','main')
				//Menu 6 Area    
				makeMenu('top','Manual Usuario')
				makeMenu('sub','Manual en Línea','../paginas/manual.doc','main')
			//Menu 6 Area    
			//	makeMenu('top','Manual Usuario')
			//	makeMenu('sub','Manual','../paginas/manual.doc','main')
			//Menu 3
			//	makeMenu('top','Forums')
			//	makeMenu('sub','Cool sites','forums/forum.asp?FORUM_ID=1&CAT_ID=1&Forum_Title=Cool+sites')
			//	makeMenu('sub','CoolMenus','forums/forum.asp?FORUM_ID=2&CAT_ID=1&Forum_Title=CoolMenus')
			//	makeMenu('sub','Crossbrowser','forums/forum.asp?FORUM_ID=3&CAT_ID=1&Forum_Title=Crossbrowser+DHTML')
			//	makeMenu('sub','Scripts','forums/forum.asp?FORUM_ID=4&CAT_ID=1&Forum_Title=DHTML+Scripts')
			//	makeMenu('sub','dhtmlcentral.com','forums/forum.asp?FORUM_ID=5&CAT_ID=1&Forum_Title=dhtmlcentral%2Ecom')
			//	makeMenu('sub','General','forums/forum.asp?FORUM_ID=6&CAT_ID=1&Forum_Title=General+DHTML+issues')
			//	makeMenu('sub','Off-topic','forums/forum.asp?FORUM_ID=9&CAT_ID=1&Forum_Title=Off%2Dtopic')
			//	makeMenu('sub','Active topics','forums/active.asp')

			//Menu 4  
			//makeMenu('top','CoolMenus')
			//makeMenu('sub','Examples','coolmenus/examples/')
			//makeMenu('sub','Download','coolmenus/download.asp')
			//makeMenu('sub','Tutorial','coolmenus/tutorial.asp')
			//makeMenu('sub','FAQ','faq/index.asp')

			//Menu 5
			//makeMenu('top','Resources')
			//makeMenu('sub','DHTML Links','resources/default.asp')

			//Menu 6  
			//makeMenu('top','dhtmlcentral')
			//makeMenu('sub','dhtmlcentral','dhtmlcentral/index.asp',"",1)

			//Starting the menu
onload=SlideMenuInit;
		</script>
	</body>
</HTML>
