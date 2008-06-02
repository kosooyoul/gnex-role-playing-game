VERSION 5.00
Begin VB.Form Form9 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "스위치 조작"
   ClientHeight    =   2055
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5055
   Icon            =   "Event_3.frx":0000
   LinkTopic       =   "Form9"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   5055
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame1 
      Caption         =   "스위치 조작"
      Height          =   1095
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4815
      Begin VB.OptionButton Option1 
         Caption         =   "온"
         Height          =   255
         Left            =   2640
         TabIndex        =   6
         Top             =   640
         Value           =   -1  'True
         Width           =   975
      End
      Begin VB.OptionButton Option2 
         Caption         =   "오프"
         Height          =   255
         Left            =   3600
         TabIndex        =   5
         Top             =   640
         Width           =   975
      End
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   240
         TabIndex        =   3
         Text            =   "0"
         Top             =   600
         Width           =   2055
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "스위치 번호:"
         Height          =   180
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   1020
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3600
      TabIndex        =   0
      Top             =   1440
      Width           =   1215
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If Option1.Value = True Then
        AddEvent ("SetSwitch(" & Text1.Text & ",1)" & vbTab & "//" & Text1.Text & ":True")
    Else
        AddEvent ("SetSwitch(" & Text1.Text & ",0)" & vbTab & "//" & Text1.Text & ":False")
    End If
    Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
