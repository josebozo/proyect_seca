Public Class alumno_insert33
    Inherits System.Web.UI.Page
    Protected WithEvents T_usuario As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_exp As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Button4 As System.Web.UI.WebControls.Button
    Protected WithEvents t_tipo_casa As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_tenencia_casa As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ambientes_casa As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_descrip_casa As System.Web.UI.WebControls.TextBox
    Protected WithEvents R_agua_casa As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents R_luz_casa As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents R_serv_casa As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents R_via_adecu As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents R_via_inade As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents R_via_t_privado As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents T_recrea As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ingre_padre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ingre_madre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ingre_familia As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ingre_rentas As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ingre_becas As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_alimen As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_vivi As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_edu As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_trans As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_ropa As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_credi As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_egre_otros As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ingre_observa As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_condicion As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_cond_obser As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_tipo_familia As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_familia_obser As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_tipo_relac As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_rela_obser As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_tipo_rela_fami As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_rela_fami_obser As System.Web.UI.WebControls.TextBox
    Protected WithEvents R_respo_paterna As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents R_repo_materna As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents T_respo_obse As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_decision_familia As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_autoridad_padre As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_autoridad_madre As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_ingre_otros As System.Web.UI.WebControls.TextBox
    Protected WithEvents TotalI As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_agre_alimen As System.Web.UI.WebControls.TextBox
    Protected WithEvents TotalE As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator6 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator7 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator8 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator9 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator10 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator11 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator12 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator13 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator14 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents R_via_t_publico As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button

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
        'Put user code to initialize the page here
        Me.T_usuario.Text = Request.Params("user")
        Me.T_exp.Text = Request.Params("cod")
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Total As Double
        Total = Val(T_ingre_padre.Text) + Val(T_ingre_madre.Text) + Val(T_ingre_familia.Text) + Val(T_ingre_rentas.Text) + Val(T_ingre_becas.Text) + Val(T_ingre_otros.Text)
        TotalI.Text = Format(Total, "##,###,##0.00")
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim Total As Double
        Total = Val(T_agre_alimen.Text) + Val(T_egre_vivi.Text) + Val(T_egre_edu.Text) + Val(T_egre_trans.Text) + Val(T_egre_ropa.Text) + Val(T_egre_credi.Text) + Val(T_egre_otros.Text)
        TotalE.Text = Format(Total, "##,###,##0.00")
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()
        queri = "update alumno_m1 set "
        queri = queri & " tipo_casa='" & t_tipo_casa.Text & " '"
        queri = queri & ", tenencia_casa='" & T_tenencia_casa.Text & " '"
        queri = queri & ", ambientes_casa='" & T_ambientes_casa.Text & " '"
        queri = queri & ", descrip_casa='" & T_descrip_casa.Text & " '"
        queri = queri & ", agua_casa=" & R_agua_casa.SelectedItem.Value
        queri = queri & ", luz_casa=" & R_luz_casa.SelectedItem.Value
        queri = queri & ", serv_casa=" & R_serv_casa.SelectedItem.Value
        queri = queri & ", via_adecu=" & R_via_adecu.SelectedItem.Value
        queri = queri & ", via_inade=" & R_via_inade.SelectedItem.Value
        queri = queri & ", via_t_privado=" & R_via_t_privado.SelectedItem.Value
        'recrea
        queri = queri & ", ingre_padre=" & Val(T_ingre_padre.Text)
        queri = queri & ", ingre_madre=" & Val(T_ingre_madre.Text)
        queri = queri & ", ingre_familia=" & Val(T_ingre_familia.Text)
        queri = queri & ", ingre_rentas=" & Val(T_ingre_rentas.Text)
        queri = queri & ", ingre_becas=" & Val(T_ingre_becas.Text)
        'queri = queri & ", egre_alimen='" & Me.T_agre_alimen.Text & "'"
        queri = queri & ", egre_vivi=" & Val(T_egre_vivi.Text)
        queri = queri & ", egre_edu=" & Val(T_egre_edu.Text)
        queri = queri & ", egre_trans=" & Val(T_egre_trans.Text)
        queri = queri & ", egre_ropa=" & Val(T_egre_ropa.Text)
        queri = queri & ", egre_credi=" & Val(T_egre_credi.Text)
        queri = queri & ", egre_otros=" & Val(T_egre_otros.Text)
        queri = queri & ", ingre_observa ='" & T_ingre_observa.Text & " '"
        queri = queri & ", condicion='" & L_condicion.SelectedItem.Value & " '"
        queri = queri & ", cond_obser='" & T_cond_obser.Text & "'"
        queri = queri & ", tipo_familia='" & L_tipo_familia.SelectedItem.Value & " '"
        queri = queri & ", familia_obser='" & T_familia_obser.Text & " '"
        queri = queri & ", tipo_relac='" & L_tipo_relac.SelectedItem.Value & " '"
        queri = queri & ", rela_obser='" & T_rela_obser.Text & " '"
        queri = queri & ", tipo_rela_fami='" & T_tipo_rela_fami.Text & " '"
        queri = queri & ", rela_fami_obser='" & T_rela_fami_obser.Text & " '"
        queri = queri & ", respo_paterna=" & R_respo_paterna.SelectedItem.Value
        queri = queri & ", repo_materna=" & R_repo_materna.SelectedItem.Value
        queri = queri & ", respo_obse='" & T_respo_obse.Text & "'"
        queri = queri & ", decision_familia='" & T_decision_familia.Text & "'"
        queri = queri & ", autoridad_padre='" & L_autoridad_padre.SelectedItem.Value & "'"
        queri = queri & ", autoridad_madre='" & L_autoridad_madre.SelectedItem.Value & "'"
        queri = queri & ", ingre_otros =" & Val(T_ingre_otros.Text)
        queri = queri & ", agre_alimen=" & Val(T_agre_alimen.Text)
        queri = queri & ", via_t_publico=" & R_via_t_publico.SelectedItem.Value
        queri = queri & " where cod_alumno = " & Val(Me.T_exp.Text)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Me.Conn.Close()
        Response.Redirect("alumno_insert4.aspx?cod=" & Val(Me.T_exp.Text) & "&user=" & Me.T_usuario.Text)
    End Sub


    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        t_tipo_casa.Text = ""
        T_tenencia_casa.Text = ""
        T_ambientes_casa.Text = ""
        T_descrip_casa.Text = ""
        R_agua_casa.SelectedIndex = -1
        R_luz_casa.SelectedIndex = -1
        R_serv_casa.SelectedIndex = -1
        R_via_adecu.SelectedIndex = -1
        R_via_inade.SelectedIndex = -1
        R_via_t_privado.SelectedIndex = -1
        T_recrea.Text = ""
        T_ingre_padre.Text = ""
        T_ingre_madre.Text = ""
        T_ingre_familia.Text = ""
        T_ingre_rentas.Text = ""
        T_ingre_becas.Text = ""
        T_agre_alimen.Text = ""
        T_egre_vivi.Text = ""
        T_egre_edu.Text = ""
        T_egre_trans.Text = ""
        T_egre_ropa.Text = ""
        T_egre_credi.Text = ""
        T_egre_otros.Text = ""
        T_ingre_observa.Text = ""
        L_condicion.SelectedIndex = -1
        T_cond_obser.Text = ""
        L_tipo_familia.SelectedIndex = -1
        T_familia_obser.Text = ""
        L_tipo_relac.SelectedIndex = -1
        T_rela_obser.Text = ""
        T_tipo_rela_fami.Text = ""
        T_rela_fami_obser.Text = ""
        R_respo_paterna.SelectedIndex = -1
        R_repo_materna.SelectedIndex = -1
        T_respo_obse.Text = ""
        T_decision_familia.Text = ""
        L_autoridad_padre.SelectedIndex = -1
        L_autoridad_madre.SelectedIndex = -1
        T_ingre_otros.Text = ""
        TotalI.Text = ""
        T_agre_alimen.Text = ""
        TotalE.Text = ""
        R_via_t_publico.SelectedIndex = -1

    End Sub
End Class
