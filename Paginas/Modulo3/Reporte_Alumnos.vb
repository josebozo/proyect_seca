﻿'------------------------------------------------------------------------------
' <autogenerated>
'     This code was generated by a tool.
'     Runtime Version: 1.0.3705.0
'
'     Changes to this file may cause incorrect behavior and will be lost if 
'     the code is regenerated.
' </autogenerated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.ReportSource
Imports CrystalDecisions.Shared
Imports System
Imports System.ComponentModel


Public Class Reporte_Alumnos
    Inherits ReportClass
    
    Public Sub New()
        MyBase.New
    End Sub
    
    Public Overrides Property ResourceName As [String]
        Get
            Return "Reporte_Alumnos.rpt"
        End Get
        Set
            'Do nothing
        End Set
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section1 As Section
        Get
            Return Me.ReportDefinition.Sections(0)
        End Get
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section2 As Section
        Get
            Return Me.ReportDefinition.Sections(1)
        End Get
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section10 As Section
        Get
            Return Me.ReportDefinition.Sections(2)
        End Get
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section3 As Section
        Get
            Return Me.ReportDefinition.Sections(3)
        End Get
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section11 As Section
        Get
            Return Me.ReportDefinition.Sections(4)
        End Get
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section4 As Section
        Get
            Return Me.ReportDefinition.Sections(5)
        End Get
    End Property
    
    <Browsable(false),  _
     DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)>  _
    Public ReadOnly Property Section5 As Section
        Get
            Return Me.ReportDefinition.Sections(6)
        End Get
    End Property
End Class

<System.Drawing.ToolboxBitmapAttribute(GetType(CrystalDecisions.Shared.ExportOptions), "report.bmp")>  _
Public Class CachedReporte_Alumnos
    Inherits Component
    Implements ICachedReport
    
    Public Sub New()
        MyBase.New
    End Sub
    
    Public Overridable Property IsCacheable As [Boolean] Implements CrystalDecisions.ReportSource.ICachedReport.IsCacheable
        Get
            Return true
        End Get
        Set
            '
        End Set
    End Property
    
    Public Overridable Property ShareDBLogonInfo As [Boolean] Implements CrystalDecisions.ReportSource.ICachedReport.ShareDBLogonInfo
        Get
            Return false
        End Get
        Set
            '
        End Set
    End Property
    
    Public Overridable Property CacheTimeOut As TimeSpan Implements CrystalDecisions.ReportSource.ICachedReport.CacheTimeOut
        Get
            Return CachedReportConstants.DEFAULT_TIMEOUT
        End Get
        Set
            '
        End Set
    End Property
    
    Public Overridable Function CreateReport() As ReportDocument Implements CrystalDecisions.ReportSource.ICachedReport.CreateReport
        Dim rpt As Reporte_Alumnos = New Reporte_Alumnos
        rpt.Site = Me.Site
        Return rpt
    End Function
    
    Public Overridable Function GetCustomizedCacheKey(ByVal request As RequestContext) As [String] Implements CrystalDecisions.ReportSource.ICachedReport.GetCustomizedCacheKey
        Dim key As [String] = Nothing
        '// The following is the code used to generate the default
        '// cache key for caching report jobs in the ASP.NET Cache.
        '// Feel free to modify this code to suit your needs.
        '// Returning key == null causes the default cache key to
        '// be generated.
        '
        'key = RequestContext.BuildCompleteCacheKey(
        '    request,
        '    null,       // sReportFilename
        '    this.GetType(),
        '    this.ShareDBLogonInfo );
        Return key
    End Function
End Class
