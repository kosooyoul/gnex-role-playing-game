VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "맵 목록 관리"
   ClientHeight    =   3840
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4050
   Icon            =   "MapAdmin.frx":0000
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3840
   ScaleWidth      =   4050
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '화면 가운데
   Begin VB.CommandButton Command3 
      Caption         =   "닫기"
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   20
      TabIndex        =   3
      Top             =   240
      Width           =   2640
   End
   Begin VB.CommandButton Command2 
      Caption         =   "가져옴"
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "저장"
      Height          =   375
      Left            =   2760
      TabIndex        =   1
      Top             =   240
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   3120
      ItemData        =   "MapAdmin.frx":058A
      Left            =   20
      List            =   "MapAdmin.frx":058C
      TabIndex        =   0
      Top             =   600
      Width           =   2640
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim FName As Boolean

Private Sub Command1_Click()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    
    MLFileName = App.Path & "\" & Trim(Text1.Text) & ".txt"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Output As MLFileNum                           '저장 모드로 파일을 읽음
    
    Print #MLFileNum, Form2.Text2.Text
    Print #MLFileNum, Form2.Text1.Text

    Close MLFileNum

    If FName Then
        List1.AddItem Trim(Text1.Text)
        
        MLFileName = App.Path & "\MapList.dat"
        MLFileNum = FreeFile
        Open MLFileName For Output As MLFileNum
        
        For i = 0 To List1.ListCount
            Print #MLFileNum, List1.List(i)
        Next i
        
        Close MLFileNum
        
        
        
    End If



    Unload Me

End Sub

Private Sub Command2_Click()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    Dim Temp As String
    Dim Code As String
    Dim i As Integer
    
    On Error GoTo Err
    
    Code = ""

    MLFileName = App.Path & "\" & Trim(Text1.Text) & ".txt"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Input As MLFileNum                            '파일을 읽기 전용으로 열기
    'Do Until EOF(MLFileNum)
                                   
    For i = 0 To 39
        Line Input #MLFileNum, Temp
        If Temp <> "" Then
            Code = Code + Temp + vbCrLf
        End If
    Next i
    Form2.Text2.Text = Code
    Code = ""
    Do Until EOF(MLFileNum)
        Line Input #MLFileNum, Temp
        If Temp <> "" Then
            Code = Code + Temp + vbCrLf
        End If
    Loop
    Form2.Text1.Text = Code
    Close MLFileNum
    
    Unload Me
    Exit Sub
    
Err:
    MsgBox "그런 이름을 가진 맵은 없습니다.", vbOKOnly, "오류"
    
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Form_Load()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    Dim Temp As String

    MLFileName = App.Path & "\MapList.dat"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Input As MLFileNum                            '파일을 읽기 전용으로 열기
    Do Until EOF(MLFileNum)
                                                                        '줄단위로 파일 끝까지 Logs 라는 변수에 저장
        Line Input #MLFileNum, Temp
                                                                        '줄 단위(vbcrlf)로 Logs를 읽음
        If Temp <> "" Then
            List1.AddItem (Temp)
        End If
    Loop
    Close MLFileNum
    FName = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.Caption = "Ahyane's RPG Map & Event Script Editor v1 - [" & Trim(Text1.Text) & "]"
End Sub

Private Sub List1_Click()
    Text1.Text = List1.List(List1.ListIndex)
    FName = False
End Sub

Private Sub Text1_Change()
    FName = True
End Sub

Private Sub Text1_LostFocus()
    If Trim(Text1.Text) = "" Then Text1.Text = "MapName"
End Sub
