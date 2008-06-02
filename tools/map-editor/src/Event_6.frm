VERSION 5.00
Begin VB.Form Form12 
   BorderStyle     =   1  '단일 고정
   Caption         =   "주인공 스테이터스 조작"
   ClientHeight    =   3735
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5055
   Icon            =   "Event_6.frx":0000
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3735
   ScaleWidth      =   5055
   Begin VB.Frame Frame3 
      Caption         =   "설정할 변수"
      Height          =   735
      Left            =   120
      TabIndex        =   18
      Top             =   2160
      Width           =   1455
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   120
         TabIndex        =   19
         Text            =   "0"
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "설정 방법"
      Height          =   735
      Left            =   1680
      TabIndex        =   14
      Top             =   2160
      Width           =   3255
      Begin VB.OptionButton Option2 
         Caption         =   "대입"
         Height          =   255
         Index           =   2
         Left            =   2160
         TabIndex        =   17
         Top             =   300
         Width           =   855
      End
      Begin VB.OptionButton Option2 
         Caption         =   "뺄셈"
         Height          =   255
         Index           =   1
         Left            =   1200
         TabIndex        =   16
         Top             =   300
         Width           =   855
      End
      Begin VB.OptionButton Option2 
         Caption         =   "덧셈"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   15
         Top             =   300
         Value           =   -1  'True
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "설정될 스테이터스"
      Height          =   1815
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4815
      Begin VB.OptionButton Option1 
         Caption         =   "GOLD"
         Height          =   375
         Index           =   10
         Left            =   2400
         TabIndex        =   13
         Top             =   1200
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "DEX"
         Height          =   375
         Index           =   9
         Left            =   1320
         TabIndex        =   12
         Top             =   1200
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "WIS"
         Height          =   375
         Index           =   8
         Left            =   240
         TabIndex        =   11
         Top             =   1200
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "DEF"
         Height          =   375
         Index           =   7
         Left            =   3480
         TabIndex        =   10
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "STR"
         Height          =   375
         Index           =   6
         Left            =   2400
         TabIndex        =   9
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "MP"
         Height          =   375
         Index           =   5
         Left            =   1320
         TabIndex        =   8
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "MAXMP"
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   7
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "HP"
         Height          =   375
         Index           =   3
         Left            =   3480
         TabIndex        =   6
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "MAXHP"
         Height          =   375
         Index           =   2
         Left            =   2400
         TabIndex        =   5
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "EXP"
         Height          =   375
         Index           =   1
         Left            =   1320
         TabIndex        =   4
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "LV"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Value           =   -1  'True
         Width           =   1095
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3600
      TabIndex        =   1
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2280
      TabIndex        =   0
      Top             =   3120
      Width           =   1215
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelCct As Integer
Dim SelSts As Integer
Dim CctSign As String

Private Sub Command1_Click()
AddEvent ("SetStatus(" & SelSts & "," & SelCct & "," & Text1.Text & ")" & vbTab & "//Player." & Option1(SelSts).Caption & " " & CctSign & " V[" & Text1.Text & "]")
Unload Me
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Option1_Click(Index As Integer)
    SelSts = Index
End Sub

Private Sub Option2_Click(Index As Integer)
    SelCct = Index
    
    Select Case Index
        Case 0
            CctSign = "+="
        Case 1
            CctSign = "-="
        Case 2
            CctSign = "="
    End Select

End Sub
