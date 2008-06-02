VERSION 5.00
Begin VB.Form Form11 
   BorderStyle     =   1  '단일 고정
   Caption         =   "주인공 스테이터스를 변수로"
   ClientHeight    =   3855
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5295
   Icon            =   "Event_5.frx":0000
   LinkTopic       =   "Form11"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3855
   ScaleWidth      =   5295
   Begin VB.CommandButton Command1 
      Caption         =   "확인"
      Height          =   375
      Left            =   2520
      TabIndex        =   16
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "취소"
      Height          =   375
      Left            =   3840
      TabIndex        =   15
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5055
      Begin VB.Frame Frame1 
         Caption         =   "대입할 스테이터스"
         Height          =   1815
         Left            =   120
         TabIndex        =   3
         Top             =   960
         Width           =   4815
         Begin VB.OptionButton Option1 
            Caption         =   "GOLD"
            Height          =   375
            Index           =   10
            Left            =   2400
            TabIndex        =   14
            Top             =   1200
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "DEX"
            Height          =   375
            Index           =   9
            Left            =   1320
            TabIndex        =   13
            Top             =   1200
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "WIS"
            Height          =   375
            Index           =   8
            Left            =   240
            TabIndex        =   12
            Top             =   1200
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "DEF"
            Height          =   375
            Index           =   7
            Left            =   3480
            TabIndex        =   11
            Top             =   720
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "STR"
            Height          =   375
            Index           =   6
            Left            =   2400
            TabIndex        =   10
            Top             =   720
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "MP"
            Height          =   375
            Index           =   5
            Left            =   1320
            TabIndex        =   9
            Top             =   720
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "MAXMP"
            Height          =   375
            Index           =   4
            Left            =   240
            TabIndex        =   8
            Top             =   720
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "HP"
            Height          =   375
            Index           =   3
            Left            =   3480
            TabIndex        =   7
            Top             =   240
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "MAXHP"
            Height          =   375
            Index           =   2
            Left            =   2400
            TabIndex        =   6
            Top             =   240
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "EXP"
            Height          =   375
            Index           =   1
            Left            =   1320
            TabIndex        =   5
            Top             =   240
            Width           =   1095
         End
         Begin VB.OptionButton Option1 
            Caption         =   "LV"
            Height          =   375
            Index           =   0
            Left            =   240
            TabIndex        =   4
            Top             =   240
            Value           =   -1  'True
            Width           =   1095
         End
      End
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   240
         TabIndex        =   1
         Text            =   "0"
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "설정할 변수:"
         Height          =   180
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   1020
      End
   End
End
Attribute VB_Name = "Form11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelCct As Integer

Private Sub Command1_Click()
    AddEvent ("SetValueByStatus(" & SelCct & "," & Text1.Text & ")" & vbTab & "//V[" & Text1.Text & "] = Player." & Option1(SelCct).Caption)
    Unload Me
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Option1_Click(Index As Integer)
    SelCct = Index
End Sub
