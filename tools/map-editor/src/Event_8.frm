VERSION 5.00
Begin VB.Form Form14 
   BorderStyle     =   1  '단일 고정
   Caption         =   "주인공 텔레포트"
   ClientHeight    =   2175
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   Icon            =   "Event_8.frx":0000
   LinkTopic       =   "Form14"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2175
   ScaleWidth      =   4215
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   1440
      TabIndex        =   8
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   2760
      TabIndex        =   7
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "텔레포트 지점 지정"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3975
      Begin VB.TextBox Text3 
         Height          =   300
         Left            =   2640
         TabIndex        =   3
         Text            =   "0"
         Top             =   600
         Width           =   1095
      End
      Begin VB.TextBox Text2 
         Height          =   300
         Left            =   1440
         TabIndex        =   2
         Text            =   "0"
         Top             =   600
         Width           =   1095
      End
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   240
         TabIndex        =   1
         Text            =   "0"
         Top             =   600
         Width           =   855
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Y 좌표:"
         Height          =   180
         Left            =   2640
         TabIndex        =   6
         Top             =   360
         Width           =   600
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "X 좌표:"
         Height          =   180
         Left            =   1440
         TabIndex        =   5
         Top             =   360
         Width           =   600
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "맵 번호:"
         Height          =   180
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   660
      End
   End
End
Attribute VB_Name = "Form14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
AddEvent ("Warp(" & Text1.Text & "," & Text2.Text & "," & Text3.Text & ")" & vbTab & "//Area[" & Text1.Text & "]-(" & Text2.Text & "," & Text3.Text & ")")
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
