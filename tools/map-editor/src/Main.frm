VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "Ahyane's RPG Map & Event Script Editor v1"
   ClientHeight    =   6900
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   10125
   Icon            =   "Main.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows 기본값
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4080
      Top             =   2160
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":08CA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar2 
      Align           =   1  '위 맞춤
      Height          =   360
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10125
      _ExtentX        =   17859
      _ExtentY        =   635
      ButtonWidth     =   1667
      Appearance      =   1
      Style           =   1
      TextAlignment   =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   12
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "칩깔기"
            Key             =   "q1"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "칩뿌림"
            Key             =   "q2"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "랜덤수"
            Key             =   "q3"
            ImageIndex      =   1
            Style           =   1
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "코드로"
            Key             =   "q4"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "맵으로"
            Key             =   "q5"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "그리드"
            Key             =   "q6"
            ImageIndex      =   1
            Style           =   1
            Value           =   1
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "하부칩"
            Key             =   "q7"
            ImageIndex      =   1
            Style           =   1
            Value           =   1
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "상위칩"
            Key             =   "q8"
            ImageIndex      =   1
            Style           =   1
         EndProperty
      EndProperty
      Begin VB.TextBox Text1 
         Height          =   270
         Left            =   2880
         TabIndex        =   1
         Text            =   "0"
         Top             =   30
         Width           =   855
      End
   End
   Begin VB.Menu MFile 
      Caption         =   "파일(&F)"
      Begin VB.Menu MCodeSave 
         Caption         =   "맵 목록 관리(&S)"
         Shortcut        =   ^S
      End
      Begin VB.Menu MExit 
         Caption         =   "프로그램 종료"
         Shortcut        =   +^{F4}
      End
   End
   Begin VB.Menu MWork 
      Caption         =   "작업(&W)"
      Begin VB.Menu MMapEdit 
         Caption         =   "맵 편집(&M)"
         Shortcut        =   ^M
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Function LoadCode()
    Dim i As Integer
    Dim ChipCount As Integer
    
    i = 0
    ChipCount = 0
    While ChipCount < 900
    
        If Right(Mid(Form2.Text2.Text, i + 1, 2), 1) = "," Then
            Area(ChipCount) = Val(Mid(Form2.Text2.Text, i + 1, 1))
            Form1.chip(ChipCount).Picture = Form3.mapchip(Area(ChipCount)).Picture
            i = i + 2
        ElseIf Right(Mid(Form2.Text2.Text, i + 1, 3), 1) = "," Then
            Area(ChipCount) = Val(Mid(Form2.Text2.Text, i + 1, 2))
            Form1.chip(ChipCount).Picture = Form3.mapchip(Area(ChipCount)).Picture
            i = i + 3
        ElseIf Right(Mid(Form2.Text2.Text, i + 1, 4), 1) = "," Then
            Area(ChipCount) = Val(Mid(Form2.Text2.Text, i + 1, 3))
            Form1.chip(ChipCount).Picture = Form3.mapchip(Area(ChipCount)).Picture
            i = i + 4
        ElseIf Right(Mid(Form2.Text2.Text, i + 1, 5), 1) = "," Then
            Area(ChipCount) = Val(Mid(Form2.Text2.Text, i + 1, 4))
            Form1.chip(ChipCount).Picture = Form3.mapchip(Area(ChipCount)).Picture
            i = i + 5
        ElseIf Right(Mid(Form2.Text2.Text, i + 1, 6), 1) = "," Then
            Area(ChipCount) = Val(Mid(Form2.Text2.Text, i + 1, 5))
            Form1.chip(ChipCount).Picture = Form3.mapchip(Area(ChipCount)).Picture
            i = i + 6
        End If
        
        ChipCount = ChipCount + 1
    Wend
    
    i = 0
    ChipCount = 0
    While ChipCount < 900
        
        If Right(Mid(Form2.Text1.Text, i + 1, 2), 1) = "," Then
            OverArea(ChipCount) = Val(Mid(Form2.Text1.Text, i + 1, 1))
            Form1.overchip(ChipCount).Picture = Form3.mapoverchip(OverArea(ChipCount)).Picture
            i = i + 2
        ElseIf Right(Mid(Form2.Text1.Text, i + 1, 3), 1) = "," Then
            OverArea(ChipCount) = Val(Mid(Form2.Text1.Text, i + 1, 2))
            Form1.overchip(ChipCount).Picture = Form3.mapoverchip(OverArea(ChipCount)).Picture
            i = i + 3
        ElseIf Right(Mid(Form2.Text1.Text, i + 1, 4), 1) = "," Then
            OverArea(ChipCount) = Val(Mid(Form2.Text1.Text, i + 1, 3))
            Form1.overchip(ChipCount).Picture = Form3.mapoverchip(OverArea(ChipCount)).Picture
            i = i + 4
        ElseIf Right(Mid(Form2.Text1.Text, i + 1, 5), 1) = "," Then
            OverArea(ChipCount) = Val(Mid(Form2.Text1.Text, i + 1, 4))
            Form1.overchip(ChipCount).Picture = Form3.mapoverchip(OverArea(ChipCount)).Picture
            i = i + 5
        ElseIf Right(Mid(Form2.Text1.Text, i + 1, 6), 1) = "," Then
            OverArea(ChipCount) = Val(Mid(Form2.Text1.Text, i + 1, 5))
            Form1.overchip(ChipCount).Picture = Form3.mapoverchip(OverArea(ChipCount)).Picture
            i = i + 6
        End If
        
        ChipCount = ChipCount + 1
    Wend
    
End Function

Private Sub MCodeSave_Click()
    Form4.Show vbModal
End Sub

Private Sub MExit_Click()
    End
End Sub

Private Sub MMapEdit_Click()
    Form1.Show
End Sub

Private Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)
    Dim Count As Integer
    Dim RndPos As Integer
    Dim TempString As String
    Dim i As Integer
    Select Case Button.Key
        Case "q1"
            For i = 0 To 899
                If Toolbar2.Buttons(11).Value Then
                    Form1.chip(i).Picture = Form3.mapchip(SelectedMapChip).Picture
                    Area(i) = SelectedMapChip
                End If
                If Toolbar2.Buttons(12).Value Then
                    Form1.overchip(i).Picture = Form3.mapoverchip(SelectedMapOverChip).Picture
                    OverArea(i) = SelectedMapOverChip
                End If
            Next i

        Case "q2"
            If Toolbar2.Buttons(3).Value Then
                Count = Rnd * Int(Text1.Text)
            Else
                Count = Int(Text1.Text)
            End If
            For i = 0 To Count
                RndPos = Rnd * 899
                If Toolbar2.Buttons(11).Value Then
                    Form1.chip(RndPos).Picture = Form3.mapchip(SelectedMapChip).Picture
                    Area(RndPos) = SelectedMapChip
                End If
                If Toolbar2.Buttons(12).Value Then
                    Form1.overchip(RndPos).Picture = Form3.mapoverchip(SelectedMapOverChip).Picture
                    OverArea(RndPos) = SelectedMapOverChip
                End If
            Next i
        Case "q3"
        
        Case "q4"
            TempString = ""
            
            For i = 0 To 899
                If i > 0 And i / 30 = Int(i / 30) Then TempString = TempString & vbCrLf
                    TempString = TempString & Area(i) & ","
            Next i
            Form2.Text2.Text = TempString
            
            TempString = ""
            For i = 0 To 899
                If i > 0 And i / 30 = Int(i / 30) Then TempString = TempString & vbCrLf
                    TempString = TempString & OverArea(i) & ","
            Next i
            Form2.Text1.Text = TempString
        Case "q5"
            Call LoadCode
        Case "q6"
            For i = 0 To 899
                Form1.chip(i).BorderStyle = Toolbar2.Buttons(9).Value
            Next i
        Case "q7"
        
        Case "q8"
    
    End Select








End Sub

Private Sub Toolbar2_ButtonMenuClick(ByVal ButtonMenu As MSComctlLib.ButtonMenu)
MsgBox ButtonMenu
End Sub
