VERSION 5.00
Begin VB.Form Form10 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "변수 조작"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4935
   Icon            =   "Event_4.frx":0000
   LinkTopic       =   "Form10"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   4935
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame4 
      Caption         =   "조작할 변수"
      Height          =   735
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   1335
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   120
         TabIndex        =   13
         Text            =   "0"
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "연산 값"
      Height          =   735
      Left            =   1560
      TabIndex        =   8
      Top             =   120
      Width           =   3255
      Begin VB.OptionButton Option3 
         Caption         =   "변수"
         Height          =   255
         Left            =   2280
         TabIndex        =   11
         Top             =   300
         Width           =   855
      End
      Begin VB.OptionButton Option2 
         Caption         =   "상수"
         Height          =   255
         Left            =   1320
         TabIndex        =   10
         Top             =   300
         Value           =   -1  'True
         Width           =   855
      End
      Begin VB.TextBox Text2 
         Height          =   300
         Left            =   120
         TabIndex        =   9
         Text            =   "0"
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "연산 방법"
      Height          =   1215
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   4695
      Begin VB.OptionButton Option1 
         Caption         =   "교환"
         Height          =   375
         Index           =   6
         Left            =   3480
         TabIndex        =   15
         Top             =   720
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "나머지"
         Height          =   375
         Index           =   5
         Left            =   1320
         TabIndex        =   14
         Top             =   720
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "나눔"
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   7
         Top             =   720
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "곱셈"
         Height          =   375
         Index           =   3
         Left            =   3480
         TabIndex        =   6
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "뺄셈"
         Height          =   375
         Index           =   2
         Left            =   2400
         TabIndex        =   5
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "덧셈"
         Height          =   375
         Index           =   1
         Left            =   1320
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         Caption         =   "대입"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Value           =   -1  'True
         Width           =   855
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2160
      TabIndex        =   0
      Top             =   2400
      Width           =   1215
   End
End
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelCct As Integer
Dim CctSign As String

Private Sub Command1_Click()
If Option2.Value = True Then
    AddEvent ("SetValue(" & Text1.Text & "," & SelCct & "," & Text2.Text & ")" & vbTab & "//V[" & Text1.Text & "] " & CctSign & " " & Text2.Text)
Else
    AddEvent ("SetValue(" & Text1.Text & "," & SelCct + 6 & "," & Text2.Text & ")" & vbTab & "//V[" & Text1.Text & "] " & CctSign & " V[" & Text2.Text & "]")
End If

Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Option1_Click(Index As Integer)
    SelCct = Index
    Select Case Index
        Case 0
            CctSign = "="
        Case 1
            CctSign = "+="
        Case 2
            CctSign = "-="
        Case 3
            CctSign = "*="
        Case 4
            CctSign = "/="
        Case 5
            CctSign = "%="
        Case 6
            CctSign = "<-Swap->"
            Option3.Value = True
    End Select
End Sub

Private Sub Option2_Click()
    If SelCct = 6 Then MsgBox "알림 : 상수로는 변수교환이 불가능합니다.": Option1(0).Value = True
End Sub
