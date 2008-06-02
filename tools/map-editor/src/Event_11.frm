VERSION 5.00
Begin VB.Form Form17 
   BorderStyle     =   1  '단일 고정
   Caption         =   "선택지"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5415
   Icon            =   "Event_11.frx":0000
   LinkTopic       =   "Form17"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   5415
   Begin VB.Frame Frame2 
      Height          =   2055
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   5175
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   240
         TabIndex        =   6
         Text            =   "0"
         Top             =   480
         Width           =   1815
      End
      Begin VB.CommandButton Command3 
         Caption         =   "..."
         Height          =   280
         Left            =   4440
         TabIndex        =   3
         Top             =   1200
         Width           =   495
      End
      Begin VB.ComboBox Combo2 
         Height          =   300
         ItemData        =   "Event_11.frx":014A
         Left            =   240
         List            =   "Event_11.frx":0151
         Style           =   2  '드롭다운 목록
         TabIndex        =   5
         Top             =   1560
         Width           =   4215
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "Event_11.frx":0162
         Left            =   240
         List            =   "Event_11.frx":0169
         Style           =   2  '드롭다운 목록
         TabIndex        =   4
         Top             =   1200
         Width           =   4215
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "대답:"
         Height          =   180
         Left            =   240
         TabIndex        =   8
         Top             =   960
         Width           =   420
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "선택 결과 저장 변수 번호:"
         Height          =   180
         Left            =   240
         TabIndex        =   7
         Top             =   240
         Width           =   2100
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3960
      TabIndex        =   1
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2640
      TabIndex        =   0
      Top             =   2400
      Width           =   1215
   End
End
Attribute VB_Name = "Form17"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
AddEvent ("Select(" & Text1.Text & "," & Combo1.ListIndex & "," & Combo2.ListIndex & ")" & vbTab & "//V[" & Text1.Text & "] <- """ & Combo1.List(Combo1.ListIndex) & """/""" & Combo2.List(Combo2.ListIndex) & """")
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
            Combo2.AddItem Temp
    Loop
    Close MLFileNum
    
    Combo1.ListIndex = 0
    Combo2.ListIndex = 0
    
Err:
End Sub
