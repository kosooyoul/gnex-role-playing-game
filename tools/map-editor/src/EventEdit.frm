VERSION 5.00
Begin VB.Form Form5 
   BorderStyle     =   1  '단일 고정
   Caption         =   "이벤트 스크립트 편집"
   ClientHeight    =   6960
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7815
   Icon            =   "EventEdit.frx":0000
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   6960
   ScaleWidth      =   7815
   Begin VB.CommandButton Command5 
      Caption         =   "Command5"
      Height          =   735
      Left            =   720
      TabIndex        =   6
      Top             =   5640
      Width           =   3015
   End
   Begin VB.CommandButton Command4 
      Caption         =   "to Code!!"
      Height          =   495
      Left            =   6720
      TabIndex        =   5
      Top             =   5040
      Width           =   975
   End
   Begin VB.ListBox Code 
      Appearance      =   0  '평면
      Height          =   4890
      ItemData        =   "EventEdit.frx":058A
      Left            =   480
      List            =   "EventEdit.frx":058C
      TabIndex        =   0
      Top             =   45
      Width           =   7320
   End
   Begin VB.ListBox List2 
      Appearance      =   0  '평면
      BackColor       =   &H000000C0&
      ForeColor       =   &H80000005&
      Height          =   4890
      ItemData        =   "EventEdit.frx":058E
      Left            =   20
      List            =   "EventEdit.frx":0595
      TabIndex        =   4
      Top             =   45
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "선택 이벤트 복사"
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   5040
      Width           =   2055
   End
   Begin VB.CommandButton Command2 
      Caption         =   "선택 이벤트 붙여넣기"
      Height          =   495
      Left            =   2400
      TabIndex        =   2
      Top             =   5040
      Width           =   2055
   End
   Begin VB.CommandButton Command3 
      Caption         =   "선택 이벤트 삭제"
      Height          =   495
      Left            =   4560
      TabIndex        =   1
      Top             =   5040
      Width           =   2055
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Code_Click()
Dim i As Integer
Dim Temp As Integer

If List2.ListCount <= Code.ListIndex Then


For i = List2.List(List2.ListCount - 1) + 1 To Code.ListIndex + 1
List2.AddItem i
Next i


End If
List2.ListIndex = Code.ListIndex
End Sub

Private Sub Code_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyDelete Then Call Command3_Click
End Sub

Private Sub Command1_Click()
Clipboard.SetText ("Ahyanes#" & Code.List(Code.ListIndex))
End Sub

Private Sub Command2_Click()
Dim TempString As String

TempString = Clipboard.GetText

If Left(TempString, 8) = "Ahyanes#" And Len(TempString) > 8 Then
    If Code.ListIndex = -1 Then
        Code.AddItem Mid(TempString, 9), 0
    Else
        Code.AddItem Mid(TempString, 9), Code.ListIndex
        Code.ListIndex = Code.ListIndex - 1
    End If
    
End If

If Code.List(Code.ListCount - 1) <> "" Then Code.AddItem ""

End Sub

Private Sub Command3_Click()
If Code.ListIndex >= 0 And Code.List(Code.ListIndex) <> "" Then Code.RemoveItem (Code.ListIndex)
If Code.List(Code.ListCount - 1) <> "" Then Code.AddItem ""
End Sub

Private Sub Command4_Click()
Dim i As Integer
Dim T As Integer
Dim T2 As Integer
Dim C As String
Dim Temp As String
Temp = ""

For i = 0 To Code.ListCount - 1
    If Trim(Code.List(i)) <> "" Then
    C = Trim(Code.List(i))
    T = InStr(C, "(")
    Select Case LCase(Left(C, T - 1))
            Case "printstring"
                MsgBox "문장 출력"
                Temp = Temp + "0," & Mid(C, T + 1, 1) & ","
            Case "unitestring"
                MsgBox "문장 조합"
                Temp = Temp + "1," & Mid(C, T + 1, 7) & ","
            Case "setswitch"
                MsgBox "스위치셋"
                Temp = Temp + "2," & Mid(C, T + 1, 3) & ","
            Case "setvalue"
                MsgBox "값 셋"
                T2 = InStr(C, ")")
                Temp = Temp + "3," & Mid(C, T + 1, T2 - T - 1) & ","
                
            Case "setvaluebystatus"
                MsgBox "값은 스테이터스"
                Temp = Temp + "4," & Mid(C, T + 1, 3) & ","
            Case "setstatus"
                MsgBox "스테이터스 셋"
                Temp = Temp + "5," & Mid(C, T + 1, 5) & ","
            Case "getitem"
                MsgBox "득실템"
                Temp = Temp + "6,?,?,?,"
            Case "warp"
                MsgBox "워프"
                Temp = Temp + "7," & Mid(C, T + 1, 5) & ","
            Case "move"
                MsgBox "이동"
                Temp = Temp + "8," & Mid(C, T + 1, 3) & ","
            Case "setdirection"
                MsgBox "방향 설정"
                Temp = Temp + "9," & Mid(C, T + 1, 3) & ","
            Case "select"
                MsgBox "선택지"
                Temp = Temp + "10," & Mid(C, T + 1, 5) & ","
            Case "if"
            T2 = InStr(C, "]")
                If LCase(Left(C, T + 1)) = "if(v" Then
                    MsgBox "변수조건분기"
                    Temp = Temp & "11,"
                    Temp = Temp & Mid(C, T + 3, T2 - T - 3) & ","
                    T = InStr(LCase(Mid(C, T2)), "v")
                    Select Case Trim(Mid(C, T2 + 1, T - 2))
                        Case "<"
                            Temp = Temp & "0,"
                        Case "<="
                            Temp = Temp & "1,"
                        Case "=="
                            Temp = Temp & "2,"
                        Case ">="
                            Temp = Temp & "3,"
                        Case ">"
                            Temp = Temp & "4,"
                    End Select
                    T = T + T2
                    T2 = InStr(Mid(C, T), "]")
                    Temp = Temp & Mid(C, T + 1, T2 - 2) & ","
                    T = InStr(LCase(C), "elsegoto(")
                    T2 = InStr(LCase(Mid(C, T)), ")")
                    Temp = Temp & Mid(C, T + 9, T2 - 10) & ","
                ElseIf LCase(Left(C, T + 1)) = "if(s" Then
                    MsgBox "스위치조건분기"
                    Temp = Temp & "12,"
                    Temp = Temp & Mid(C, T + 3, T2 - T - 3) & ","
                    T = InStr(LCase(C), "elsegoto(")
                    T2 = InStr(LCase(Mid(C, T)), ")")
                    Temp = Temp & Mid(C, T + 9, T2 - 10) & ","
                End If
            Case "delay"
                MsgBox "딜레이"
                Temp = Temp + "13," & Mid(C, T + 1, 1) & ","
            Case "end"
                MsgBox "라인 종료"
                Temp = Temp + "-1,"
        End Select
    End If
Next i
Form6.Text1.Text = Temp
End Sub

Private Sub Command5_Click()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    Dim i As Integer
    
    MLFileName = App.Path & "\Scripts.ars"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Output As MLFileNum                           '저장 모드로 파일을 읽음
    
    For i = 0 To Code.ListCount - 1
        Print #MLFileNum, Code.List(i)
    Next i

    Close MLFileNum
End Sub

Private Sub Form_Load()
    Dim MLFileName As String
    Dim MLFileNum As Integer
    Dim Temp As String
    Dim i As Integer
    
    On Error GoTo Err

    MLFileName = App.Path & "\Scripts.ars"
    MLFileNum = FreeFile                                               '사용가능한 파일번호

    Open MLFileName For Input As MLFileNum                            '파일을 읽기 전용으로 열기

    Do Until EOF(MLFileNum)
        Line Input #MLFileNum, Temp
            Code.AddItem Temp
    Loop
    Close MLFileNum
    
Err:
End Sub

Private Sub List2_Click()
If List2.ListIndex < Code.ListCount Then Code.ListIndex = List2.ListIndex
End Sub

'Private Sub Text1_Click()
'Dim TempCode As String
'Dim i As Integer
'TempCode = ""
'For i = 0 To Code.ListCount - 1
'    TempCode = TempCode + Code.List(i) & vbCrLf
'Next i
'Text1.Text = TempCode
'End Sub
