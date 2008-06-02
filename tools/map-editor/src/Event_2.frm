VERSION 5.00
Begin VB.Form Form8 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "문장 조합"
   ClientHeight    =   4455
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5415
   Icon            =   "Event_2.frx":0000
   LinkTopic       =   "Form8"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   5415
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3960
      TabIndex        =   9
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2640
      TabIndex        =   8
      Top             =   3840
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "문장 출력"
      Height          =   3495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
      Begin VB.CommandButton Command3 
         Caption         =   "..."
         Height          =   280
         Left            =   4440
         TabIndex        =   1
         Top             =   600
         Width           =   495
      End
      Begin VB.Frame Frame2 
         Caption         =   "중간 부분"
         Height          =   1335
         Left            =   240
         TabIndex        =   4
         Top             =   1920
         Width           =   4695
         Begin VB.TextBox Text1 
            Height          =   300
            Left            =   240
            TabIndex        =   10
            Text            =   "0"
            Top             =   840
            Width           =   4215
         End
         Begin VB.ComboBox Combo3 
            Height          =   300
            ItemData        =   "Event_2.frx":014A
            Left            =   240
            List            =   "Event_2.frx":0151
            Style           =   2  '드롭다운 목록
            TabIndex        =   7
            Top             =   840
            Visible         =   0   'False
            Width           =   4215
         End
         Begin VB.OptionButton Option2 
            Caption         =   "문장"
            Height          =   255
            Left            =   1320
            TabIndex        =   6
            Top             =   360
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "변수 값"
            Height          =   255
            Left            =   240
            TabIndex        =   5
            Top             =   360
            Value           =   -1  'True
            Width           =   1095
         End
      End
      Begin VB.ComboBox Combo2 
         Height          =   300
         ItemData        =   "Event_2.frx":0162
         Left            =   240
         List            =   "Event_2.frx":0169
         Style           =   2  '드롭다운 목록
         TabIndex        =   3
         Top             =   1320
         Width           =   4215
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "Event_2.frx":017A
         Left            =   240
         List            =   "Event_2.frx":0181
         Style           =   2  '드롭다운 목록
         TabIndex        =   2
         Top             =   600
         Width           =   4215
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "뒷 부분 :"
         Height          =   180
         Left            =   240
         TabIndex        =   12
         Top             =   1080
         Width           =   720
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "앞 부분 :"
         Height          =   180
         Left            =   240
         TabIndex        =   11
         Top             =   360
         Width           =   720
      End
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Option1.Value = True Then
    AddEvent ("UniteString(" & Combo1.ListIndex & "," & Combo2.ListIndex & ",0," & Text1.Text & ")" & vbTab & "//" & Combo1.List(Combo1.ListIndex) & " %d " & Combo2.List(Combo2.ListIndex))
Else
    AddEvent ("UniteString(" & Combo1.ListIndex & "," & Combo2.ListIndex & ",1," & Combo3.ListIndex & ")" & vbTab & "//" & Combo1.List(Combo1.ListIndex) & Combo3.List(Combo3.ListIndex) & Combo2.List(Combo2.ListIndex))
End If
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
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
            Combo3.AddItem Temp
    Loop
    Close MLFileNum
    
    Combo1.ListIndex = 0
    Combo2.ListIndex = 0
    Combo3.ListIndex = 0
    
Err:
End Sub

Private Sub Option1_Click()
If Option1.Value Then
    Text1.Visible = True
    Combo3.Visible = False
Else
    Text1.Visible = False
    Combo3.Visible = True
End If
End Sub

Private Sub Option2_Click()
If Option1.Value Then
    Text1.Visible = True
    Combo3.Visible = False
Else
    Text1.Visible = False
    Combo3.Visible = True
End If
End Sub

