Public Class Mostrar_eva
    Inherits System.Web.UI.Page
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents Table2 As System.Web.UI.HtmlControls.HtmlTable
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Public Shared DS As System.Data.DataSet
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_areas_eva", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("nombre", "nombre"), New System.Data.Common.DataColumnMapping("cod_eva", "cod_eva")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT nombre, cod_eva FROM SECA_areas_eva GROUP BY nombre, cod_eva ORDER BY nomb" & _
        "re"
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "DECLARE @eva int set @eva=30 select 'Codigo de Pregunta: ' + ltrim(str(a.cod_preg" & _
        "unta)) + ' - Pregunta: ' + a.pregunta + ' - Tipo: Texto' as 'Text', b.grupo from" & _
        " Tipo1_pregunta_M2 as a, preguntas_m2 as b where a.cod_pregunta=b.cod_pregunta a" & _
        "nd a.Cod_pregunta in (select a.Cod_pregunta from Tipo1_pregunta_M2 as a, pregunt" & _
        "as_m2 as b where a.Cod_pregunta = b.Cod_pregunta and b.cod_eva=@eva) and b.cod_e" & _
        "va=@eva union select 'Codigo de Pregunta: ' + ltrim(str(a.cod_pregunta)) + ' - P" & _
        "regunta: ' + a.pregunta + ' - Tipo: Texto' as 'Text', b.grupo from Tipo2_pregunt" & _
        "a_M2 as a, preguntas_m2 as b where a.cod_pregunta=b.cod_pregunta and a.Cod_pregu" & _
        "nta in (select a.Cod_pregunta from Tipo2_pregunta_M2 as a, preguntas_m2 as b whe" & _
        "re a.Cod_pregunta = b.Cod_pregunta and b.cod_eva=@eva) and b.cod_eva=@eva union " & _
        "select 'Codigo de Pregunta: ' + ltrim(str(a.cod_pregunta)) + ' - Pregunta: ' + a" & _
        ".pregunta + ' - Tipo: Texto' as 'Text', b.grupo from Tipo3_pregunta_M2 as a, pre" & _
        "guntas_m2 as b where a.cod_pregunta=b.cod_pregunta and a.Cod_pregunta in (select" & _
        " a.Cod_pregunta from Tipo3_pregunta_M2 as a, preguntas_m2 as b where a.Cod_pregu" & _
        "nta = b.Cod_pregunta and b.cod_eva=@eva) and b.cod_eva=@eva union select 'Codigo" & _
        " de Pregunta: ' + ltrim(str(a.cod_pregunta)) + ' - Pregunta: ' + a.pregunta + ' " & _
        "- Tipo: Texto' as 'Text', b.grupo from Tipo4_pregunta_M2 as a, preguntas_m2 as b" & _
        " where a.cod_pregunta=b.cod_pregunta and a.Cod_pregunta in (select a.Cod_pregunt" & _
        "a from Tipo4_pregunta_M2 as a, preguntas_m2 as b where a.Cod_pregunta = b.Cod_pr" & _
        "egunta and b.cod_eva=@eva) and b.cod_eva=@eva union select 'Codigo de Pregunta: " & _
        "' + ltrim(str(a.cod_pregunta)) + ' - Pregunta: ' + a.pregunta + ' - Tipo: Texto'" & _
        " as 'Text', b.grupo from Tipo5_pregunta_M2 as a, preguntas_m2 as b where a.cod_p" & _
        "regunta=b.cod_pregunta and a.Cod_pregunta in (select a.Cod_pregunta from Tipo5_p" & _
        "regunta_M2 as a, preguntas_m2 as b where a.Cod_pregunta = b.Cod_pregunta and b.c" & _
        "od_eva=@eva) and b.cod_eva=@eva order by grupo"
        Me.SqlSelectCommand2.Connection = Me.SqlConnection1

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataValueField = "cod_eva"
            L_eva.DataTextField = "nombre"
            L_eva.DataBind()
            L_cod_eva.DataBind()
            L_eva.Items.Add("")
            L_eva.SelectedIndex = (L_eva.Items.Count - 1)
        End If


    End Sub

    Private Sub L_eva_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_eva.SelectedIndexChanged
        If L_eva.SelectedItem.Text = "" Then Exit Sub
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex

        Me.SqlSelectCommand2.CommandText = "DECLARE @eva int set @eva=" & Me.L_cod_eva.SelectedItem.Value & " select 'Codigo de Pregunta: ' + ltrim(str(a.cod_preg" & _
        "unta)) + ' - Pregunta: ' + a.pregunta + ' - Tipo: Texto' as 'Text', b.grupo from" & _
        " Tipo1_pregunta_M2 as a, preguntas_m2 as b where a.cod_pregunta=b.cod_pregunta a" & _
        "nd a.Cod_pregunta in (select a.Cod_pregunta from Tipo1_pregunta_M2 as a, pregunt" & _
        "as_m2 as b where a.Cod_pregunta = b.Cod_pregunta and b.cod_eva=@eva) and b.cod_e" & _
        "va=@eva union select 'Codigo de Pregunta: ' + ltrim(str(a.cod_pregunta)) + ' - P" & _
        "regunta: ' + a.pregunta + ' - Tipo: Texto' as 'Text', b.grupo from Tipo2_pregunt" & _
        "a_M2 as a, preguntas_m2 as b where a.cod_pregunta=b.cod_pregunta and a.Cod_pregu" & _
        "nta in (select a.Cod_pregunta from Tipo2_pregunta_M2 as a, preguntas_m2 as b whe" & _
        "re a.Cod_pregunta = b.Cod_pregunta and b.cod_eva=@eva) and b.cod_eva=@eva union " & _
        "select 'Codigo de Pregunta: ' + ltrim(str(a.cod_pregunta)) + ' - Pregunta: ' + a" & _
        ".pregunta + ' - Tipo: Texto' as 'Text', b.grupo from Tipo3_pregunta_M2 as a, pre" & _
        "guntas_m2 as b where a.cod_pregunta=b.cod_pregunta and a.Cod_pregunta in (select" & _
        " a.Cod_pregunta from Tipo3_pregunta_M2 as a, preguntas_m2 as b where a.Cod_pregu" & _
        "nta = b.Cod_pregunta and b.cod_eva=@eva) and b.cod_eva=@eva union select 'Codigo" & _
        " de Pregunta: ' + ltrim(str(a.cod_pregunta)) + ' - Pregunta: ' + a.pregunta + ' " & _
        "- Tipo: Texto' as 'Text', b.grupo from Tipo4_pregunta_M2 as a, preguntas_m2 as b" & _
        " where a.cod_pregunta=b.cod_pregunta and a.Cod_pregunta in (select a.Cod_pregunt" & _
        "a from Tipo4_pregunta_M2 as a, preguntas_m2 as b where a.Cod_pregunta = b.Cod_pr" & _
        "egunta and b.cod_eva=@eva) and b.cod_eva=@eva union select 'Codigo de Pregunta: " & _
        "' + ltrim(str(a.cod_pregunta)) + ' - Pregunta: ' + a.pregunta + ' - Tipo: Texto'" & _
        " as 'Text', b.grupo from Tipo5_pregunta_M2 as a, preguntas_m2 as b where a.cod_p" & _
        "regunta=b.cod_pregunta and a.Cod_pregunta in (select a.Cod_pregunta from Tipo5_p" & _
        "regunta_M2 as a, preguntas_m2 as b where a.Cod_pregunta = b.Cod_pregunta and b.c" & _
        "od_eva=@eva) and b.cod_eva=@eva order by grupo"

        DS = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()

    End Sub
End Class
