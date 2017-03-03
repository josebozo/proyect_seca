Public Class Crear_formato2
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents LinkButton2 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents L_grupo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_descrip As System.Web.UI.WebControls.TextBox
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents L_grupo_selec As System.Web.UI.WebControls.ListBox
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents DropDownList1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Public Shared eva As Integer
    Public Shared DS As System.Data.DataSet
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Public Shared DS2 As System.Data.DataSet
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "DECLARE @test int SET @test = 1 SELECT Cod_pregunta ,  pregunta ,  tipo = 'Texto'" & _
        " FROM Tipo1_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
        "po1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
        "AND b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Lista' F" & _
        "ROM tipo2_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo" & _
        "2_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AN" & _
        "D b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Check' FRO" & _
        "M Tipo3_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo3_" & _
        "pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND " & _
        "b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Radio' FROM " & _
        "Tipo4_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo4_pr" & _
        "egunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b." & _
        "cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Observaciones'" & _
        " FROM Tipo5_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
        "po5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
        "AND b.cod_eva = @test) ORDER BY Cod_pregunta "
        Me.SqlSelectCommand1.Connection = Me.Conn
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "DECLARE @test int DECLARE @grupo int SET @test = 2 SET @grupo = 1 SELECT 'Codigo " & _
        "de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo" & _
        ": Texto' AS 'Text' ,  cod_pregunta FROM Tipo1_pregunta_M2 WHERE Cod_pregunta IN " & _
        "(SELECT a.Cod_pregunta FROM Tipo1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a." & _
        "Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) UNION " & _
        "SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + preg" & _
        "unta + ' - Tipo: Lista' AS 'Text' ,  cod_pregunta FROM Tipo2_pregunta_M2 WHERE C" & _
        "od_pregunta IN (SELECT a.Cod_pregunta FROM Tipo2_pregunta_M2 AS a ,  preguntas_m" & _
        "2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo =" & _
        " @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pr" & _
        "egunta:' + pregunta + ' - Tipo: Check' AS 'Text' ,  cod_pregunta FROM Tipo3_preg" & _
        "unta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM Tipo3_pregunta_M2 AS a" & _
        " ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @tes" & _
        "t AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_preg" & _
        "unta)) + ' - Pregunta:' + pregunta + ' - Tipo: Radio Boton' AS 'Text' ,  cod_pre" & _
        "gunta FROM Tipo4_pregunta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM T" & _
        "ipo4_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta" & _
        " AND b.cod_eva = @test AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: '" & _
        " + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo: Observación'" & _
        " AS 'Text' ,  cod_pregunta FROM Tipo5_pregunta_M2 WHERE Cod_pregunta IN (SELECT " & _
        "a.Cod_pregunta FROM Tipo5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_preg" & _
        "unta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) "
        Me.SqlSelectCommand2.Connection = Me.Conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            'Dim queri As String
            eva = Val(Request.Params("cod"))
            'Response.Write(Request.Params("cod") & " -" & eva)
            If eva = 0 Then Exit Sub
            Me.SqlSelectCommand1.CommandText = "DECLARE @test int SET @test = " & Str(eva) & " SELECT Cod_pregunta ,  pregunta ,  tipo = 'Texto'" & _
            " FROM Tipo1_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
            "po1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
            "AND b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Lista' F" & _
            "ROM tipo2_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo" & _
            "2_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AN" & _
            "D b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Check' FRO" & _
            "M Tipo3_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo3_" & _
            "pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND " & _
            "b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Radio' FROM " & _
            "Tipo4_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo4_pr" & _
            "egunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b." & _
            "cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Observaciones'" & _
            " FROM Tipo5_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
            "po5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
            "AND b.cod_eva = @test) ORDER BY Cod_pregunta "
            'Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            Grid1.DataSource = DS.Tables("Tables").DefaultView
            Grid1.DataBind()
        End If
    End Sub

    Sub Grid_Command(ByVal sender As Object, ByVal e As DataGridCommandEventArgs)
        If Trim(e.CommandName) = "Page" Then Exit Sub
        If Trim(T_descrip.Text) = "" Then
            Me.Label2.Text = "Falta Descripción del grupo"
            Me.Label2.Visible = True
            Exit Sub
        End If
        If Trim(e.CommandName) = "Select" Then
            Label2.Text = ""
            'Response.Write("COÑO!!!!")
            Me.Label2.Visible = False
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim queri, queri2 As String
            queri = ""
            queri2 = ""
            Conn.Open()
            queri2 = Str(eva) & "," & e.Item.Cells(3).Text & ", " & Val(Me.L_grupo.SelectedItem.Value) & ", '" & Me.T_descrip.Text & "'"
            queri = "INSERT into Preguntas_M2 (cod_eva, cod_pregunta, grupo, Descripcion) values (" & queri2 & ")"

            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            Me.SqlSelectCommand1.CommandText = "DECLARE @test int SET @test = " & Str(eva) & " SELECT Cod_pregunta ,  pregunta ,  tipo = 'Texto'" & _
            " FROM Tipo1_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
            "po1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
            "AND b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Lista' F" & _
            "ROM tipo2_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo" & _
            "2_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AN" & _
            "D b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Check' FRO" & _
            "M Tipo3_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo3_" & _
            "pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND " & _
            "b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Radio' FROM " & _
            "Tipo4_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo4_pr" & _
            "egunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b." & _
            "cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Observaciones'" & _
            " FROM Tipo5_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
            "po5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
            "AND b.cod_eva = @test) ORDER BY Cod_pregunta "
            'Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            Grid1.DataSource = DS.Tables("Tables").DefaultView
            Grid1.DataBind()
            Me.Grid1.SelectedIndex = -1

            Me.SqlSelectCommand2.CommandText = "DECLARE @test int DECLARE @grupo int SET @test = " & Str(eva) & " SET @grupo = " & Str(Val(Me.L_grupo.SelectedItem.Value)) & " SELECT 'Codigo " & _
            "de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo" & _
            ": Texto' AS 'Text' ,  cod_pregunta FROM Tipo1_pregunta_M2 WHERE Cod_pregunta IN " & _
            "(SELECT a.Cod_pregunta FROM Tipo1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a." & _
            "Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) UNION " & _
            "SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + preg" & _
            "unta + ' - Tipo: Lista' AS 'Text' ,  cod_pregunta FROM Tipo2_pregunta_M2 WHERE C" & _
            "od_pregunta IN (SELECT a.Cod_pregunta FROM Tipo2_pregunta_M2 AS a ,  preguntas_m" & _
            "2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo =" & _
            " @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pr" & _
            "egunta:' + pregunta + ' - Tipo: Check' AS 'Text' ,  cod_pregunta FROM Tipo3_preg" & _
            "unta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM Tipo3_pregunta_M2 AS a" & _
            " ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @tes" & _
            "t AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_preg" & _
            "unta)) + ' - Pregunta:' + pregunta + ' - Tipo: Radio Boton' AS 'Text' ,  cod_pre" & _
            "gunta FROM Tipo4_pregunta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM T" & _
            "ipo4_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta" & _
            " AND b.cod_eva = @test AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: '" & _
            " + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo: Observación'" & _
            " AS 'Text' ,  cod_pregunta FROM Tipo5_pregunta_M2 WHERE Cod_pregunta IN (SELECT " & _
            "a.Cod_pregunta FROM Tipo5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_preg" & _
            "unta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) "

            'Dim DS2 As System.Data.DataSet
            DS2 = New System.Data.DataSet()
            SqlDataAdapter2.Fill(DS2, "Tables")
            Me.L_grupo_selec.DataSource = DS2.Tables("Tables").DefaultView
            L_grupo_selec.DataTextField = "text"
            Me.L_grupo_selec.DataBind()

            Me.DropDownList1().DataSource = DS2.Tables("Tables").DefaultView
            DropDownList1().DataTextField = "cod_pregunta"
            Me.DropDownList1().DataBind()
            If L_grupo_selec.Items.Count = 9 Then
                Me.Grid1.Enabled = False
                Label2.Text = "SE LLEGO AL MAXIMO DE PREGUNTAS POR GRUPO"
            End If

            Conn.Close()
        End If
    End Sub

    Private Sub L_grupo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_grupo.SelectedIndexChanged
        Me.SqlSelectCommand2.CommandText = "DECLARE @test int DECLARE @grupo int SET @test = " & Str(eva)  & " SET @grupo = " & Val(Me.L_grupo.SelectedItem.Value) & " SELECT 'Codigo " & _
         "de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo" & _
         ": Texto' AS 'Text' ,  cod_pregunta FROM Tipo1_pregunta_M2 WHERE Cod_pregunta IN " & _
         "(SELECT a.Cod_pregunta FROM Tipo1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a." & _
         "Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) UNION " & _
         "SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + preg" & _
         "unta + ' - Tipo: Lista' AS 'Text' ,  cod_pregunta FROM Tipo2_pregunta_M2 WHERE C" & _
         "od_pregunta IN (SELECT a.Cod_pregunta FROM Tipo2_pregunta_M2 AS a ,  preguntas_m" & _
         "2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo =" & _
         " @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pr" & _
         "egunta:' + pregunta + ' - Tipo: Check' AS 'Text' ,  cod_pregunta FROM Tipo3_preg" & _
         "unta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM Tipo3_pregunta_M2 AS a" & _
         " ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @tes" & _
         "t AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_preg" & _
         "unta)) + ' - Pregunta:' + pregunta + ' - Tipo: Radio Boton' AS 'Text' ,  cod_pre" & _
         "gunta FROM Tipo4_pregunta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM T" & _
         "ipo4_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta" & _
         " AND b.cod_eva = @test AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: '" & _
         " + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo: Observación'" & _
         " AS 'Text' ,  cod_pregunta FROM Tipo5_pregunta_M2 WHERE Cod_pregunta IN (SELECT " & _
         "a.Cod_pregunta FROM Tipo5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_preg" & _
         "unta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) "
        DS2 = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS2, "Tables")
        Me.L_grupo_selec.DataSource = DS2.Tables("Tables").DefaultView
        L_grupo_selec.DataTextField = "text"
        Me.L_grupo_selec.DataBind()
        Me.DropDownList1().DataSource = DS2.Tables("Tables").DefaultView
        DropDownList1().DataTextField = "cod_pregunta"
        Me.DropDownList1().DataBind()
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim queri As String
        queri = ""
        Conn.Open()
        queri = "select Descripcion from preguntas_m2 where cod_eva=" & Str(eva)  & " and grupo=" & Val(Me.L_grupo.SelectedItem.Value)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Dim cant1 As String = Comm.ExecuteScalar()
        Me.T_descrip.Text = cant1
        Conn.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim test11 As String
        test11 = "select count(cod_pre_eva) from preguntas_m2 where cod_eva=" & Str(Me.eva) & " and grupo=" & Me.L_grupo.SelectedItem.Value
        Conn.Open()
        Comm = New System.Data.SqlClient.SqlCommand(test11, Conn)
        Comm.ExecuteNonQuery()
        Dim cant1 As Integer = Comm.ExecuteScalar()
        If cant1 = 0 Then
            Me.Label2.Text = "El grupo quedara sin preguntas preguntas"
            Me.Label2.Visible = True
        End If


        Me.DropDownList1.SelectedIndex = Me.L_grupo_selec.SelectedIndex
        test11 = "delete from Preguntas_M2 where cod_eva=" & Str(Me.eva) & " and grupo=" & Me.L_grupo.SelectedItem.Value
        test11 = test11 & " and cod_pregunta=" & Val(Me.DropDownList1.SelectedItem.Value) & ""
        Response.Write(test11)
        Comm = New System.Data.SqlClient.SqlCommand(test11, Conn)
        Comm.ExecuteNonQuery()
        Conn.Close()

        Me.SqlSelectCommand1.CommandText = "DECLARE @test int SET @test = " & Str(eva)  & " SELECT Cod_pregunta ,  pregunta ,  tipo = 'Texto'" & _
        " FROM Tipo1_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
        "po1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
        "AND b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Lista' F" & _
        "ROM tipo2_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo" & _
        "2_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AN" & _
        "D b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Check' FRO" & _
        "M Tipo3_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo3_" & _
        "pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND " & _
        "b.cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Radio' FROM " & _
        "Tipo4_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Tipo4_pr" & _
        "egunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b." & _
        "cod_eva = @test) UNION SELECT Cod_pregunta ,  pregunta ,  tipo = 'Observaciones'" & _
        " FROM Tipo5_pregunta_M2 WHERE Cod_pregunta NOT IN (SELECT a.Cod_pregunta FROM Ti" & _
        "po5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta " & _
        "AND b.cod_eva = @test) ORDER BY Cod_pregunta "

        'Dim DS As System.Data.DataSet
        DS = New System.Data.DataSet()
        SqlDataAdapter1.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
        Me.Grid1.SelectedIndex = -1

        Me.SqlSelectCommand2.CommandText = "DECLARE @test int DECLARE @grupo int SET @test = " & Str(eva) & " SET @grupo = " & Str(Val(Me.L_grupo.SelectedItem.Value)) & " SELECT 'Codigo " & _
        "de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo" & _
        ": Texto' AS 'Text' ,  cod_pregunta FROM Tipo1_pregunta_M2 WHERE Cod_pregunta IN " & _
        "(SELECT a.Cod_pregunta FROM Tipo1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a." & _
        "Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) UNION " & _
        "SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + preg" & _
        "unta + ' - Tipo: Lista' AS 'Text' ,  cod_pregunta FROM Tipo2_pregunta_M2 WHERE C" & _
        "od_pregunta IN (SELECT a.Cod_pregunta FROM Tipo2_pregunta_M2 AS a ,  preguntas_m" & _
        "2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo =" & _
        " @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pr" & _
        "egunta:' + pregunta + ' - Tipo: Check' AS 'Text' ,  cod_pregunta FROM Tipo3_preg" & _
        "unta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM Tipo3_pregunta_M2 AS a" & _
        " ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @tes" & _
        "t AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_preg" & _
        "unta)) + ' - Pregunta:' + pregunta + ' - Tipo: Radio Boton' AS 'Text' ,  cod_pre" & _
        "gunta FROM Tipo4_pregunta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM T" & _
        "ipo4_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta" & _
        " AND b.cod_eva = @test AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: '" & _
        " + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo: Observación'" & _
        " AS 'Text' ,  cod_pregunta FROM Tipo5_pregunta_M2 WHERE Cod_pregunta IN (SELECT " & _
        "a.Cod_pregunta FROM Tipo5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_preg" & _
        "unta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) "

        'Dim DS2 As System.Data.DataSet
        DS2 = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS2, "Tables")
        Me.L_grupo_selec.DataSource = DS2.Tables("Tables").DefaultView
        L_grupo_selec.DataTextField = "text"
        Me.L_grupo_selec.DataBind()

        Me.DropDownList1().DataSource = DS2.Tables("Tables").DefaultView
        DropDownList1().DataTextField = "cod_pregunta"
        Me.DropDownList1().DataBind()


    End Sub

    Private Sub LinkButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim test11 As String
        L_grupo.SelectedIndex = L_grupo.Items.Count - 1
        test11 = "select count(cod_pre_eva) from preguntas_m2 where cod_eva=" & Str(Me.eva) & " and grupo=" & Me.L_grupo.SelectedItem.Value
        Conn.Open()
        Comm = New System.Data.SqlClient.SqlCommand(test11, Conn)
        Comm.ExecuteNonQuery()
        Dim cant1 As Integer = Comm.ExecuteScalar()
        Conn.Close()
        If cant1 = 0 Then
            Me.Label2.Text = "El grupo anterior no contiene preguntas"
            Me.Label2.Visible = True
            Exit Sub
        End If

        Me.L_grupo.Items.Add((L_grupo.Items.Count) + 1)
        Me.T_descrip.Text = ""
        L_grupo.SelectedIndex = L_grupo.Items.Count - 1

        Me.SqlSelectCommand2.CommandText = "DECLARE @test int DECLARE @grupo int SET @test = " & Str(eva)  & " SET @grupo = " & Str(Val(Me.L_grupo.SelectedItem.Value)) & " SELECT 'Codigo " & _
        "de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo" & _
        ": Texto' AS 'Text' ,  cod_pregunta FROM Tipo1_pregunta_M2 WHERE Cod_pregunta IN " & _
        "(SELECT a.Cod_pregunta FROM Tipo1_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a." & _
        "Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) UNION " & _
        "SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pregunta:' + preg" & _
        "unta + ' - Tipo: Lista' AS 'Text' ,  cod_pregunta FROM Tipo2_pregunta_M2 WHERE C" & _
        "od_pregunta IN (SELECT a.Cod_pregunta FROM Tipo2_pregunta_M2 AS a ,  preguntas_m" & _
        "2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo =" & _
        " @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_pregunta)) + ' - Pr" & _
        "egunta:' + pregunta + ' - Tipo: Check' AS 'Text' ,  cod_pregunta FROM Tipo3_preg" & _
        "unta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM Tipo3_pregunta_M2 AS a" & _
        " ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta AND b.cod_eva = @tes" & _
        "t AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: ' + ltrim(str(cod_preg" & _
        "unta)) + ' - Pregunta:' + pregunta + ' - Tipo: Radio Boton' AS 'Text' ,  cod_pre" & _
        "gunta FROM Tipo4_pregunta_M2 WHERE Cod_pregunta IN (SELECT a.Cod_pregunta FROM T" & _
        "ipo4_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_pregunta = b.Cod_pregunta" & _
        " AND b.cod_eva = @test AND b.grupo = @grupo) UNION SELECT 'Codigo de Pregunta: '" & _
        " + ltrim(str(cod_pregunta)) + ' - Pregunta:' + pregunta + ' - Tipo: Observación'" & _
        " AS 'Text' ,  cod_pregunta FROM Tipo5_pregunta_M2 WHERE Cod_pregunta IN (SELECT " & _
        "a.Cod_pregunta FROM Tipo5_pregunta_M2 AS a ,  preguntas_m2 AS b WHERE a.Cod_preg" & _
        "unta = b.Cod_pregunta AND b.cod_eva = @test AND b.grupo = @grupo) "

        'Dim DS2 As System.Data.DataSet
        DS2 = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS2, "Tables")
        Me.L_grupo_selec.DataSource = DS2.Tables("Tables").DefaultView
        L_grupo_selec.DataTextField = "text"
        Me.L_grupo_selec.DataBind()

        Me.DropDownList1().DataSource = DS2.Tables("Tables").DefaultView
        DropDownList1().DataTextField = "cod_pregunta"
        Me.DropDownList1().DataBind()
    End Sub

    Private Sub Grid1_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Grid1.PageIndexChanged
        Grid1.CurrentPageIndex = e.NewPageIndex
        'Dim DS As System.Data.DataSet
        'DS = New System.Data.DataSet()
        'SqlDataAdapter1.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
    End Sub

    Private Sub Grid1_SortCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles Grid1.SortCommand
        'Dim DS As System.Data.DataSet
        'DS = New System.Data.DataSet()
        'SqlDataAdapter1.Fill(DS, "Tables")
        DS.Tables("tables").DefaultView.Sort = e.SortExpression.ToString
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("..\intro2.aspx")
    End Sub


End Class
