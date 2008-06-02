VERSION 5.00
Begin VB.Form Form18 
   BorderStyle     =   1  '단일 고정
   Caption         =   "변수에 따른 조건 분기"
   ClientHeight    =   4215
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   Icon            =   "Event_12.frx":0000
   LinkTopic       =   "Form18"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4215
   ScaleWidth      =   4215
   Begin VB.Frame Frame4 
      Caption         =   "비교 결과 거짓인 경우 이동 라인"
      Height          =   735
      Left            =   120
      TabIndex        =   12
      Top             =   2640
      Width           =   3975
      Begin VB.TextBox Text3 
         Height          =   300
         Left            =   1320
         TabIndex        =   13
         Text            =   "0"
         Top             =   300
         Width           =   1335
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "현재 라인 +"
         Height          =   180
         Left            =   240
         TabIndex        =   14
         Top             =   360
         Width           =   930
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   1440
      TabIndex        =   11
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   2760
      TabIndex        =   10
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      Caption         =   "비교 변수"
      Height          =   735
      Left            =   120
      TabIndex        =   8
      Top             =   1800
      Width           =   3975
      Begin VB.TextBox Text2 
         Height          =   300
         Left            =   120
         TabIndex        =   9
         Text            =   "0"
         Top             =   300
         Width           =   1695
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "대상 변수"
      Height          =   735
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   3975
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   120
         TabIndex        =   7
         Text            =   "0"
         Top             =   300
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "비교 부호"
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   960
      Width           =   3975
      Begin VB.OptionButton Option1 
         Caption         =   ">"
         Height          =   375
         Index           =   4
         Left            =   3120
         TabIndex        =   5
         Top             =   240
         Width           =   735
      End
      Begin VB.OptionButton Option1 
         Caption         =   "<"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   4
         Top             =   240
         Value           =   -1  'True
         Width           =   735
      End
      Begin VB.OptionButton Option1 
         Caption         =   "<="
         Height          =   375
         Index           =   1
         Left            =   960
         TabIndex        =   3
         Top             =   240
         Width           =   735
      End
      Begin VB.OptionButton Option1 
         Caption         =   "=="
         Height          =   375
         Index           =   2
         Left            =   1680
         TabIndex        =   2
         Top             =   240
         Width           =   735
      End
      Begin VB.OptionButton Option1 
         Caption         =   ">="
         Height          =   375
         Index           =   3
         Left            =   2400
         TabIndex        =   1
         Top             =   240
         Width           =   735
      End
   End
End
Attribute VB_Name = "Form18"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelCct As Integer

Private Sub Command1_Click()
AddEvent ("IF(V[" & Text1.Text & "] " & Option1(SelCct).Caption & " V[" & Text2.Text & "]) ElseGoto(" & Text3.Text & ")")
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Option1_Click(Index As Integer)
SelCct = Index
End Sub
