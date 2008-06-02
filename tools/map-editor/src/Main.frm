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
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  '아래 맞춤
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   6645
      Width           =   10125
      _ExtentX        =   17859
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   3000
      Top             =   1800
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
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  '위 맞춤
      Height          =   360
      Left            =   0
      TabIndex        =   2
      Top             =   360
      Width           =   10125
      _ExtentX        =   17859
      _ExtentY        =   635
      ButtonWidth     =   609
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList2"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   25
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f1"
            Object.ToolTipText     =   "문장 출력"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f2"
            Object.ToolTipText     =   "문장 조합"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f3"
            Object.ToolTipText     =   "스위치 조작"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f4"
            Object.ToolTipText     =   "변수 조작"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f5"
            Object.ToolTipText     =   "주인공 스테이터스를 변수로"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f6"
            Object.ToolTipText     =   "주인공 스테이터스 조작"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f7"
            Object.ToolTipText     =   "아이템 및 스킬 증감"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f8"
            Object.ToolTipText     =   "텔레포트 혹은 맵이동"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f9"
            Object.ToolTipText     =   "한칸 이동"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f10"
            Object.ToolTipText     =   "방향 전환"
            ImageIndex      =   10
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f11"
            Object.ToolTipText     =   "선택지"
            ImageIndex      =   11
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f12"
            Object.ToolTipText     =   "변수에 따른 조건분기"
            ImageIndex      =   12
         EndProperty
         BeginProperty Button20 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f13"
            Object.ToolTipText     =   "스위치에 따른 조건분기"
            ImageIndex      =   13
         EndProperty
         BeginProperty Button21 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button22 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f14"
            Object.ToolTipText     =   "딜레이"
            ImageIndex      =   14
         EndProperty
         BeginProperty Button23 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button24 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "f15"
            Object.ToolTipText     =   "이벤트 라인 종료"
            ImageIndex      =   15
         EndProperty
         BeginProperty Button25 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   0
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   15
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":0E64
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":11B6
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":1508
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":185A
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":1BAC
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":1EFE
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":2250
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":25A2
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":28F4
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":2C46
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":2F98
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":32EA
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":363C
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":398E
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":3CE0
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList3 
      Left            =   3600
      Top             =   1800
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   15
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4032
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4384
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":46D6
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4A28
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4D7A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":50CC
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":541E
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":5770
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":5AC2
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":5E14
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":6166
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":64B8
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":680A
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":6B5C
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":6EAE
            Key             =   ""
         EndProperty
      EndProperty
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
      Begin VB.Menu MEventEdit 
         Caption         =   "이벤트 편집(&E)"
         Shortcut        =   ^E
      End
      Begin VB.Menu MString 
         Caption         =   "문자열 관리"
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

Private Sub MDIForm_Unload(Cancel As Integer)
End
End Sub

Private Sub MEventEdit_Click()
    Form5.Show
End Sub

Private Sub MExit_Click()
    End
End Sub

Private Sub MMapEdit_Click()
    Form1.Show
End Sub

Private Sub MString_Click()
Strings.Show
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Key
    Case "f1"
        Form7.Show
    Case "f2"
        Form8.Show
    Case "f3"
        Form9.Show
    Case "f4"
        Form10.Show
    Case "f5"
        Form11.Show
    Case "f6"
        Form12.Show
    Case "f7"
        Form13.Show
    Case "f8"
        Form14.Show
    Case "f9"
        Form15.Show
    Case "f10"
        Form16.Show
    Case "f11"
        Form17.Show
    Case "f12"
        Form18.Show
    Case "f13"
        Form19.Show
    Case "f14"
        Form20.Show
    Case "f15"
        AddEvent ("END()")
End Select
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
