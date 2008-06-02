VERSION 5.00
Begin VB.Form Form15 
   BorderStyle     =   1  '단일 고정
   Caption         =   "케릭터 이동"
   ClientHeight    =   2070
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3255
   Icon            =   "Event_9.frx":0000
   LinkTopic       =   "Form15"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2070
   ScaleWidth      =   3255
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   480
      TabIndex        =   5
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "케릭터 이동 지정"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3015
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "Event_9.frx":014A
         Left            =   1560
         List            =   "Event_9.frx":015A
         Style           =   2  '드롭다운 목록
         TabIndex        =   4
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   240
         TabIndex        =   1
         Text            =   "0"
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "케릭터 번호:"
         Height          =   180
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   1020
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "이동 방향:"
         Height          =   180
         Left            =   1560
         TabIndex        =   2
         Top             =   360
         Width           =   840
      End
   End
End
Attribute VB_Name = "Form15"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Direction As String

Private Sub Combo1_Click()
Direction = Combo1.List(Combo1.ListIndex)
End Sub

Private Sub Command1_Click()
If Text1.Text = 0 Then
    AddEvent ("Move(" & Text1.Text & "," & Combo1.ListIndex & ")" & vbTab & "//주인공 이동:" & Direction)
Else
    AddEvent ("Move(" & Text1.Text & "," & Combo1.ListIndex & ")" & vbTab & "//" & Text1.Text - 1 & "번 이벤트 이동:" & Direction)
End If
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Combo1.ListIndex = 0
End Sub
