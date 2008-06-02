VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  '단일 고정
   Caption         =   "맵 편집 [ 30 x 30 ]"
   ClientHeight    =   7575
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7545
   Icon            =   "MapEdit.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   7575
   ScaleWidth      =   7545
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808080&
      Height          =   7515
      Left            =   0
      ScaleHeight     =   497
      ScaleMode       =   3  '픽셀
      ScaleWidth      =   497
      TabIndex        =   0
      Top             =   0
      Width           =   7515
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   49
         Left            =   5280
         TabIndex        =   50
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   48
         Left            =   5280
         TabIndex        =   49
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   47
         Left            =   5280
         TabIndex        =   48
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   46
         Left            =   5280
         TabIndex        =   47
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   45
         Left            =   5280
         TabIndex        =   46
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   44
         Left            =   5280
         TabIndex        =   45
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   43
         Left            =   5280
         TabIndex        =   44
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   42
         Left            =   5280
         TabIndex        =   43
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   41
         Left            =   5280
         TabIndex        =   42
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   40
         Left            =   5280
         TabIndex        =   41
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   39
         Left            =   5280
         TabIndex        =   40
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   38
         Left            =   5280
         TabIndex        =   39
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   37
         Left            =   5280
         TabIndex        =   38
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   36
         Left            =   5280
         TabIndex        =   37
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   35
         Left            =   5280
         TabIndex        =   36
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   34
         Left            =   5280
         TabIndex        =   35
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   33
         Left            =   5280
         TabIndex        =   34
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   32
         Left            =   5280
         TabIndex        =   33
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   31
         Left            =   5280
         TabIndex        =   32
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   30
         Left            =   5280
         TabIndex        =   31
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   29
         Left            =   5280
         TabIndex        =   30
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   28
         Left            =   5280
         TabIndex        =   29
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   27
         Left            =   5280
         TabIndex        =   28
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   26
         Left            =   5280
         TabIndex        =   27
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   25
         Left            =   5280
         TabIndex        =   26
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   24
         Left            =   5280
         TabIndex        =   25
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   23
         Left            =   5280
         TabIndex        =   24
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   22
         Left            =   5280
         TabIndex        =   23
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   21
         Left            =   5280
         TabIndex        =   22
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   20
         Left            =   5280
         TabIndex        =   21
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   19
         Left            =   5280
         TabIndex        =   20
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   18
         Left            =   5280
         TabIndex        =   19
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   17
         Left            =   5280
         TabIndex        =   18
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   16
         Left            =   5280
         TabIndex        =   17
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   15
         Left            =   5280
         TabIndex        =   16
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   14
         Left            =   5280
         TabIndex        =   15
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   13
         Left            =   5280
         TabIndex        =   14
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   12
         Left            =   5280
         TabIndex        =   13
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   11
         Left            =   5280
         TabIndex        =   12
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   10
         Left            =   5280
         TabIndex        =   11
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   9
         Left            =   5280
         TabIndex        =   10
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   8
         Left            =   5280
         TabIndex        =   9
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   7
         Left            =   5280
         TabIndex        =   8
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   6
         Left            =   5280
         TabIndex        =   7
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   5
         Left            =   5280
         TabIndex        =   6
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   4
         Left            =   5280
         TabIndex        =   5
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   3
         Left            =   5280
         TabIndex        =   4
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   2
         Left            =   5280
         TabIndex        =   3
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   1
         Left            =   5280
         TabIndex        =   2
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Label mapevent 
         Alignment       =   2  '가운데 맞춤
         Appearance      =   0  '평면
         BackColor       =   &H00FFFF80&
         BorderStyle     =   1  '단일 고정
         Caption         =   "E"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   150
         Index           =   0
         Left            =   5280
         TabIndex        =   1
         Top             =   6720
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Shape Shape3 
         DrawMode        =   7  '역상
         FillColor       =   &H00FFFFFF&
         FillStyle       =   0  '단색
         Height          =   255
         Left            =   4200
         Top             =   2280
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H000000FF&
         DrawMode        =   5  '카피 펜이 아님
         FillColor       =   &H00FFFFFF&
         FillStyle       =   0  '단색
         Height          =   1920
         Left            =   3360
         Top             =   1560
         Visible         =   0   'False
         Width           =   1920
      End
      Begin VB.Shape Shape4 
         BorderColor     =   &H00FFFFFF&
         DrawMode        =   7  '역상
         FillColor       =   &H00FFFFFF&
         FillStyle       =   0  '단색
         Height          =   600
         Left            =   120
         Top             =   120
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   899
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   898
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   897
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   896
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   895
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   894
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   893
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   892
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   891
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   890
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   889
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   888
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   887
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   886
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   885
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   884
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   883
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   882
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   881
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   880
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   879
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   878
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   877
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   876
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   875
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   874
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   873
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   872
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   871
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   870
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   869
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   868
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   867
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   866
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   865
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   864
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   863
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   862
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   861
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   860
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   859
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   858
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   857
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   856
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   855
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   854
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   853
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   852
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   851
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   850
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   849
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   848
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   847
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   846
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   845
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   844
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   843
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   842
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   841
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   840
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   839
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   838
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   837
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   836
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   835
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   834
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   833
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   832
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   831
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   830
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   829
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   828
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   827
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   826
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   825
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   824
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   823
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   822
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   821
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   820
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   819
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   818
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   817
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   816
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   815
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   814
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   813
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   812
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   811
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   810
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   809
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   808
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   807
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   806
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   805
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   804
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   803
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   802
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   801
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   800
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   799
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   798
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   797
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   796
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   795
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   794
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   793
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   792
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   791
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   790
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   789
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   788
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   787
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   786
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   785
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   784
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   783
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   782
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   781
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   780
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   779
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   778
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   777
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   776
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   775
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   774
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   773
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   772
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   771
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   770
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   769
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   768
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   767
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   766
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   765
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   764
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   763
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   762
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   761
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   760
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   759
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   758
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   757
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   756
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   755
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   754
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   753
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   752
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   751
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   750
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   749
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   748
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   747
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   746
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   745
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   744
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   743
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   742
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   741
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   740
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   739
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   738
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   737
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   736
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   735
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   734
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   733
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   732
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   731
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   730
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   729
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   728
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   727
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   726
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   725
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   724
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   723
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   722
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   721
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   720
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   719
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   718
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   717
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   716
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   715
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   714
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   713
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   712
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   711
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   710
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   709
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   708
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   707
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   706
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   705
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   704
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   703
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   702
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   701
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   700
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   699
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   698
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   697
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   696
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   695
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   694
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   693
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   692
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   691
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   690
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   689
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   688
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   687
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   686
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   685
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   684
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   683
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   682
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   681
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   680
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   679
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   678
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   677
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   676
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   675
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   674
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   673
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   672
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   671
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   670
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   669
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   668
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   667
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   666
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   665
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   664
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   663
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   662
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   661
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   660
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   659
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   658
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   657
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   656
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   655
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   654
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   653
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   652
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   651
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   650
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   649
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   648
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   647
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   646
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   645
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   644
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   643
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   642
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   641
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   640
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   639
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   638
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   637
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   636
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   635
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   634
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   633
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   632
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   631
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   630
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   629
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   628
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   627
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   626
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   625
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   624
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   623
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   622
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   621
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   620
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   619
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   618
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   617
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   616
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   615
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   614
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   613
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   612
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   611
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   610
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   609
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   608
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   607
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   606
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   605
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   604
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   603
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   602
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   601
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   600
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   599
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   598
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   597
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   596
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   595
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   594
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   593
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   592
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   591
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   590
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   589
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   588
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   587
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   586
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   585
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   584
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   583
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   582
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   581
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   580
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   579
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   578
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   577
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   576
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   575
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   574
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   573
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   572
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   571
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   570
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   569
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   568
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   567
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   566
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   565
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   564
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   563
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   562
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   561
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   560
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   559
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   558
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   557
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   556
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   555
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   554
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   553
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   552
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   551
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   550
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   549
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   548
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   547
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   546
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   545
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   544
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   543
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   542
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   541
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   540
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   539
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   538
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   537
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   536
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   535
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   534
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   533
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   532
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   531
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   530
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   529
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   528
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   527
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   526
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   525
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   524
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   523
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   522
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   521
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   520
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   519
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   518
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   517
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   516
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   515
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   514
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   513
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   512
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   511
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   510
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   509
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   508
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   507
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   506
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   505
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   504
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   503
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   502
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   501
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   500
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   499
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   498
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   497
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   496
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   495
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   494
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   493
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   492
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   491
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   490
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   489
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   488
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   487
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   486
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   485
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   484
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   483
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   482
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   481
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   480
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   479
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   478
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   477
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   476
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   475
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   474
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   473
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   472
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   471
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   470
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   469
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   468
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   467
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   466
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   465
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   464
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   463
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   462
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   461
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   460
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   459
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   458
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   457
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   456
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   455
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   454
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   453
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   452
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   451
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   450
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   449
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   448
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   447
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   446
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   445
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   444
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   443
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   442
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   441
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   440
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   439
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   438
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   437
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   436
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   435
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   434
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   433
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   432
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   431
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   430
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   429
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   428
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   427
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   426
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   425
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   424
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   423
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   422
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   421
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   420
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   419
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   418
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   417
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   416
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   415
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   414
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   413
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   412
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   411
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   410
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   409
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   408
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   407
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   406
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   405
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   404
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   403
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   402
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   401
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   400
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   399
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   398
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   397
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   396
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   395
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   394
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   393
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   392
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   391
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   390
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   389
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   388
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   387
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   386
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   385
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   384
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   383
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   382
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   381
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   380
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   379
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   378
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   377
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   376
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   375
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   374
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   373
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   372
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   371
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   370
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   369
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   368
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   367
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   366
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   365
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   364
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   363
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   362
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   361
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   360
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   359
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   358
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   357
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   356
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   355
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   354
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   353
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   352
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   351
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   350
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   349
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   348
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   347
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   346
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   345
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   344
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   343
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   342
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   341
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   340
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   339
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   338
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   337
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   336
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   335
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   334
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   333
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   332
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   331
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   330
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   329
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   328
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   327
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   326
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   325
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   324
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   323
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   322
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   321
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   320
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   319
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   318
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   317
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   316
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   315
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   314
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   313
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   312
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   311
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   310
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   309
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   308
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   307
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   306
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   305
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   304
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   303
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   302
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   301
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   300
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   299
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   298
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   297
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   296
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   295
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   294
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   293
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   292
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   291
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   290
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   289
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   288
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   287
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   286
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   285
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   284
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   283
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   282
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   281
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   280
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   279
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   278
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   277
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   276
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   275
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   274
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   273
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   272
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   271
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   270
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   269
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   268
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   267
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   266
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   265
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   264
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   263
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   262
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   261
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   260
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   259
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   258
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   257
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   256
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   255
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   254
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   253
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   252
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   251
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   250
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   249
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   248
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   247
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   246
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   245
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   244
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   243
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   242
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   241
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   240
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   239
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   238
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   237
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   236
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   235
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   234
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   233
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   232
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   231
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   230
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   229
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   228
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   227
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   226
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   225
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   224
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   223
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   222
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   221
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   220
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   219
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   218
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   217
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   216
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   215
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   214
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   213
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   212
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   211
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   210
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   209
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   208
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   207
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   206
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   205
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   204
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   203
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   202
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   201
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   200
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   199
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   198
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   197
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   196
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   195
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   194
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   193
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   192
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   191
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   190
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   189
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   188
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   187
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   186
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   185
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   184
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   183
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   182
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   181
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   180
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   179
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   178
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   177
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   176
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   175
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   174
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   173
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   172
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   171
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   170
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   169
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   168
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   167
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   166
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   165
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   164
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   163
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   162
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   161
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   160
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   159
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   158
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   157
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   156
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   155
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   154
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   153
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   152
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   151
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   150
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   149
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   148
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   147
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   146
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   145
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   144
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   143
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   142
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   141
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   140
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   139
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   138
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   137
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   136
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   135
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   134
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   133
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   132
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   131
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   130
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   129
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   128
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   127
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   126
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   125
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   124
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   123
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   122
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   121
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   120
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   119
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   118
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   117
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   116
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   115
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   114
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   113
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   112
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   111
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   110
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   109
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   108
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   107
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   106
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   105
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   104
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   103
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   102
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   101
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   100
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   99
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   98
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   97
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   96
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   95
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   94
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   93
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   92
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   91
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   90
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   89
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   88
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   87
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   86
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   85
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   84
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   83
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   82
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   81
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   80
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   79
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   78
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   77
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   76
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   75
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   74
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   73
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   72
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   71
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   70
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   69
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   68
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   67
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   66
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   65
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   64
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   63
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   62
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   61
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   60
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   59
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   58
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   57
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   56
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   55
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   54
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   53
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   52
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   51
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   50
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   49
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   48
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   47
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   46
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   45
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   44
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   43
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   42
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   41
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   40
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   39
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   38
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   37
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   36
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   35
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   34
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   33
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   32
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   31
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   30
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   29
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   28
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   27
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   26
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   25
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   24
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   23
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   22
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   21
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   20
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   19
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   18
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   17
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   16
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   15
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   14
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   13
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   12
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   11
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   10
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   9
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   8
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   7
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   6
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   5
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   4
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   3
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   2
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   1
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image overchip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   0
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   899
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   898
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   897
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   896
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   895
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   894
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   893
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   892
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   891
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   890
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   889
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   888
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   887
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   886
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   885
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   884
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   883
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   882
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   881
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   880
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   879
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   878
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   877
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   876
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   875
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   874
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   873
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   872
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   871
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   870
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   869
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   868
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   867
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   866
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   865
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   864
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   863
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   862
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   861
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   860
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   859
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   858
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   857
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   856
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   855
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   854
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   853
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   852
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   851
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   850
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   849
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   848
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   847
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   846
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   845
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   844
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   843
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   842
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   841
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   840
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   839
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   838
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   837
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   836
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   835
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   834
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   833
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   832
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   831
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   830
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   829
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   828
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   827
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   826
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   825
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   824
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   823
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   822
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   821
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   820
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   819
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   818
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   817
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   816
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   815
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   814
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   813
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   812
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   811
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   810
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   809
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   808
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   807
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   806
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   805
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   804
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   803
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   802
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   801
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   800
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   799
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   798
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   797
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   796
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   795
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   794
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   793
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   792
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   791
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   790
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   789
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   788
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   787
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   786
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   785
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   784
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   783
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   782
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   781
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   780
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   779
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   778
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   777
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   776
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   775
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   774
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   773
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   772
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   771
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   770
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   769
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   768
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   767
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   766
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   765
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   764
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   763
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   762
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   761
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   760
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   759
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   758
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   757
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   756
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   755
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   754
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   753
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   752
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   751
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   750
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   749
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   748
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   747
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   746
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   745
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   744
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   743
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   742
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   741
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   740
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   739
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   738
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   737
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   736
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   735
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   734
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   733
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   732
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   731
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   730
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   729
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   728
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   727
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   726
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   725
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   724
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   723
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   722
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   721
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   720
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   719
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   718
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   717
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   716
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   715
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   714
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   713
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   712
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   711
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   710
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   709
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   708
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   707
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   706
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   705
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   704
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   703
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   702
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   701
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   700
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   699
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   698
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   697
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   696
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   695
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   694
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   693
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   692
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   691
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   690
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   689
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   688
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   687
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   686
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   685
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   684
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   683
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   682
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   681
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   680
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   679
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   678
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   677
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   676
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   675
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   674
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   673
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   672
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   671
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   670
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   669
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   668
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   667
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   666
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   665
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   664
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   663
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   662
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   661
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   660
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   659
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   658
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   657
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   656
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   655
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   654
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   653
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   652
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   651
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   650
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   649
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   648
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   647
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   646
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   645
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   644
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   643
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   642
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   641
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   640
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   639
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   638
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   637
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   636
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   635
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   634
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   633
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   632
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   631
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   630
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   629
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   628
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   627
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   626
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   625
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   624
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   623
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   622
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   621
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   620
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   619
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   618
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   617
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   616
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   615
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   614
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   613
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   612
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   611
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   610
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   609
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   608
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   607
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   606
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   605
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   604
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   603
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   602
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   601
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   600
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   599
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   598
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   597
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   596
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   595
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   594
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   593
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   592
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   591
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   590
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   589
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   588
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   587
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   586
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   585
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   584
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   583
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   582
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   581
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   580
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   579
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   578
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   577
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   576
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   575
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   574
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   573
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   572
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   571
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   570
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   569
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   568
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   567
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   566
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   565
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   564
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   563
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   562
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   561
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   560
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   559
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   558
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   557
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   556
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   555
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   554
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   553
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   552
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   551
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   550
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   549
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   548
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   547
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   546
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   545
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   544
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   543
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   542
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   541
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   540
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   539
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   538
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   537
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   536
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   535
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   534
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   533
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   532
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   531
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   530
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   529
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   528
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   527
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   526
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   525
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   524
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   523
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   522
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   521
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   520
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   519
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   518
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   517
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   516
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   515
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   514
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   513
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   512
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   511
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   510
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   509
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   508
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   507
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   506
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   505
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   504
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   503
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   502
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   501
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   500
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   499
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   498
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   497
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   496
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   495
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   494
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   493
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   492
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   491
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   490
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   489
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   488
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   487
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   486
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   485
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   484
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   483
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   482
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   481
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   480
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   479
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   478
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   477
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   476
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   475
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   474
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   473
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   472
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   471
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   470
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   469
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   468
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   467
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   466
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   465
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   464
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   463
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   462
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   461
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   460
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   459
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   458
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   457
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   456
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   455
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   454
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   453
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   452
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   451
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   450
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   449
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   448
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   447
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   446
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   445
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   444
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   443
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   442
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   441
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   440
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   439
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   438
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   437
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   436
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   435
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   434
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   433
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   432
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   431
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   430
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   429
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   428
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   427
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   426
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   425
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   424
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   423
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   422
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   421
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   420
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   419
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   418
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   417
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   416
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   415
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   414
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   413
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   412
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   411
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   410
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   409
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   408
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   407
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   406
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   405
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   404
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   403
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   402
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   401
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   400
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   399
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   398
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   397
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   396
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   395
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   394
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   393
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   392
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   391
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   390
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   389
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   388
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   387
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   386
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   385
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   384
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   383
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   382
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   381
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   380
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   379
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   378
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   377
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   376
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   375
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   374
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   373
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   372
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   371
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   370
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   369
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   368
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   367
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   366
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   365
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   364
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   363
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   362
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   361
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   360
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   359
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   358
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   357
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   356
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   355
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   354
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   353
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   352
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   351
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   350
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   349
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   348
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   347
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   346
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   345
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   344
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   343
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   342
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   341
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   340
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   339
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   338
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   337
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   336
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   335
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   334
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   333
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   332
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   331
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   330
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   329
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   328
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   327
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   326
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   325
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   324
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   323
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   322
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   321
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   320
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   319
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   318
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   317
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   316
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   315
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   314
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   313
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   312
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   311
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   310
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   309
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   308
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   307
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   306
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   305
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   304
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   303
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   302
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   301
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   300
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   299
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   298
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   297
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   296
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   295
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   294
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   293
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   292
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   291
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   290
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   289
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   288
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   287
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   286
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   285
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   284
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   283
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   282
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   281
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   280
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   279
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   278
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   277
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   276
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   275
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   274
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   273
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   272
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   271
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   270
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   269
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   268
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   267
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   266
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   265
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   264
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   263
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   262
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   261
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   260
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   259
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   258
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   257
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   256
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   255
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   254
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   253
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   252
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   251
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   250
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   249
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   248
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   247
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   246
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   245
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   244
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   243
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   242
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   241
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   240
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   239
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   238
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   237
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   236
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   235
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   234
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   233
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   232
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   231
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   230
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   229
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   228
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   227
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   226
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   225
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   224
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   223
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   222
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   221
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   220
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   219
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   218
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   217
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   216
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   215
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   214
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   213
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   212
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   211
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   210
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   209
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   208
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   207
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   206
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   205
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   204
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   203
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   202
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   201
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   200
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   199
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   198
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   197
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   196
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   195
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   194
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   193
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   192
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   191
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   190
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   189
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   188
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   187
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   186
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   185
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   184
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   183
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   182
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   181
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   180
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   179
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   178
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   177
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   176
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   175
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   174
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   173
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   172
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   171
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   170
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   169
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   168
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   167
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   166
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   165
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   164
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   163
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   162
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   161
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   160
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   159
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   158
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   157
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   156
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   155
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   154
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   153
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   152
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   151
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   150
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   149
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   148
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   147
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   146
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   145
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   144
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   143
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   142
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   141
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   140
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   139
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   138
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   137
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   136
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   135
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   134
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   133
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   132
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   131
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   130
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   129
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   128
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   127
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   126
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   125
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   124
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   123
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   122
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   121
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   120
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   119
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   118
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   117
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   116
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   115
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   114
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   113
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   112
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   111
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   110
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   109
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   108
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   107
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   106
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   105
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   104
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   103
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   102
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   101
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   100
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   99
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   98
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   97
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   96
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   95
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   94
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   93
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   92
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   91
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   90
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   89
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   88
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   87
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   86
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   85
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   84
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   83
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   82
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   81
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   80
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   79
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   78
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   77
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   76
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   75
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   74
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   73
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   72
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   71
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   70
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   69
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   68
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   67
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   66
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   65
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   64
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   63
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   62
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   61
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   60
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   59
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   58
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   57
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   56
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   55
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   54
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   53
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   52
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   51
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   50
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   49
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   48
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   47
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   46
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   45
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   44
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   43
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   42
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   41
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   40
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   39
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   38
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   37
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   36
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   35
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   34
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   33
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   32
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   31
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   30
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   29
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   28
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   27
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   26
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   25
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   24
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   23
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   22
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   21
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   20
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   19
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   18
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   17
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   16
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   15
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   14
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   13
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   12
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   11
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   10
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   9
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   8
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   7
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   6
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   5
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   4
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   3
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   2
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   1
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Image chip 
         Appearance      =   0  '평면
         BorderStyle     =   1  '단일 고정
         Height          =   285
         Index           =   0
         Left            =   0
         Top             =   0
         Width           =   285
      End
      Begin VB.Line Line1 
         Index           =   28
         X1              =   0
         X2              =   640
         Y1              =   376
         Y2              =   376
      End
      Begin VB.Line Line1 
         Index           =   27
         X1              =   0
         X2              =   640
         Y1              =   384
         Y2              =   384
      End
      Begin VB.Line Line1 
         Index           =   26
         X1              =   0
         X2              =   640
         Y1              =   392
         Y2              =   392
      End
      Begin VB.Line Line1 
         Index           =   25
         X1              =   0
         X2              =   640
         Y1              =   400
         Y2              =   400
      End
      Begin VB.Line Line2 
         Index           =   28
         X1              =   192
         X2              =   192
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   27
         X1              =   200
         X2              =   200
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   26
         X1              =   208
         X2              =   208
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   25
         X1              =   216
         X2              =   216
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   24
         X1              =   224
         X2              =   224
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   23
         X1              =   216
         X2              =   216
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   22
         X1              =   208
         X2              =   208
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   21
         X1              =   200
         X2              =   200
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   20
         X1              =   192
         X2              =   192
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   19
         X1              =   184
         X2              =   184
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   18
         X1              =   176
         X2              =   176
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   17
         X1              =   168
         X2              =   168
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   16
         X1              =   160
         X2              =   160
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   15
         X1              =   152
         X2              =   152
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   14
         X1              =   152
         X2              =   152
         Y1              =   8
         Y2              =   440
      End
      Begin VB.Line Line2 
         Index           =   13
         X1              =   136
         X2              =   136
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   12
         X1              =   128
         X2              =   128
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   11
         X1              =   120
         X2              =   120
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   10
         X1              =   112
         X2              =   112
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   9
         X1              =   104
         X2              =   104
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   8
         X1              =   96
         X2              =   96
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   7
         X1              =   88
         X2              =   88
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   6
         X1              =   80
         X2              =   80
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   5
         X1              =   72
         X2              =   72
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   4
         X1              =   64
         X2              =   64
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   3
         X1              =   56
         X2              =   56
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   2
         X1              =   48
         X2              =   48
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   1
         X1              =   40
         X2              =   40
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line2 
         Index           =   0
         X1              =   18
         X2              =   18
         Y1              =   0
         Y2              =   432
      End
      Begin VB.Line Line1 
         Index           =   24
         X1              =   0
         X2              =   640
         Y1              =   400
         Y2              =   400
      End
      Begin VB.Line Line1 
         Index           =   23
         X1              =   0
         X2              =   640
         Y1              =   392
         Y2              =   392
      End
      Begin VB.Line Line1 
         Index           =   22
         X1              =   0
         X2              =   640
         Y1              =   384
         Y2              =   384
      End
      Begin VB.Line Line1 
         Index           =   21
         X1              =   0
         X2              =   640
         Y1              =   376
         Y2              =   376
      End
      Begin VB.Line Line1 
         Index           =   20
         X1              =   0
         X2              =   640
         Y1              =   368
         Y2              =   368
      End
      Begin VB.Line Line1 
         Index           =   19
         X1              =   0
         X2              =   640
         Y1              =   360
         Y2              =   360
      End
      Begin VB.Line Line1 
         Index           =   18
         X1              =   0
         X2              =   640
         Y1              =   352
         Y2              =   352
      End
      Begin VB.Line Line1 
         Index           =   17
         X1              =   0
         X2              =   640
         Y1              =   344
         Y2              =   344
      End
      Begin VB.Line Line1 
         Index           =   16
         X1              =   0
         X2              =   640
         Y1              =   306
         Y2              =   306
      End
      Begin VB.Line Line1 
         Index           =   15
         X1              =   0
         X2              =   640
         Y1              =   288
         Y2              =   288
      End
      Begin VB.Line Line1 
         Index           =   14
         X1              =   0
         X2              =   640
         Y1              =   270
         Y2              =   270
      End
      Begin VB.Line Line1 
         Index           =   13
         X1              =   0
         X2              =   640
         Y1              =   252
         Y2              =   252
      End
      Begin VB.Line Line1 
         Index           =   12
         X1              =   0
         X2              =   640
         Y1              =   234
         Y2              =   234
      End
      Begin VB.Line Line1 
         Index           =   11
         X1              =   0
         X2              =   640
         Y1              =   216
         Y2              =   216
      End
      Begin VB.Line Line1 
         Index           =   10
         X1              =   0
         X2              =   640
         Y1              =   198
         Y2              =   198
      End
      Begin VB.Line Line1 
         Index           =   9
         X1              =   0
         X2              =   640
         Y1              =   180
         Y2              =   180
      End
      Begin VB.Line Line1 
         Index           =   8
         X1              =   0
         X2              =   640
         Y1              =   162
         Y2              =   162
      End
      Begin VB.Line Line1 
         Index           =   7
         X1              =   0
         X2              =   640
         Y1              =   144
         Y2              =   144
      End
      Begin VB.Line Line1 
         Index           =   6
         X1              =   0
         X2              =   640
         Y1              =   126
         Y2              =   126
      End
      Begin VB.Line Line1 
         Index           =   5
         X1              =   0
         X2              =   640
         Y1              =   108
         Y2              =   108
      End
      Begin VB.Line Line1 
         Index           =   4
         X1              =   0
         X2              =   640
         Y1              =   56
         Y2              =   56
      End
      Begin VB.Line Line1 
         Index           =   3
         X1              =   0
         X2              =   640
         Y1              =   72
         Y2              =   72
      End
      Begin VB.Line Line1 
         Index           =   2
         X1              =   0
         X2              =   640
         Y1              =   54
         Y2              =   54
      End
      Begin VB.Line Line1 
         Index           =   1
         X1              =   0
         X2              =   640
         Y1              =   36
         Y2              =   36
      End
      Begin VB.Line Line1 
         Index           =   0
         X1              =   0
         X2              =   640
         Y1              =   32
         Y2              =   32
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         FillColor       =   &H00FFFFFF&
         FillStyle       =   0  '단색
         Height          =   120
         Left            =   120
         Top             =   120
         Width           =   120
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim AutoOn As Boolean

Private Sub overchip_DblClick(Index As Integer)
    mapevent(0).Top = overchip(Index).Top
    mapevent(0).Left = overchip(Index).Left
    mapevent(0).Visible = True
End Sub

Private Sub overchip_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        If MDIForm1.Toolbar2.Buttons(11).Value Then
            chip(Index).Picture = Form3.mapchip(SelectedMapChip).Picture
            Area(Index) = SelectedMapChip
        End If
        If MDIForm1.Toolbar2.Buttons(12).Value Then
            overchip(Index).Picture = Form3.mapoverchip(SelectedMapOverChip).Picture
            OverArea(Index) = SelectedMapOverChip
        End If
    ElseIf Button = 2 Then
        If MDIForm1.Toolbar2.Buttons(11).Value Then
            SelectedMapChip = Area(Index)
            Form3.Shape1.Top = Form3.mapchip(Area(Index)).Top
            Form3.Shape1.Left = Form3.mapchip(Area(Index)).Left
        End If
        If MDIForm1.Toolbar2.Buttons(12).Value Then
            SelectedMapOverChip = OverArea(Index)
            Form3.Shape2.Top = Form3.mapoverchip(OverArea(Index)).Top
            Form3.Shape2.Left = Form3.mapoverchip(OverArea(Index)).Left
        End If
        Form3.Caption = "맵 칩 - [ " & SelectedMapChip & " ]"
    End If
    
End Sub

Private Sub overchip_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Shift Then
        If MDIForm1.Toolbar2.Buttons(11).Value Then
            chip(Index).Picture = Form3.mapchip(SelectedMapChip).Picture
            Area(Index) = SelectedMapChip
        End If
        If MDIForm1.Toolbar2.Buttons(12).Value Then
            overchip(Index).Picture = Form3.mapoverchip(SelectedMapOverChip).Picture
            OverArea(Index) = SelectedMapOverChip
        End If
    End If
    Me.Caption = "맵 편집 - [ X : " & Int(Index / 30) & " Y : " & (Index - Int(Index / 30) * 30) & " ChipNumber : " & Area(Index) & " / " & OverArea(Index) & " ]"
End Sub

Private Sub overchip_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 4 Then
        If Shape2.Visible Then
            Shape2.Visible = False: Shape3.Visible = False: Shape4.Visible = False
        Else
            Shape2.Visible = True
            Shape2.Left = chip(Index).Left + 8 - 64
            Shape2.Top = chip(Index).Top + 8 - 64
            Shape3.Visible = True
            Shape3.Left = chip(Index).Left
            Shape3.Top = chip(Index).Top
            Shape4.Visible = True
        End If
    End If
    
End Sub

Private Sub Form_Load()
    Dim i As Integer, j As Integer
    For i = 0 To 28
        Line1(i).Y1 = 16 * (i + 1) + 8
        Line1(i).Y2 = Line1(i).Y1
        Line1(i).X2 = Picture1.Width
        Line2(i).X1 = Line1(i).Y1
        Line2(i).X2 = Line1(i).Y1
        Line2(i).Y2 = Picture1.Height
    Next i
    
    For i = 0 To 899
        chip(i).Appearance = 0
        chip(i).Top = Int(i / 30) * 16 + 8
        chip(i).Left = (i - Int(i / 30) * 30) * 16 + 8
        chip(i).Width = 17
        chip(i).Height = 17
        overchip(i).Appearance = 0
        overchip(i).Top = Int(i / 30) * 16 + 8
        overchip(i).Left = (i - Int(i / 30) * 30) * 16 + 8
        overchip(i).Width = 17
        overchip(i).Height = 17
        overchip(i).BorderStyle = 0
    Next i
    Shape1.Width = 16 * 30
    Shape1.Height = 16 * 30
    Shape4.Width = Shape1.Width
    Shape4.Height = Shape1.Height
    
    Form2.Show
    Form3.Show
End Sub

