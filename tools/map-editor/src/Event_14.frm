VERSION 5.00
Begin VB.Form Form20 
   BorderStyle     =   1  '단일 고정
   Caption         =   "딜레이"
   ClientHeight    =   1815
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3375
   Icon            =   "Event_14.frx":0000
   LinkTopic       =   "Form20"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1815
   ScaleWidth      =   3375
   Begin VB.Frame Frame1 
      Caption         =   "대기 시간"
      Height          =   855
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3135
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   240
         TabIndex        =   3
         Text            =   "0"
         Top             =   300
         Width           =   1815
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   1200
      Width           =   1215
   End
End
Attribute VB_Name = "Form20"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
AddEvent ("Delay(" & Text1.Text & ")")
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
