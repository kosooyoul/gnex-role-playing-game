VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  '단일 고정
   Caption         =   "맵 코드 - [ 30 x 30 ]"
   ClientHeight    =   5805
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5685
   Icon            =   "MapCode.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5805
   ScaleWidth      =   5685
   Begin VB.TextBox Text1 
      Height          =   2850
      Left            =   20
      MultiLine       =   -1  'True
      ScrollBars      =   3  '양방향
      TabIndex        =   1
      Text            =   "MapCode.frx":058A
      Top             =   2940
      Width           =   5655
   End
   Begin VB.TextBox Text2 
      Height          =   2850
      Left            =   20
      MultiLine       =   -1  'True
      ScrollBars      =   3  '양방향
      TabIndex        =   0
      Text            =   "MapCode.frx":0CD1
      Top             =   40
      Width           =   5655
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
