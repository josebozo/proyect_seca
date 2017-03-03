Imports System.Data.SqlClient

Public Class Realizar_eva2
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents T_eva As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_alumno As System.Web.UI.WebControls.TextBox
    Protected WithEvents Panel2 As System.Web.UI.WebControls.Panel
    Protected WithEvents T_grupo As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_11 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_11 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_12 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_13 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_14 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_15 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_11 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents C_12 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents C_13 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents C_14 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents C_15 As System.Web.UI.WebControls.CheckBox
    Public WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Public Shared grupos_t As Integer = 0
    Protected WithEvents L_pregu1 As System.Web.UI.WebControls.Label
    Protected WithEvents E_11 As System.Web.UI.WebControls.Label
    Protected WithEvents E_12 As System.Web.UI.WebControls.Label
    Protected WithEvents E_13 As System.Web.UI.WebControls.Label
    Protected WithEvents E_14 As System.Web.UI.WebControls.Label
    Protected WithEvents E_15 As System.Web.UI.WebControls.Label
    Public Shared eva_01 As Integer
    Protected WithEvents T_descrip_g As System.Web.UI.WebControls.TextBox
    Public Shared pregun(1, 2) As String
    Protected WithEvents TB_11 As System.Web.UI.WebControls.TextBox
    Protected WithEvents R_11 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents L_pregu2 As System.Web.UI.WebControls.Label
    Protected WithEvents E_21 As System.Web.UI.WebControls.Label
    Protected WithEvents T_21 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_21 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_21 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_21 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_21 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_22 As System.Web.UI.WebControls.Label
    Protected WithEvents T_22 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_22 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_23 As System.Web.UI.WebControls.Label
    Protected WithEvents T_23 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_23 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_24 As System.Web.UI.WebControls.Label
    Protected WithEvents T_24 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_24 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_25 As System.Web.UI.WebControls.Label
    Protected WithEvents T_25 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_25 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel3 As System.Web.UI.WebControls.Panel
    Protected WithEvents L_pregu3 As System.Web.UI.WebControls.Label
    Protected WithEvents E_31 As System.Web.UI.WebControls.Label
    Protected WithEvents T_31 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_31 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_31 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_31 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_31 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_32 As System.Web.UI.WebControls.Label
    Protected WithEvents T_32 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_32 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_33 As System.Web.UI.WebControls.Label
    Protected WithEvents T_33 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_33 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_34 As System.Web.UI.WebControls.Label
    Protected WithEvents T_34 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_34 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_35 As System.Web.UI.WebControls.Label
    Protected WithEvents T_35 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_35 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel4 As System.Web.UI.WebControls.Panel
    Protected WithEvents E_41 As System.Web.UI.WebControls.Label
    Protected WithEvents T_41 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_41 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_41 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_41 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_41 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_42 As System.Web.UI.WebControls.Label
    Protected WithEvents T_42 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_42 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_45 As System.Web.UI.WebControls.Label
    Protected WithEvents T_45 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_45 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel5 As System.Web.UI.WebControls.Panel
    Protected WithEvents E_43 As System.Web.UI.WebControls.Label
    Protected WithEvents T_43 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_43 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_44 As System.Web.UI.WebControls.Label
    Protected WithEvents T_44 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_44 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents L_pregu5 As System.Web.UI.WebControls.Label
    Protected WithEvents E_51 As System.Web.UI.WebControls.Label
    Protected WithEvents T_51 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_51 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_51 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_51 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_51 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_52 As System.Web.UI.WebControls.Label
    Protected WithEvents T_52 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_52 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_53 As System.Web.UI.WebControls.Label
    Protected WithEvents T_53 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_53 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_54 As System.Web.UI.WebControls.Label
    Protected WithEvents T_54 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_54 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_55 As System.Web.UI.WebControls.Label
    Protected WithEvents T_55 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_55 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel6 As System.Web.UI.WebControls.Panel
    Protected WithEvents L_pregu6 As System.Web.UI.WebControls.Label
    Protected WithEvents E_61 As System.Web.UI.WebControls.Label
    Protected WithEvents T_61 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_61 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_61 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_61 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_61 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_62 As System.Web.UI.WebControls.Label
    Protected WithEvents T_62 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_62 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_63 As System.Web.UI.WebControls.Label
    Protected WithEvents T_63 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_63 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_64 As System.Web.UI.WebControls.Label
    Protected WithEvents T_64 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_64 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_65 As System.Web.UI.WebControls.Label
    Protected WithEvents T_65 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_65 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel7 As System.Web.UI.WebControls.Panel
    Protected WithEvents L_pregu7 As System.Web.UI.WebControls.Label
    Protected WithEvents E_71 As System.Web.UI.WebControls.Label
    Protected WithEvents T_71 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_71 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_71 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_71 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_71 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_72 As System.Web.UI.WebControls.Label
    Protected WithEvents T_72 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_72 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_73 As System.Web.UI.WebControls.Label
    Protected WithEvents T_73 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_73 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_74 As System.Web.UI.WebControls.Label
    Protected WithEvents T_74 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_74 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_75 As System.Web.UI.WebControls.Label
    Protected WithEvents T_75 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_75 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel8 As System.Web.UI.WebControls.Panel
    Protected WithEvents L_pregu8 As System.Web.UI.WebControls.Label
    Protected WithEvents E_81 As System.Web.UI.WebControls.Label
    Protected WithEvents T_81 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_81 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_81 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_81 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_81 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_82 As System.Web.UI.WebControls.Label
    Protected WithEvents T_82 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_82 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_83 As System.Web.UI.WebControls.Label
    Protected WithEvents T_83 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_83 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_84 As System.Web.UI.WebControls.Label
    Protected WithEvents T_84 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_84 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_85 As System.Web.UI.WebControls.Label
    Protected WithEvents T_85 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_85 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel9 As System.Web.UI.WebControls.Panel
    Protected WithEvents L_pregu9 As System.Web.UI.WebControls.Label
    Protected WithEvents E_91 As System.Web.UI.WebControls.Label
    Protected WithEvents T_91 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_91 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents C_91 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents R_91 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents TB_91 As System.Web.UI.WebControls.TextBox
    Protected WithEvents E_92 As System.Web.UI.WebControls.Label
    Protected WithEvents T_92 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_92 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_93 As System.Web.UI.WebControls.Label
    Protected WithEvents T_93 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_93 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_94 As System.Web.UI.WebControls.Label
    Protected WithEvents T_94 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_94 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents E_95 As System.Web.UI.WebControls.Label
    Protected WithEvents T_95 As System.Web.UI.WebControls.TextBox
    Protected WithEvents C_95 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Panel10 As System.Web.UI.WebControls.Panel
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents T_obs_grupo As System.Web.UI.WebControls.TextBox
    Public Shared num1 As Integer = 0
    Protected WithEvents L_grupo As System.Web.UI.WebControls.Label
    Public Shared alum_01 As Integer = 0
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents L_pregu4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Public Shared cod_1 As Integer = 0

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            grupos_t = 0
            T_alumno.Text = Request.Params("alumno")
            T_eva.Text = Request.Params("eva")
            alum_01 = Val(Request.Params("cod_a"))
            eva_01 = Request.Params("cod_e")
            cod_1 = 0
            Carga()
            'cod_a cod_e, eva, alumno

            t_error.Visible = False
            Dim queri2 As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            If grupos_t = 1 Then
                Conn.Open()
                queri2 = "insert into Res_eva_M2  (cod_eva, fecha_eva, cod_alumno) values (" & eva_01 & ",'" & Format(Now, "dd/MM/yyyy") & "', '" & alum_01 & "')"
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()

                queri2 = "select cod_res_eva from Res_eva_M2 WHERE cod_eva=" & eva_01 & " AND fecha_eva='" & Format(Now, "dd/MM/yyyy") & "' AND COD_ALUMNO=" & alum_01 & ""
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                cod_1 = Comm.ExecuteScalar()
                Conn.Close()
                Exit Sub
            End If
        End If

    End Sub

    Public Sub panel_1(ByVal cod As Integer)
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim i As Integer
        'Response.Write(cod) ' quitar************!!!!!!!!!!!!!!!!!!!!!
        Select Case cod
            Case 1000 To 1999
                queri2 = "select pregunta,text1,text2,text3,text4,text5 from tipo1_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    Me.L_pregu1.Text = objDR.Item("pregunta")
                    E_11.Text = objDR.Item("text1")
                    E_11.Visible = True
                    T_11.Visible = True
                    If objDR.Item("text2").GetType.ToString <> "System.DBNull" Then
                        E_12.Text = objDR.Item("text2")
                        T_12.Visible = True
                        E_12.Visible = True
                    End If
                    If objDR.Item("text3").GetType.ToString <> "System.DBNull" Then
                        E_13.Text = objDR.Item("text3")
                        T_13.Visible = True
                        E_13.Visible = True
                    End If
                    If objDR.Item("text4").GetType.ToString <> "System.DBNull" Then
                        E_14.Text = objDR.Item("text4")
                        T_14.Visible = True
                        E_14.Visible = True
                    End If
                    If objDR.Item("text5").GetType.ToString <> "System.DBNull" Then
                        E_15.Text = objDR.Item("text5")
                        T_15.Visible = True
                        E_15.Visible = True
                    End If
                End While

            Case 2000 To 2999
                queri2 = "select pregunta,listval1,listval2,listval3,listval4,listval5,listval6 from tipo2_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    Me.L_pregu1.Text = objDR.Item("pregunta")
                    L_11.Visible = True
                    E_11.Text = "Respuesta:"
                    E_11.Visible = True
                    L_11.Items.Add(objDR.Item("listval1"))
                    L_11.Items.Add(objDR.Item("listval2"))

                    If objDR.Item("listval3").GetType.ToString <> "System.DBNull" Then
                        L_11.Items.Add(objDR.Item("listval3"))
                    End If
                    If objDR.Item("listval4").GetType.ToString <> "System.DBNull" Then
                        L_11.Items.Add(objDR.Item("listval4"))
                    End If
                    If objDR.Item("listval5").GetType.ToString <> "System.DBNull" Then
                        L_11.Items.Add(objDR.Item("listval5"))
                    End If
                    If objDR.Item("listval6").GetType.ToString <> "System.DBNull" Then
                        L_11.Items.Add(objDR.Item("listval6"))
                    End If
                End While

            Case 3000 To 3999
                queri2 = "select pregunta, check1, check2, check3, check4, check5 from tipo3_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    Me.L_pregu1.Text = objDR.Item("pregunta")
                    E_11.Text = objDR.Item("check1")
                    E_11.Visible = True
                    C_11.Visible = True
                    E_12.Text = objDR.Item("check2")
                    C_12.Visible = True
                    E_12.Visible = True

                    If objDR.Item("check3").GetType.ToString <> "System.DBNull" Then
                        E_13.Text = objDR.Item("check3")
                        C_13.Visible = True
                        E_13.Visible = True
                    End If
                    If objDR.Item("check4").GetType.ToString <> "System.DBNull" Then
                        E_14.Text = objDR.Item("check4")
                        C_14.Visible = True
                        E_14.Visible = True
                    End If
                    If objDR.Item("check5").GetType.ToString <> "System.DBNull" Then
                        E_15.Text = objDR.Item("check5")
                        C_15.Visible = True
                        E_15.Visible = True
                    End If
                End While

            Case 4000 To 4999
                queri2 = "select pregunta, radio1, radio2, radio3, radio4, radio5 from tipo4_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    Me.L_pregu1.Text = objDR.Item("pregunta")
                    R_11.Visible = True
                    E_11.Text = "Respuesta:"
                    E_11.Visible = True
                    R_11.Items.Add(objDR.Item("radio1"))
                    R_11.Items.Add(objDR.Item("radio2"))

                    If objDR.Item("radio3").GetType.ToString <> "System.DBNull" Then
                        R_11.Items.Add(objDR.Item("radio3"))
                    End If
                    If objDR.Item("radio4").GetType.ToString <> "System.DBNull" Then
                        R_11.Items.Add(objDR.Item("radio4"))
                    End If
                    If objDR.Item("radio5").GetType.ToString <> "System.DBNull" Then
                        R_11.Items.Add(objDR.Item("radio5"))
                    End If
                End While



            Case 0
                T_11.Text = ""
                T_12.Text = ""
                T_13.Text = ""
                T_14.Text = ""
                T_15.Text = ""
                T_11.Visible = False
                T_12.Visible = False
                T_13.Visible = False
                T_14.Visible = False
                T_15.Visible = False
                E_11.Text = ""
                E_12.Text = ""
                E_13.Text = ""
                E_14.Text = ""
                E_15.Text = ""
                E_11.Visible = False
                E_12.Visible = False
                E_13.Visible = False
                E_14.Visible = False
                E_15.Visible = False
                L_pregu1.Visible = False
                L_11.Visible = False
                L_11.Items.Clear()
                C_12.Visible = False
                C_13.Visible = False
                C_14.Visible = False
                C_15.Visible = False
                R_11.Visible = False
                R_11.Items.Clear()
                TB_11.Visible = False
                TB_11.Text = ""

        End Select
        objDR.Close()
    End Sub

    Public Sub panel_2(ByVal cod As Integer, ByRef t_1 As TextBox, ByRef t_2 As TextBox, ByRef t_3 As TextBox, ByRef t_4 As TextBox, ByRef t_5 As TextBox, ByRef l_p As Label, ByRef l_1 As Label, ByRef l_2 As Label, ByRef l_3 As Label, ByRef l_4 As Label, ByRef l_5 As Label, ByRef LD_1 As DropDownList, ByRef c_1 As CheckBox, ByRef c_2 As CheckBox, ByRef c_3 As CheckBox, ByRef c_4 As CheckBox, ByRef c_5 As CheckBox, ByRef r_1 As RadioButtonList, ByRef tb As TextBox)
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim i As Integer
        'Response.Write(cod) ' quitar************!!!!!!!!!!!!!!!!!!!!!
        Select Case cod
            Case 1000 To 1999
                queri2 = "select pregunta,text1,text2,text3,text4,text5 from tipo1_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l_p.Visible = True
                    l_p.Text = Trim(objDR.Item("pregunta"))
                    l_1.Text = Trim(objDR.Item("text1"))
                    l_1.Visible = True
                    t_1.Visible = True
                    If objDR.Item("text2").GetType.ToString <> "System.DBNull" Then
                        l_2.Text = Trim(objDR.Item("text2"))
                        t_2.Visible = True
                        l_2.Visible = True
                    End If
                    If objDR.Item("text3").GetType.ToString <> "System.DBNull" Then
                        l_3.Text = Trim(objDR.Item("text3"))
                        t_3.Visible = True
                        l_3.Visible = True
                    End If
                    If objDR.Item("text4").GetType.ToString <> "System.DBNull" Then
                        l_4.Text = Trim(objDR.Item("text4"))
                        t_4.Visible = True
                        l_4.Visible = True
                    End If
                    If objDR.Item("text5").GetType.ToString <> "System.DBNull" Then
                        l_5.Text = Trim(objDR.Item("text5"))
                        t_5.Visible = True
                        l_5.Visible = True
                    End If
                End While
                objDR.Close()
            Case 2000 To 2999
                queri2 = "select pregunta,listval1,listval2,listval3,listval4,listval5,listval6 from tipo2_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l_p.Visible = True
                    l_p.Text = Trim(objDR.Item("pregunta"))
                    LD_1.Visible = True
                    l_1.Text = "Respuesta:"
                    l_1.Visible = True
                    LD_1.Items.Add("")
                    LD_1.Items.Add(Trim(objDR.Item("listval1")))
                    LD_1.Items.Add(Trim(objDR.Item("listval2")))

                    If objDR.Item("listval3").GetType.ToString <> "System.DBNull" Then
                        LD_1.Items.Add(Trim(objDR.Item("listval3")))
                    End If
                    If objDR.Item("listval4").GetType.ToString <> "System.DBNull" Then
                        LD_1.Items.Add(Trim(objDR.Item("listval4")))
                    End If
                    If objDR.Item("listval5").GetType.ToString <> "System.DBNull" Then
                        LD_1.Items.Add(Trim(objDR.Item("listval5")))
                    End If
                    If objDR.Item("listval6").GetType.ToString <> "System.DBNull" Then
                        LD_1.Items.Add(Trim(objDR.Item("listval6")))
                    End If
                End While
                objDR.Close()
            Case 3000 To 3999
                queri2 = "select pregunta, check1, check2, check3, check4, check5 from tipo3_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l_p.Visible = True
                    l_p.Text = Trim(objDR.Item("pregunta"))
                    l_1.Text = Trim(objDR.Item("check1"))
                    l_1.Visible = True
                    c_1.Visible = True
                    l_2.Text = Trim(objDR.Item("check2"))
                    c_2.Visible = True
                    l_2.Visible = True

                    If objDR.Item("check3").GetType.ToString <> "System.DBNull" Then
                        l_3.Text = Trim(objDR.Item("check3"))
                        c_3.Visible = True
                        l_3.Visible = True
                    End If
                    If objDR.Item("check4").GetType.ToString <> "System.DBNull" Then
                        l_4.Text = Trim(objDR.Item("check4"))
                        c_4.Visible = True
                        l_4.Visible = True
                    End If
                    If objDR.Item("check5").GetType.ToString <> "System.DBNull" Then
                        l_5.Text = Trim(objDR.Item("check5"))
                        c_5.Visible = True
                        l_5.Visible = True
                    End If
                End While
                objDR.Close()
            Case 4000 To 4999
                queri2 = "select pregunta, radio1, radio2, radio3, radio4, radio5 from tipo4_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l_p.Visible = True
                    l_p.Text = Trim(objDR.Item("pregunta"))
                    r_1.Visible = True
                    l_1.Text = "Respuesta:"
                    l_1.Visible = True
                    r_1.Items.Add(Trim(objDR.Item("radio1")))
                    r_1.Items.Add(Trim(objDR.Item("radio2")))

                    If objDR.Item("radio3").GetType.ToString <> "System.DBNull" Then
                        r_1.Items.Add(Trim(objDR.Item("radio3")))
                    End If
                    If objDR.Item("radio4").GetType.ToString <> "System.DBNull" Then
                        r_1.Items.Add(Trim(objDR.Item("radio4")))
                    End If
                    If objDR.Item("radio5").GetType.ToString <> "System.DBNull" Then
                        r_1.Items.Add(Trim(objDR.Item("radio5")))
                    End If
                End While
                objDR.Close()
            Case 5000 To 5999
                queri2 = "select pregunta, texto from tipo5_pregunta_m2 where cod_pregunta=" & cod
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                objDR = Comm.ExecuteReader()
                While objDR.Read
                    l_p.Visible = True
                    l_p.Text = Trim(objDR.Item("pregunta"))
                    tb.Visible = True
                    l_1.Text = Trim(objDR.Item("texto"))
                    l_1.Visible = True
                End While
                objDR.Close()

            Case 0
                t_1.Text = ""
                t_2.Text = ""
                t_3.Text = ""
                t_4.Text = ""
                t_5.Text = ""
                t_1.Visible = False
                t_2.Visible = False
                t_3.Visible = False
                t_4.Visible = False
                t_5.Visible = False
                l_1.Text = ""
                l_2.Text = ""
                l_3.Text = ""
                l_4.Text = ""
                l_5.Text = ""
                l_1.Visible = False
                l_2.Visible = False
                l_3.Visible = False
                l_4.Visible = False
                l_5.Visible = False
                l_p.Visible = False
                LD_1.Items.Clear()
                LD_1.Visible = False
                c_1.Visible = False
                c_2.Visible = False
                c_3.Visible = False
                c_4.Visible = False
                c_5.Visible = False
                r_1.Items.Clear()
                r_1.Visible = False
                tb.Text = ""
                tb.Visible = False
        End Select

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
        Dim cant As Integer = Comm.ExecuteScalar()
        If grupos_t <= cant Then
            grupos_t = grupos_t + 1
            If grupos_t = cant Then
                Button2.Text = "Ultimo Grupo"
            End If
        Else
            Exit Sub
        End If
        'grupos_t = 2 ' quitar ************************
        queri = "select count(cod_pregunta) from preguntas_m2 where cod_eva=" & eva_01 & " and grupo=" & grupos_t
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        num1 = Comm.ExecuteScalar()
        ReDim pregun(num1, 2)

        'select grupo, Descripcion from preguntas_m2 where cod_eva=

        '---
        queri = "select Descripcion from preguntas_m2 where cod_eva=" & eva_01 & " and grupo=" & grupos_t & " group by Descripcion"
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Me.T_descrip_g.Text = Comm.ExecuteScalar()
        Me.T_grupo.Text = grupos_t
        queri = "select cod_pregunta from preguntas_m2 where cod_eva=" & eva_01 & " and grupo=" & grupos_t & " order by cod_pre_eva"
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        objDR = Comm.ExecuteReader()
        Dim i As Integer = 0
        While objDR.Read
            i = i + 1
            pregun(i, 1) = objDR.Item("cod_pregunta")
        End While
        objDR.Close()
        For i = 1 To num1
            Select Case i
                Case 1
                    pregun(i, 2) = "1"
                    Panel2.Visible = True
                    'panel_1(Val(pregun(i, 1)))
                    panel_2(Val(pregun(i, 1)), T_11, T_12, T_13, T_14, T_15, L_pregu1, E_11, E_12, E_13, E_14, E_15, L_11, C_11, C_12, C_13, C_14, C_15, R_11, TB_11)
                Case 2
                    pregun(i, 2) = "2"
                    Panel3.Visible = True
                    panel_2(Val(pregun(i, 1)), T_21, T_22, T_23, T_24, T_25, L_pregu2, E_21, E_22, E_23, E_24, E_25, L_21, C_21, C_22, C_23, C_24, C_25, R_21, TB_21)
                Case 3
                    pregun(i, 2) = "3"
                    Panel4.Visible = True
                    panel_2(Val(pregun(i, 1)), T_31, T_32, T_33, T_34, T_35, L_pregu3, E_31, E_32, E_33, E_34, E_35, L_31, C_31, C_32, C_33, C_34, C_35, R_31, TB_31)
                Case 4
                    pregun(i, 2) = "4"
                    Panel5.Visible = True
                    panel_2(Val(pregun(i, 1)), T_41, T_42, T_43, T_44, T_45, L_pregu4, E_41, E_42, E_43, E_44, E_45, L_41, C_41, C_42, C_43, C_44, C_45, R_41, TB_41)
                Case 5
                    pregun(i, 2) = "5"
                    Panel6.Visible = True
                    panel_2(Val(pregun(i, 1)), T_51, T_52, T_53, T_54, T_55, L_pregu5, E_51, E_52, E_53, E_54, E_55, L_51, C_51, C_52, C_53, C_54, C_55, R_51, TB_51)
                Case 6
                    pregun(i, 2) = "6"
                    Panel7.Visible = True
                    panel_2(Val(pregun(i, 1)), T_61, T_62, T_63, T_64, T_65, L_pregu6, E_61, E_62, E_63, E_64, E_65, L_61, C_61, C_62, C_63, C_64, C_65, R_61, TB_61)
                Case 7
                    pregun(i, 2) = "7"
                    Panel8.Visible = True
                    panel_2(Val(pregun(i, 1)), T_71, T_72, T_73, T_74, T_75, L_pregu7, E_71, E_72, E_73, E_74, E_75, L_71, C_71, C_72, C_73, C_74, C_75, R_71, TB_71)
                Case 8
                    pregun(i, 2) = "8"
                    Panel9.Visible = True
                    panel_2(Val(pregun(i, 1)), T_81, T_82, T_83, T_84, T_85, L_pregu8, E_81, E_82, E_83, E_84, E_85, L_81, C_81, C_82, C_83, C_84, C_85, R_81, TB_81)
                Case 9
                    pregun(i, 2) = "9"
                    Panel10.Visible = True
                    panel_2(Val(pregun(i, 1)), T_91, T_92, T_93, T_94, T_95, L_pregu9, E_91, E_92, E_93, E_94, E_95, L_91, C_91, C_92, C_93, C_94, C_95, R_91, TB_91)





            End Select
        Next
        Me.Conn.Close()




    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim i As Integer
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Conn.Open()
        If Button2.Text = "Finalizar" Then
            Me.T_grupo.Text = "Final"
            T_descrip_g.Text = "Final"
            queri2 = "update Res_eva_M2 set diagnostico='" & T_obs_grupo.Text & "' where cod_res_eva=" & cod_1
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
            Dim cuantos As Integer = 0
            queri2 = "select count(cod_res) from tipo1_respuesta_m2 where cod_res_eva=" & cod_1
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
            cuantos = cuantos + Val(Comm.ExecuteScalar)
            queri2 = "select count(cod_res) from tipo2_respuesta_m2 where cod_res_eva=" & cod_1
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            cuantos = cuantos + Val(Comm.ExecuteScalar)
            Comm.ExecuteNonQuery()
            queri2 = "select count(cod_res) from tipo3_respuesta_m2 where cod_res_eva=" & cod_1
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            cuantos = cuantos + Val(Comm.ExecuteScalar)
            Comm.ExecuteNonQuery()
            queri2 = "select count(cod_res) from tipo4_respuesta_m2 where cod_res_eva=" & cod_1
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            cuantos = cuantos + Val(Comm.ExecuteScalar)
            Comm.ExecuteNonQuery()
            queri2 = "select count(cod_res) from tipo5_respuesta_m2 where cod_res_eva=" & cod_1
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
            cuantos = cuantos + Val(Comm.ExecuteScalar)
            'Response.Write("- -- -  " & cuantos)
            If cuantos = 0 Then
                queri2 = "delete from Res_eva_M2 where cod_res_eva=" & cod_1
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                queri2 = "delete from grupo_respuestas_M2 where cod_res_eva=" & cod_1
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
                t_error.Visible = True
                t_error.Text = "La Evaluación no fue respondida de la forma correcta intente de nuevo"
                Button2.Enabled = False
                Exit Sub
            End If
            Response.Redirect("..\intro2.aspx")

        End If
        If Trim(T_obs_grupo.Text) <> "" Then
            queri2 = "select count(cod_grupo) from grupo_respuestas_M2 where cod_res_eva=" & cod_1 & " and grupo=" & grupos_t
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
            Dim ver As Integer = Comm.ExecuteScalar
            If ver = 0 Then
                queri2 = "insert into grupo_respuestas_M2 (cod_res_eva, observacion, grupo) values (" & cod_1 & ",'" & T_obs_grupo.Text & "', '" & grupos_t & "')"
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
            Else
                queri2 = "update grupo_respuestas_M2 set observacion='" & T_obs_grupo.Text & "' where cod_res_eva=" & cod_1 & "and grupo=" & grupos_t
                'Response.Write(queri2)
                Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                Comm.ExecuteNonQuery()
            End If

        End If
        Conn.Close()
        For i = 1 To num1
            Select Case i
                Case 1
                    guardar(Val(pregun(i, 1)), T_11, T_12, T_13, T_14, T_15, L_pregu1, E_11, E_12, E_13, E_14, E_15, L_11, C_11, C_12, C_13, C_14, C_15, R_11, TB_11)
                Case 2
                    guardar(Val(pregun(i, 1)), T_21, T_22, T_23, T_24, T_25, L_pregu2, E_21, E_22, E_23, E_24, E_25, L_21, C_21, C_22, C_23, C_24, C_25, R_21, TB_21)
                Case 3
                    guardar(Val(pregun(i, 1)), T_31, T_32, T_33, T_34, T_35, L_pregu3, E_31, E_32, E_33, E_34, E_35, L_31, C_31, C_32, C_33, C_34, C_35, R_31, TB_31)
                Case 4
                    guardar(Val(pregun(i, 1)), T_41, T_42, T_43, T_44, T_45, L_pregu4, E_41, E_42, E_43, E_44, E_45, L_41, C_41, C_42, C_43, C_44, C_45, R_41, TB_41)
                Case 5
                    guardar(Val(pregun(i, 1)), T_51, T_52, T_53, T_54, T_55, L_pregu5, E_51, E_52, E_53, E_54, E_55, L_51, C_51, C_52, C_53, C_54, C_55, R_51, TB_51)
                Case 6
                    guardar(Val(pregun(i, 1)), T_61, T_62, T_63, T_64, T_65, L_pregu6, E_61, E_62, E_63, E_64, E_65, L_61, C_61, C_62, C_63, C_64, C_65, R_61, TB_61)
                Case 7
                    guardar(Val(pregun(i, 1)), T_71, T_72, T_73, T_74, T_75, L_pregu7, E_71, E_72, E_73, E_74, E_75, L_71, C_71, C_72, C_73, C_74, C_75, R_71, TB_71)
                Case 8
                    guardar(Val(pregun(i, 1)), T_81, T_82, T_83, T_84, T_85, L_pregu8, E_81, E_82, E_83, E_84, E_85, L_81, C_81, C_82, C_83, C_84, C_85, R_81, TB_81)
                Case 9
                    guardar(Val(pregun(i, 1)), T_91, T_92, T_93, T_94, T_95, L_pregu9, E_91, E_92, E_93, E_94, E_95, L_91, C_91, C_92, C_93, C_94, C_95, R_91, TB_91)
            End Select
        Next

        limpiar()
        If Button2.Text = "Ultimo Grupo" Then
            L_grupo.Text = "Diagnostico Preliminar:"
            Button2.Text = "Finalizar"
            Me.T_grupo.Text = "Final"
            T_descrip_g.Text = "Final"
            Exit Sub
        End If
        If Button2.Text <> "Finalizar" Then
            Carga()
        End If
        'VENUSPLANET5 - venusplanet2002arrobahotmail.com

        'levona20

    End Sub

    Public Sub limpiar()
        If Panel2.Visible Then panel_2(0, T_11, T_12, T_13, T_14, T_15, L_pregu1, E_11, E_12, E_13, E_14, E_15, L_11, C_11, C_12, C_13, C_14, C_15, R_11, TB_11)
        If Panel3.Visible Then panel_2(0, T_21, T_22, T_23, T_24, T_25, L_pregu2, E_21, E_22, E_23, E_24, E_25, L_21, C_21, C_22, C_23, C_24, C_25, R_21, TB_21)
        If Panel4.Visible Then panel_2(0, T_31, T_32, T_33, T_34, T_35, L_pregu3, E_31, E_32, E_33, E_34, E_35, L_31, C_31, C_32, C_33, C_34, C_35, R_31, TB_31)
        If Panel5.Visible Then panel_2(0, T_41, T_42, T_43, T_44, T_45, L_pregu4, E_41, E_42, E_43, E_44, E_45, L_41, C_41, C_42, C_43, C_44, C_45, R_41, TB_41)
        If Panel6.Visible Then panel_2(0, T_51, T_52, T_53, T_54, T_55, L_pregu5, E_51, E_52, E_53, E_54, E_55, L_51, C_51, C_52, C_53, C_54, C_55, R_51, TB_51)
        If Panel7.Visible Then panel_2(0, T_61, T_62, T_63, T_64, T_65, L_pregu6, E_61, E_62, E_63, E_64, E_65, L_61, C_61, C_62, C_63, C_64, C_65, R_61, TB_61)
        If Panel8.Visible Then panel_2(0, T_71, T_72, T_73, T_74, T_75, L_pregu7, E_71, E_72, E_73, E_74, E_75, L_71, C_71, C_72, C_73, C_74, C_75, R_71, TB_71)
        If Panel9.Visible Then panel_2(0, T_81, T_82, T_83, T_84, T_85, L_pregu8, E_81, E_82, E_83, E_84, E_85, L_81, C_81, C_82, C_83, C_84, C_85, R_81, TB_81)
        If Panel10.Visible Then panel_2(0, T_91, T_92, T_93, T_94, T_95, L_pregu9, E_91, E_92, E_93, E_94, E_95, L_91, C_91, C_92, C_93, C_94, C_95, R_91, TB_91)
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False
        Panel7.Visible = False
        Panel8.Visible = False
        Panel9.Visible = False
        T_obs_grupo.Text = ""

    End Sub

    Public Sub guardar(ByVal cod As Integer, ByRef t_1 As TextBox, ByRef t_2 As TextBox, ByRef t_3 As TextBox, ByRef t_4 As TextBox, ByRef t_5 As TextBox, ByRef l_p As Label, ByRef l_1 As Label, ByRef l_2 As Label, ByRef l_3 As Label, ByRef l_4 As Label, ByRef l_5 As Label, ByRef LD_1 As DropDownList, ByRef c_1 As CheckBox, ByRef c_2 As CheckBox, ByRef c_3 As CheckBox, ByRef c_4 As CheckBox, ByRef c_5 As CheckBox, ByRef r_1 As RadioButtonList, ByRef tb As TextBox)
        Dim queri2, string1, string2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim i As Integer
        'Response.Write(cod) ' quitar************!!!!!!!!!!!!!!!!!!!!!
        Conn.Open()
        Select Case cod
            Case 1000 To 1999
                If Trim(t_1.Text) <> "" Or Trim(t_2.Text) <> "" Or Trim(t_3.Text) <> "" Or Trim(t_4.Text) <> "" Or Trim(t_5.Text) <> "" Then
                    string1 = "Cod_res_eva, Cod_pregunta, text1,text2,text3,text4,text5"
                    string2 = cod_1 & "," & cod & ",'" & t_1.Text & "','" & t_2.Text & "','" & t_3.Text & "','" & t_4.Text & "','" & t_5.Text & "'"
                    queri2 = "INSERT into  Tipo1_respuesta_M2 (" & string1 & ") values (" & string2 & ")"
                    'Response.Write(queri2)
                    Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                    Comm.ExecuteNonQuery()
                End If

            Case 2000 To 2999
                If Trim(LD_1.SelectedItem.Value) <> "" Then
                    string1 = "Cod_res_eva, Cod_pregunta, listval"
                    string2 = cod_1 & "," & cod & ",'" & LD_1.SelectedItem.Value & "'"
                    queri2 = "INSERT into  Tipo2_respuesta_M2 (" & string1 & ") values (" & string2 & ")"
                    'Response.Write(queri2)
                    Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                    Comm.ExecuteNonQuery()
                End If

            Case 3000 To 3999
                If c_1.Checked Or c_2.Checked Or c_3.Checked Or c_4.Checked Or c_5.Checked Then
                    string1 = "Cod_res_eva, Cod_pregunta" ', text1,text2,text3,text4,text5"
                    string2 = cod_1 & "," & cod '& "," & t_1.Text & "','" & t_2.Text & "','" & t_3.Text & "','" & t_4.Text & "','" & t_5.Text & "'"
                    If c_1.Checked Then
                        string1 = string1 & ", check1"
                        string2 = string2 & ",'" & l_1.Text() & "'"
                    End If
                    If c_2.Checked Then
                        string1 = string1 & ", check2"
                        string2 = string2 & ",'" & l_2.Text() & "'"
                    End If
                    If c_3.Checked Then
                        string1 = string1 & ", check3"
                        string2 = string2 & ",'" & l_3.Text() & "'"
                    End If
                    If c_4.Checked Then
                        string1 = string1 & ", check4"
                        string2 = string2 & ",'" & l_4.Text() & "'"
                    End If
                    If c_5.Checked Then
                        string1 = string1 & ", check5"
                        string2 = string2 & ",'" & l_5.Text() & "'"
                    End If

                    queri2 = "INSERT into  Tipo3_respuesta_M2 (" & string1 & ") values (" & string2 & ")"
                    'Response.Write(queri2)
                    Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                    Comm.ExecuteNonQuery()
                End If


            Case 4000 To 4999
                If r_1.SelectedIndex > 1 Then
                    string1 = "Cod_res_eva, Cod_pregunta, radio"
                    string2 = cod_1 & "," & cod & ",'" & r_1.SelectedItem.Value & "'"
                    queri2 = "INSERT into  Tipo4_respuesta_M2 (" & string1 & ") values (" & string2 & ")"
                    'Response.Write(queri2)
                    Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                    Comm.ExecuteNonQuery()
                End If

            Case 5000 To 5999
                If tb.Text <> "" Then
                    string1 = "Cod_res_eva, Cod_pregunta, observacion"
                    string2 = cod_1 & "," & cod & ",'" & tb.Text & "'"
                    queri2 = "INSERT into  Tipo5_respuesta_M2 (" & string1 & ") values (" & string2 & ")"
                    'Response.Write(queri2)
                    Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
                    Comm.ExecuteNonQuery()
                End If

            Case 0
                t_1.Text = ""
                t_2.Text = ""
                t_3.Text = ""
                t_4.Text = ""
                t_5.Text = ""
                t_1.Visible = False
                t_2.Visible = False
                t_3.Visible = False
                t_4.Visible = False
                t_5.Visible = False
                l_1.Text = ""
                l_2.Text = ""
                l_3.Text = ""
                l_4.Text = ""
                l_5.Text = ""
                l_1.Visible = False
                l_2.Visible = False
                l_3.Visible = False
                l_4.Visible = False
                l_5.Visible = False
                l_p.Visible = False
                LD_1.Items.Clear()
                LD_1.Visible = False
                c_1.Visible = False
                c_2.Visible = False
                c_3.Visible = False
                c_4.Visible = False
                c_5.Visible = False
                r_1.Items.Clear()
                r_1.Visible = False
                tb.Text = ""
                tb.Visible = False
        End Select
        Conn.Close()



    End Sub


End Class
