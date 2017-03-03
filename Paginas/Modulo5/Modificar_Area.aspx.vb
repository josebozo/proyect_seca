Imports System.Data.SqlClient

Public Class Modificar_Area
    Inherits System.Web.UI.Page
    Protected WithEvents T_Area As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Descripcion As System.Web.UI.WebControls.TextBox
    Protected WithEvents R_Evalua As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents T_error As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Public Shared area As String

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            Dim queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim objDR As SqlDataReader
            Dim i As Integer
            Button2.Enabled = False
            Me.Conn.Open()
            Me.T_Area.Text = Request.Params("cod_area")
            queri = " select Area, descripcion, evalua from Area_m5 where cod_area=" & Request.Params("cod_area")
            'Response.Write(queri)
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            objDR = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
            While objDR.Read
                T_Area.Text = objDR.GetValue(0)
                T_Descripcion.Text = objDR.GetValue(1)
                area = T_Area.Text
                If objDR.GetValue(2) = True Then
                    Me.R_Evalua.SelectedIndex = 0
                    Me.R_Evalua.SelectedItem.Selected = True
                Else
                    Me.R_Evalua.SelectedIndex = 1
                    Me.R_Evalua.SelectedItem.Selected = True
                End If
            End While
            Me.Conn.Close()
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim string1, string2, queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()
        'Verifica que no existan 2 areas iguales
        If Trim(area) <> Trim(T_Area.Text) Then

            queri = "select count(area) from Area_M5 where area='" & Me.T_Area.Text & "'"
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            Dim cant As Integer = Comm.ExecuteScalar()
            'Response.Write(cant)
            If cant <> 0 Then

                Me.T_error.Visible = True
                Me.T_error.Text = "Esta Area ya existe"
                Exit Sub
            Else
                Me.T_error.Visible = False
                'Exit Sub
            End If
        End If
        'Modifica la base de Datos Area_M5
        queri = "update Area_m5 set Area='" & Me.T_Area.Text & "', Descripcion='" & Me.T_Descripcion.Text & "', evalua=" & Me.R_Evalua.SelectedItem.Value & " Where cod_area=" & Request.Params("cod_area")
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Label1.Visible = True
        Conn.Close()
        T_Area.Enabled = False
        T_Descripcion.Enabled = False
        R_Evalua.Enabled = False
        Button1.Enabled = False
        Button2.Enabled = True
        Button3.Enabled = False
        'Response.Redirect("..\intro2.aspx")
        
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Button2.Enabled = False
        T_Area.Enabled = True
        T_Descripcion.Enabled = True
        R_Evalua.Enabled = True
        Button1.Enabled = True
        Button3.Enabled = True
        Response.Redirect("Modificar_Area_DG.aspx")
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.T_Area.Text = ""
        Me.T_Descripcion.Text = ""
        Me.R_Evalua.SelectedIndex = -1
    End Sub
End Class
