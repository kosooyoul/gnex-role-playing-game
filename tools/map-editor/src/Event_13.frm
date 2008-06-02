VERSION 5.00
Begin VB.Form Form19 
   BorderStyle     =   1  '단일 고정
   Caption         =   "스위치에 따른 조건 분기"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   Icon            =   "Event_13.frx":0000
   LinkTopic       =   "Form19"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   4215
   Begin VB.Frame Frame2 
      Caption         =   "대상 스위치"
      Height          =   735
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   3975
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   120
         TabIndex        =   6
         Text            =   "0"
         Top             =   300
         Width           =   1695
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   1440
      TabIndex        =   3
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      Caption         =   "스위치가 꺼져 있는 경우 이동 라인"
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   960
      Width           =   3975
      Begin VB.TextBox Text3 
         Height          =   300
         Left            =   1320
         TabIndex        =   1
         Text            =   "0"
         Top             =   300
         Width           =   1335
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "현재 라인 +"
         Height          =   180
         Left            =   240
         TabIndex        =   2
         Top             =   360
         Width           =   930
      End
   End
End
Attribute VB_Name = "Form19"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelCct As Integer

Private Sub Command1_Click()
AddEvent ("IF(S[" & Text1.Text & "] == TRUE) ElseGoto(" & Text3.Text & ")")
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Option1_Click(Index As Integer)
SelCct = Index
End Sub

