Imports System.Data.SqlClient
Public Class mostrar_eva2
    Inherits System.Web.UI.Page
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents Label17 As System.Web.UI.WebControls.Label
    Protected WithEvents Label19 As System.Web.UI.WebControls.Label
    Protected WithEvents l_alumno As System.Web.UI.WebControls.Label
    Protected WithEvents L_eva As System.Web.UI.WebControls.Label
    Protected WithEvents Panel2 As System.Web.UI.WebControls.Panel
    Protected WithEvents L As System.Web.UI.WebControls.Label
    Protected WithEvents P_10 As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Public Shared grupos_t As Integer = 0
    Public Shared grupos_Max As Integer
    Public Shared alum_01 As Integer
    Public Shared eva_01 As Integer
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Public Shared cod_1 As Integer
    Protected WithEvents L_10 As System.Web.UI.WebControls.Label
    Protected WithEvents L_15 As System.Web.UI.WebControls.Label
    Protected WithEvents L_11 As System.Web.UI.WebControls.Label
    Protected WithEvents L_16 As System.Web.UI.WebControls.Label
    Protected WithEvents L_12 As System.Web.UI.WebControls.Label
    Protected WithEvents L_17 As System.Web.UI.WebControls.Label
    Protected WithEvents L_13 As System.Web.UI.WebControls.Label
    Protected WithEvents L_14 As System.Web.UI.WebControls.Label
    Protected WithEvents L_18 As System.Web.UI.WebControls.Label
    Protected WithEvents L_19 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents P_20 As System.Web.UI.WebControls.Label
    Protected WithEvents L_20 As System.Web.UI.WebControls.Label
    Protected WithEvents L_25 As System.Web.UI.WebControls.Label
    Protected WithEvents L_21 As System.Web.UI.WebControls.Label
    Protected WithEvents L_26 As System.Web.UI.WebControls.Label
    Protected WithEvents L_22 As System.Web.UI.WebControls.Label
    Protected WithEvents L_27 As System.Web.UI.WebControls.Label
    Protected WithEvents L_23 As System.Web.UI.WebControls.Label
    Protected WithEvents L_28 As System.Web.UI.WebControls.Label
    Protected WithEvents L_24 As System.Web.UI.WebControls.Label
    Protected WithEvents L_29 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel3 As System.Web.UI.WebControls.Panel
    Protected WithEvents L_grupo1 As System.Web.UI.WebControls.Label
    Protected WithEvents L_descri_grup1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents P_40 As System.Web.UI.WebControls.Label
    Protected WithEvents L_40 As System.Web.UI.WebControls.Label
    Protected WithEvents L_45 As System.Web.UI.WebControls.Label
    Protected WithEvents L_41 As System.Web.UI.WebControls.Label
    Protected WithEvents L_46 As System.Web.UI.WebControls.Label
    Protected WithEvents L_42 As System.Web.UI.WebControls.Label
    Protected WithEvents L_47 As System.Web.UI.WebControls.Label
    Protected WithEvents L_43 As System.Web.UI.WebControls.Label
    Protected WithEvents L_48 As System.Web.UI.WebControls.Label
    Protected WithEvents L_44 As System.Web.UI.WebControls.Label
    Protected WithEvents L_49 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel5 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents P_30 As System.Web.UI.WebControls.Label
    Protected WithEvents L_30 As System.Web.UI.WebControls.Label
    Protected WithEvents L_35 As System.Web.UI.WebControls.Label
    Protected WithEvents L_31 As System.Web.UI.WebControls.Label
    Protected WithEvents L_36 As System.Web.UI.WebControls.Label
    Protected WithEvents L_32 As System.Web.UI.WebControls.Label
    Protected WithEvents L_37 As System.Web.UI.WebControls.Label
    Protected WithEvents L_33 As System.Web.UI.WebControls.Label
    Protected WithEvents L_38 As System.Web.UI.WebControls.Label
    Protected WithEvents L_34 As System.Web.UI.WebControls.Label
    Protected WithEvents L_39 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel4 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents P_50 As System.Web.UI.WebControls.Label
    Protected WithEvents L_50 As System.Web.UI.WebControls.Label
    Protected WithEvents L_55 As System.Web.UI.WebControls.Label
    Protected WithEvents L_51 As System.Web.UI.WebControls.Label
    Protected WithEvents L_56 As System.Web.UI.WebControls.Label
    Protected WithEvents L_52 As System.Web.UI.WebControls.Label
    Protected WithEvents L_57 As System.Web.UI.WebControls.Label
    Protected WithEvents L_53 As System.Web.UI.WebControls.Label
    Protected WithEvents L_58 As System.Web.UI.WebControls.Label
    Protected WithEvents L_54 As System.Web.UI.WebControls.Label
    Protected WithEvents L_59 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel6 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents P_60 As System.Web.UI.WebControls.Label
    Protected WithEvents L_60 As System.Web.UI.WebControls.Label
    Protected WithEvents L_65 As System.Web.UI.WebControls.Label
    Protected WithEvents L_61 As System.Web.UI.WebControls.Label
    Protected WithEvents L_66 As System.Web.UI.WebControls.Label
    Protected WithEvents L_62 As System.Web.UI.WebControls.Label
    Protected WithEvents L_67 As System.Web.UI.WebControls.Label
    Protected WithEvents L_63 As System.Web.UI.WebControls.Label
    Protected WithEvents L_68 As System.Web.UI.WebControls.Label
    Protected WithEvents L_64 As System.Web.UI.WebControls.Label
    Protected WithEvents L_69 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel7 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents P_70 As System.Web.UI.WebControls.Label
    Protected WithEvents L_70 As System.Web.UI.WebControls.Label
    Protected WithEvents L_75 As System.Web.UI.WebControls.Label
    Protected WithEvents L_71 As System.Web.UI.WebControls.Label
    Protected WithEvents L_76 As System.Web.UI.WebControls.Label
    Protected WithEvents L_72 As System.Web.UI.WebControls.Label
    Protected WithEvents L_77 As System.Web.UI.WebControls.Label
    Protected WithEvents L_73 As System.Web.UI.WebControls.Label
    Protected WithEvents L_78 As System.Web.UI.WebControls.Label
    Protected WithEvents L_74 As System.Web.UI.WebControls.Label
    Protected WithEvents L_79 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel8 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents P_80 As System.Web.UI.WebControls.Label
    Protected WithEvents L_80 As System.Web.UI.WebControls.Label
    Protected WithEvents L_85 As System.Web.UI.WebControls.Label
    Protected WithEvents L_81 As System.Web.UI.WebControls.Label
    Protected WithEvents L_86 As System.Web.UI.WebControls.Label
    Protected WithEvents L_82 As System.Web.UI.WebControls.Label
    Protected WithEvents L_87 As System.Web.UI.WebControls.Label
    Protected WithEvents L_83 As System.Web.UI.WebControls.Label
    Protected WithEvents L_88 As System.Web.UI.WebControls.Label
    Protected WithEvents L_84 As System.Web.UI.WebControls.Label
    Protected WithEvents L_89 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel9 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents P_90 As System.Web.UI.WebControls.Label
    Protected WithEvents L_90 As System.Web.UI.WebControls.Label
    Protected WithEvents L_95 As System.Web.UI.WebControls.Label
    Protected WithEvents L_91 As System.Web.UI.WebControls.Label
    Protected WithEvents L_96 As System.Web.UI.WebControls.Label
    Protected WithEvents L_92 As System.Web.UI.WebControls.Label
    Protected WithEvents L_97 As System.Web.UI.WebControls.Label
    Protected WithEvents L_93 As System.Web.UI.WebControls.Label
    Protected WithEvents L_98 As System.Web.UI.WebControls.Label
    Protected WithEvents L_94 As System.Web.UI.WebControls.Label
    Protected WithEvents L_99 As System.Web.UI.WebControls.Label
    Protected WithEvents Panel10 As System.Web.UI.WebControls.Panel
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents grup_obser As System.Web.UI.WebControls.Label
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Public Shared cod_eva_res As Integer


#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;persist security info=False;user id=" & _
        "reporte;workstation id=BOZOXP06;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Me.Label2.Text = Format(Now, "dd/MM/yyyy")
        If (Page.IsPostBack = False) Then
            grupos_t = 0
            l_alumno.Text = Request.Params("alumno")
            L_eva.Text = Request.Params("eva")
            alum_01 = Val(Request.Params("cod_a"))
            'eva_01 = 30 'Request.Params("cod_e")
            cod_1 = 0
            cod_eva_res = Request.Params("cod_e")
            cod_1 = Request.Params("cod_e")

            'cod_a cod_e, eva, alumno
            't_error.Visible = False
            Dim queri2 As String
            Dim Comm As System.Data.SqlClient.SqlCommand

            Conn.Open()
            queri2 = "select cod_eva from res_eva_m2 where cod_res_eva=" & cod_eva_res
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
            eva_01 = Comm.ExecuteScalar()
            Conn.Close()
            Carga()


        End If
    End Sub

    Public Sub Carga()
        Dim queri, queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim files As Integer

        Conn.Open()
        queri = "select max(grupo) from preguntas_m2 where cod_eva=" & eva_01 'Request.Params("cod")
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        grupos_Max = Comm.ExecuteScalar()
        If grupos_t <= grupos_Max Then
            grupos_t = grupos_t + 1
            If grupos_t = grupos_Max Then Button1.Enabled = False
        Else
            Exit Sub
        End If
        Dim total_g As Integer = grupos_t
        Dim num1 As Integer
        Dim pregun(1, 2) As String
        Dim grupo_act As String
        queri = "DECLARE @test int set @test=" & cod_eva_res & " Select count(cod_pregunta) from preguntas_m2 where cod_eva=" & eva_01 & " and grupo=" & total_g
        queri = queri & " and Cod_pregunta in (select Cod_pregunta from tipo1_respuesta_m2 where Cod_res_eva=@test union select Cod_pregunta from tipo2_respuesta_m2 where Cod_res_eva=@test union select Cod_pregunta from tipo3_respuesta_m2 where Cod_res_eva=@test union"
        queri = queri & " select Cod_pregunta from tipo4_respuesta_m2 where Cod_res_eva=@test union select Cod_pregunta from tipo5_respuesta_m2 where Cod_res_eva=@test)"
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        num1 = Comm.ExecuteScalar()
        ReDim pregun(num1, 2)
        queri = "select Descripcion from preguntas_m2 where cod_eva=" & eva_01 & " and grupo=" & total_g & " group by Descripcion"
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        grupo_act = Comm.ExecuteScalar()

        queri = "DECLARE @test int set @test=" & cod_eva_res & " Select cod_pregunta from preguntas_m2 where cod_eva=" & eva_01 & " and grupo=" & total_g
        queri = queri & " and Cod_pregunta in (select Cod_pregunta from tipo1_respuesta_m2 where Cod_res_eva=@test union select Cod_pregunta from tipo2_respuesta_m2 where Cod_res_eva=@test union select Cod_pregunta from tipo3_respuesta_m2 where Cod_res_eva=@test union"
        queri = queri & " select Cod_pregunta from tipo4_respuesta_m2 where Cod_res_eva=@test union select Cod_pregunta from tipo5_respuesta_m2 where Cod_res_eva=@test)"
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        objDR = Comm.ExecuteReader()
        Dim i As Integer = 0
        While objDR.Read
            i = i + 1
            pregun(i, 1) = objDR.Item("cod_pregunta")
        End While
        objDR.Close()
        Me.L_descri_grup1.Text = grupo_act
        Me.L_grupo1.Text = total_g

        queri = "select observacion from grupo_respuestas_M2 where cod_res_eva=" & cod_eva_res & " and grupo=" & total_g
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        grup_obser.Text = Comm.ExecuteScalar

        For i = 1 To num1
            Select Case i
                Case 1

                    pregun(i, 2) = "1"
                    Panel1.Visible = True
                    'panel_1(Val(pregun(i, 1)))
                    panel(Val(pregun(i, 1)), P_10, L_10, L_11, L_12, L_13, L_14, L_15, L_16, L_17, L_18, L_19)
                Case 2
                    pregun(i, 2) = "2"
                    Panel3.Visible = True
                    panel(Val(pregun(i, 1)), P_20, L_20, L_21, L_22, L_23, L_24, L_25, L_26, L_27, L_28, L_29)
                Case 3
                    pregun(i, 2) = "3"
                    Panel4.Visible = True
                    panel(Val(pregun(i, 1)), P_30, L_30, L_31, L_32, L_33, L_34, L_35, L_36, L_37, L_38, L_39)
                Case 4
                    pregun(i, 2) = "4"
                    Panel5.Visible = True
                    panel(Val(pregun(i, 1)), P_40, L_40, L_41, L_42, L_43, L_44, L_45, L_46, L_47, L_48, L_49)
                Case 5
                    pregun(i, 2) = "5"
                    Panel6.Visible = True
                    panel(Val(pregun(i, 1)), P_50, L_50, L_51, L_52, L_53, L_54, L_55, L_56, L_57, L_58, L_59)
                Case 6
                    pregun(i, 2) = "6"
                    Panel7.Visible = True
                    panel(Val(pregun(i, 1)), P_60, L_60, L_61, L_62, L_63, L_64, L_65, L_66, L_67, L_68, L_69)
                Case 7
                    pregun(i, 2) = "7"
                    Panel8.Visible = True
                    panel(Val(pregun(i, 1)), P_70, L_70, L_71, L_72, L_73, L_74, L_75, L_76, L_77, L_78, L_79)
                Case 8
                    pregun(i, 2) = "8"
                    Panel9.Visible = True
                    panel(Val(pregun(i, 1)), P_80, L_80, L_81, L_82, L_83, L_84, L_85, L_86, L_87, L_88, L_89)
                Case 9
                    pregun(i, 2) = "9"
                    Panel10.Visible = True
                    panel(Val(pregun(i, 1)), P_90, L_90, L_91, L_92, L_93, L_94, L_95, L_96, L_97, L_98, L_99)

            End Select
        Next

        Me.Conn.Close()
    End Sub

    Public Sub panel(ByVal cod As Integer, ByRef l1 As Label, ByRef l2 As Label, ByRef l3 As Label, ByRef l4 As Label, ByRef l5 As Label, ByRef l6 As Label, ByRef l7 As Label, ByRef l8 As Label, ByRef l9 As Label, ByRef l10 As Label, ByRef l11 As Label)
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim i As Integer
        'Response.Write(cod) ' quitar************!!!!!!!!!!!!!!!!!!!!!
        Select Case cod
            Case 1000 To 1999
                queri2 = "select a.pregunta, a.text1 as t1, a.text2 as t2, a.text3 as t3, a.text4 as t4, a.text5 as t5, b.text1,b.text2,b.text3,b.text4,b.text5 from tipo1_pregunta_m2 as a, tipo1_respuesta_m2 as b where b.cod_pregunta=" & cod & " and a.cod_pregunta=b.cod_pregunta and b.cod_res_eva=" & cod_eva_res
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l1.Visible = True
                    l1.Text = Trim(objDR.Item("pregunta"))
                    If objDR.Item("t1").GetType.ToString <> "System.DBNull" And Trim(objDR.Item("text1")) <> "" Then
                        l2.Visible = True
                        l2.Text = Trim(objDR.Item("t1")) & ":"
                        l7.Text = Trim(objDR.Item("text1"))
                        l7.Visible = True
                    End If
                    If objDR.Item("t2").GetType.ToString <> "System.DBNull" And Trim(objDR.Item("text2")) <> "" Then
                        l3.Visible = True
                        l3.Text = Trim(objDR.Item("t2")) & ":"
                        l8.Text = Trim(objDR.Item("text2"))
                        l8.Visible = True
                    End If
                    If objDR.Item("t3").GetType.ToString <> "System.DBNull" And Trim(objDR.Item("text3")) <> "" Then
                        l4.Visible = True
                        l4.Text = Trim(objDR.Item("t3")) & ":"
                        l9.Text = Trim(objDR.Item("text3"))
                        l9.Visible = True
                    End If
                    If objDR.Item("t4").GetType.ToString <> "System.DBNull" And Trim(objDR.Item("text4")) <> "" Then
                        l5.Visible = True
                        l5.Text = Trim(objDR.Item("t4")) & ":"
                        l10.Text = Trim(objDR.Item("text4"))
                        l10.Visible = True
                    End If
                    If objDR.Item("t5").GetType.ToString <> "System.DBNull" And Trim(objDR.Item("text5")) <> "" Then
                        l6.Visible = True
                        l6.Text = Trim(objDR.Item("t5")) & ":"
                        l11.Text = Trim(objDR.Item("text5"))
                        l11.Visible = True
                    End If
                End While
                objDR.Close()
            Case 2000 To 2999
                queri2 = "select a.pregunta, listval from tipo2_pregunta_m2 as a, tipo2_respuesta_m2 as b where b.cod_pregunta=" & cod & " and a.cod_pregunta=b.cod_pregunta and b.cod_res_eva=" & cod_eva_res
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l1.Visible = True
                    l1.Text = Trim(objDR.Item("pregunta"))
                    l2.Visible = True
                    l2.Text = "Respuesta:"
                    l7.Text = Trim(objDR.Item("listval"))
                    l7.Visible = True
                End While
                objDR.Close()
            Case 3000 To 3999
                queri2 = "select pregunta, b.check1, b.check2, b.check3, b.check4, b.check5 from tipo3_pregunta_m2 as a, tipo3_respuesta_m2 as b where b.cod_pregunta=" & cod & " and a.cod_pregunta=b.cod_pregunta and b.cod_res_eva=" & cod_eva_res
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l1.Visible = True
                    l1.Text = Trim(objDR.Item("pregunta"))
                    If objDR.Item("check1").GetType.ToString <> "System.DBNull" Then
                        l2.Visible = True
                        l2.Text = "Respuesta:"
                        l7.Text = Trim(objDR.Item("check1"))
                        l7.Visible = True
                    End If
                    If objDR.Item("check2").GetType.ToString <> "System.DBNull" Then
                        l2.Visible = True
                        l2.Text = "Respuesta:"
                        l7.Text = Trim(objDR.Item("check2"))
                        l7.Visible = True
                    End If
                    If objDR.Item("check3").GetType.ToString <> "System.DBNull" Then
                        l2.Visible = True
                        l2.Text = "Respuesta:"
                        l7.Text = Trim(objDR.Item("check3"))
                        l7.Visible = True
                    End If
                    If objDR.Item("check4").GetType.ToString <> "System.DBNull" Then
                        l2.Visible = True
                        l2.Text = "Respuesta:"
                        l7.Text = Trim(objDR.Item("check4"))
                        l7.Visible = True
                    End If
                    If objDR.Item("check5").GetType.ToString <> "System.DBNull" Then
                        l2.Visible = True
                        l2.Text = "Respuesta:"
                        l7.Text = Trim(objDR.Item("check5"))
                        l7.Visible = True
                    End If
                End While
                objDR.Close()
            Case 4000 To 4999
                queri2 = "select pregunta, radio from tipo4_pregunta_m2 as a, tipo4_respuesta_m2 as b where b.cod_pregunta=" & cod & " and a.cod_pregunta=b.cod_pregunta and b.cod_res_eva=" & cod_eva_res
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l1.Visible = True
                    l1.Text = Trim(objDR.Item("pregunta"))
                    l2.Visible = True
                    l2.Text = "Respuesta:"
                    l7.Text = Trim(objDR.Item("radio"))
                    l7.Visible = True
                End While
                objDR.Close()
            Case 5000 To 5999
                queri2 = "select a.pregunta, a.texto, b.observacion from tipo5_pregunta_m2 as a, tipo5_respuesta_m2 as b where b.cod_pregunta=" & cod & " and a.cod_pregunta=b.cod_pregunta and b.cod_res_eva=" & cod_eva_res
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l1.Visible = True
                    l1.Text = Trim(objDR.Item("pregunta"))
                    l2.Visible = True
                    l2.Text = Trim(objDR.Item("texto")) & ":"
                    l7.Text = Trim(objDR.Item("observacion"))
                    l7.Visible = True
                End While
                objDR.Close()
            Case 0
                l1.Text = ""
                l2.Text = ""
                l3.Text = ""
                l4.Text = ""
                l5.Text = ""
                l6.Text = ""
                l7.Text = ""
                l8.Text = ""
                l9.Text = ""
                l10.Text = ""
                l11.Text = ""
                l1.Visible = False
                l2.Visible = False
                l3.Visible = False
                l4.Visible = False
                l5.Visible = False
                l6.Visible = False
                l7.Visible = False
                l8.Visible = False
                l9.Visible = False
                l10.Visible = False
                l11.Visible = False
        End Select

    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        panel(0, P_10, L_10, L_11, L_12, L_13, L_14, L_15, L_16, L_17, L_18, L_19)
        panel(0, P_20, L_20, L_21, L_22, L_23, L_24, L_25, L_26, L_27, L_28, L_29)
        panel(0, P_30, L_30, L_31, L_32, L_33, L_34, L_35, L_36, L_37, L_38, L_39)
        panel(0, P_40, L_40, L_41, L_42, L_43, L_44, L_45, L_46, L_47, L_48, L_49)
        panel(0, P_50, L_50, L_51, L_52, L_53, L_54, L_55, L_56, L_57, L_58, L_59)
        panel(0, P_60, L_60, L_61, L_62, L_63, L_64, L_65, L_66, L_67, L_68, L_69)
        panel(0, P_70, L_70, L_71, L_72, L_73, L_74, L_75, L_76, L_77, L_78, L_79)
        panel(0, P_80, L_80, L_81, L_82, L_83, L_84, L_85, L_86, L_87, L_88, L_89)
        panel(0, P_90, L_90, L_91, L_92, L_93, L_94, L_95, L_96, L_97, L_98, L_99)
        Panel1.Visible = False
        'Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
        Panel8.Visible = False
        Panel9.Visible = False
        Panel10.Visible = False
        If grupos_t = grupos_Max Then
            Button1.Enabled = False
            Exit Sub
        End If
        'Panel10.Visible = False
        Carga()
    End Sub
End Class
