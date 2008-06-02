VERSION 5.00
Begin VB.Form Strings 
   Caption         =   "문자열 관리"
   ClientHeight    =   8580
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8070
   Icon            =   "Strings.frx":0000
   LinkTopic       =   "Form20"
   ScaleHeight     =   8580
   ScaleWidth      =   8070
   StartUpPosition =   3  'Windows 기본값
   Begin VB.TextBox Text2 
      Height          =   3135
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   3  '양방향
      TabIndex        =   8
      Text            =   "Strings.frx":058A
      Top             =   5400
      Width           =   7935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "배열로 변환"
      Height          =   495
      Left            =   6360
      TabIndex        =   7
      Top             =   4800
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "저장"
      Height          =   615
      Left            =   6360
      TabIndex        =   6
      Top             =   4080
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Appearance      =   0  '평면
      Height          =   4710
      Left            =   480
      TabIndex        =   0
      Top             =   40
      Width           =   5775
   End
   Begin VB.ListBox List2 
      Appearance      =   0  '평면
      BackColor       =   &H00C000C0&
      ForeColor       =   &H00FFFFFF&
      Height          =   4710
      ItemData        =   "Strings.frx":0590
      Left            =   20
      List            =   "Strings.frx":06FC
      TabIndex        =   5
      Top             =   40
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "삭제"
      Height          =   495
      Left            =   5160
      TabIndex        =   4
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "수정"
      Height          =   495
      Left            =   4200
      TabIndex        =   3
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "추가"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   4800
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   4800
      Width           =   3135
   End
End
Attribute VB_Name = "Strings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If List1.ListIndex = -1 Then
    List1.AddItem Text1.Text
Else
    List1.AddItem Text1.Text, List1.ListIndex
    List1.ListIndex = List1.ListIndex - 1
End If
End Sub

Private Sub Command2_Click()
List1.List(List1.ListIndex) = Text1.Text
End Sub

Private Sub Command3_Click()
If List1.ListIndex > -1 Then List1.RemoveItem (List1.ListIndex)
End Sub

Private Sub Command4_Click()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    Dim i As Integer
    
    MLFileName = App.Path & "\Strings.txt"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Output As MLFileNum                           '저장 모드로 파일을 읽음
    
    For i = 0 To List1.ListCount - 1
        Print #MLFileNum, List1.List(i)
    Next i

    Close MLFileNum

End Sub

Private Sub Command5_Click()
Dim i As Integer
Dim Temp As String
Temp = "string Message[" & List1.ListCount & "] = {" + vbCrLf

For i = 0 To List1.ListCount - 2
    Temp = Temp + """" + List1.List(i) + """" + "," + vbCrLf
Next i
    Temp = Temp + """" + List1.List(List1.ListCount - 1) + """" + vbCrLf + "};"

Text2.Text = Temp
End Sub

Private Sub Form_Load()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    Dim Temp As String
    Dim i As Integer
    
    On Error GoTo Err

    MLFileName = App.Path & "\Strings.txt"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Input As MLFileNum                            '파일을 읽기 전용으로 열기

    Do Until EOF(MLFileNum)
        Line Input #MLFileNum, Temp
            List1.AddItem Temp
    Loop
    Close MLFileNum
    
Err:

End Sub

Private Sub List1_Click()
List2.ListIndex = List1.ListIndex
End Sub

Private Sub List2_Click()
If List2.ListIndex < List1.ListCount Then List1.ListIndex = List2.ListIndex
End Sub

