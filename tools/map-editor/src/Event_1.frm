VERSION 5.00
Begin VB.Form Form7 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "문장 출력"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5415
   Icon            =   "Event_1.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   5415
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3960
      TabIndex        =   4
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2640
      TabIndex        =   3
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "문장 출력"
      Height          =   975
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
      Begin VB.CommandButton Command3 
         Caption         =   "..."
         Height          =   280
         Left            =   4440
         TabIndex        =   1
         Top             =   360
         Width           =   495
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "Event_1.frx":014A
         Left            =   240
         List            =   "Event_1.frx":0151
         Style           =   2  '드롭다운 목록
         TabIndex        =   2
         Top             =   360
         Width           =   4215
      End
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    AddEvent ("PrintString(" & Combo1.ListIndex & ")" & vbTab & "//" & Combo1.List(Combo1.ListIndex))
    Unload Me
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Command3_Click()
    Strings.Show 1
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
            Combo1.AddItem Temp
    Loop
    Close MLFileNum
    
    Combo1.ListIndex = 0
Err:
    
End Sub
