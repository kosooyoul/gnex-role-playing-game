VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   1  '단일 고정
   Caption         =   "맵 칩"
   ClientHeight    =   6570
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5370
   Icon            =   "MapChip.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   6570
   ScaleWidth      =   5370
   Begin VB.PictureBox Picture1 
      Height          =   6510
      Left            =   20
      ScaleHeight     =   6450
      ScaleWidth      =   5280
      TabIndex        =   0
      Top             =   40
      Width           =   5340
      Begin VB.Shape Shape1 
         BorderColor     =   &H0000FFFF&
         Height          =   240
         Left            =   120
         Top             =   360
         Width           =   240
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H00FFFF00&
         Height          =   240
         Left            =   2760
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   239
         Left            =   4920
         Picture         =   "MapChip.frx":058A
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   238
         Left            =   4680
         Picture         =   "MapChip.frx":0925
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   237
         Left            =   4440
         Picture         =   "MapChip.frx":0CC5
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   236
         Left            =   4200
         Picture         =   "MapChip.frx":1077
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   235
         Left            =   3960
         Picture         =   "MapChip.frx":141F
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   234
         Left            =   3720
         Picture         =   "MapChip.frx":17C1
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   233
         Left            =   3480
         Picture         =   "MapChip.frx":1B44
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   232
         Left            =   3240
         Picture         =   "MapChip.frx":1E86
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   231
         Left            =   3000
         Picture         =   "MapChip.frx":21C8
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   230
         Left            =   2760
         Picture         =   "MapChip.frx":250A
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   229
         Left            =   4920
         Picture         =   "MapChip.frx":284C
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   228
         Left            =   4680
         Picture         =   "MapChip.frx":2BE6
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   227
         Left            =   4440
         Picture         =   "MapChip.frx":2F7E
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   226
         Left            =   4200
         Picture         =   "MapChip.frx":3337
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   225
         Left            =   3960
         Picture         =   "MapChip.frx":36D4
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   224
         Left            =   3720
         Picture         =   "MapChip.frx":3A71
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   223
         Left            =   3480
         Picture         =   "MapChip.frx":3DF5
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   222
         Left            =   3240
         Picture         =   "MapChip.frx":4137
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   221
         Left            =   3000
         Picture         =   "MapChip.frx":4479
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   220
         Left            =   2760
         Picture         =   "MapChip.frx":47BB
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   219
         Left            =   4920
         Picture         =   "MapChip.frx":4AFD
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   218
         Left            =   4680
         Picture         =   "MapChip.frx":4EA9
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   217
         Left            =   4440
         Picture         =   "MapChip.frx":51EB
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   216
         Left            =   4200
         Picture         =   "MapChip.frx":552D
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   215
         Left            =   3960
         Picture         =   "MapChip.frx":586F
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   214
         Left            =   3720
         Picture         =   "MapChip.frx":5C19
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   213
         Left            =   3480
         Picture         =   "MapChip.frx":5FB1
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   212
         Left            =   3240
         Picture         =   "MapChip.frx":62F3
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   211
         Left            =   3000
         Picture         =   "MapChip.frx":6635
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   210
         Left            =   2760
         Picture         =   "MapChip.frx":6A13
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   209
         Left            =   4920
         Picture         =   "MapChip.frx":6DFE
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   208
         Left            =   4680
         Picture         =   "MapChip.frx":7198
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   207
         Left            =   4440
         Picture         =   "MapChip.frx":74DA
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   206
         Left            =   4200
         Picture         =   "MapChip.frx":781C
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   205
         Left            =   3960
         Picture         =   "MapChip.frx":7B5E
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   204
         Left            =   3720
         Picture         =   "MapChip.frx":7EFB
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   203
         Left            =   3480
         Picture         =   "MapChip.frx":827F
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   202
         Left            =   3240
         Picture         =   "MapChip.frx":85C1
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   201
         Left            =   3000
         Picture         =   "MapChip.frx":8903
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   200
         Left            =   2760
         Picture         =   "MapChip.frx":8CDB
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   249
         Left            =   2280
         Picture         =   "MapChip.frx":90C0
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   248
         Left            =   2040
         Picture         =   "MapChip.frx":9402
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   247
         Left            =   1800
         Picture         =   "MapChip.frx":9744
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   246
         Left            =   1560
         Picture         =   "MapChip.frx":9A86
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   245
         Left            =   1320
         Picture         =   "MapChip.frx":9DC8
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   244
         Left            =   1080
         Picture         =   "MapChip.frx":A10A
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   243
         Left            =   840
         Picture         =   "MapChip.frx":A44C
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   242
         Left            =   600
         Picture         =   "MapChip.frx":A78E
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   241
         Left            =   360
         Picture         =   "MapChip.frx":AAD0
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   240
         Left            =   120
         Picture         =   "MapChip.frx":AE12
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   239
         Left            =   2280
         Picture         =   "MapChip.frx":B154
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   238
         Left            =   2040
         Picture         =   "MapChip.frx":B496
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   237
         Left            =   1800
         Picture         =   "MapChip.frx":B7D8
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   236
         Left            =   1560
         Picture         =   "MapChip.frx":BB1A
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   235
         Left            =   1320
         Picture         =   "MapChip.frx":BE5C
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   234
         Left            =   1080
         Picture         =   "MapChip.frx":C19E
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   233
         Left            =   840
         Picture         =   "MapChip.frx":C4E0
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   232
         Left            =   600
         Picture         =   "MapChip.frx":C822
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   231
         Left            =   360
         Picture         =   "MapChip.frx":CB64
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   230
         Left            =   120
         Picture         =   "MapChip.frx":CEA6
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   229
         Left            =   2280
         Picture         =   "MapChip.frx":D1E8
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   228
         Left            =   2040
         Picture         =   "MapChip.frx":D52A
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   227
         Left            =   1800
         Picture         =   "MapChip.frx":D86C
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   226
         Left            =   1560
         Picture         =   "MapChip.frx":DBAE
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   225
         Left            =   1320
         Picture         =   "MapChip.frx":DEF0
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   224
         Left            =   1080
         Picture         =   "MapChip.frx":E232
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   223
         Left            =   840
         Picture         =   "MapChip.frx":E574
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   222
         Left            =   600
         Picture         =   "MapChip.frx":E8B6
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   221
         Left            =   360
         Picture         =   "MapChip.frx":EBF8
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   220
         Left            =   120
         Picture         =   "MapChip.frx":EF3A
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   219
         Left            =   2280
         Picture         =   "MapChip.frx":F27C
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   218
         Left            =   2040
         Picture         =   "MapChip.frx":F5BE
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   217
         Left            =   1800
         Picture         =   "MapChip.frx":F900
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   216
         Left            =   1560
         Picture         =   "MapChip.frx":FC42
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   215
         Left            =   1320
         Picture         =   "MapChip.frx":FF84
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   214
         Left            =   1080
         Picture         =   "MapChip.frx":102C6
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   213
         Left            =   840
         Picture         =   "MapChip.frx":10608
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   212
         Left            =   600
         Picture         =   "MapChip.frx":1094A
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   211
         Left            =   360
         Picture         =   "MapChip.frx":10C8C
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   210
         Left            =   120
         Picture         =   "MapChip.frx":10FCE
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   209
         Left            =   2280
         Picture         =   "MapChip.frx":11310
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   208
         Left            =   2040
         Picture         =   "MapChip.frx":11652
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   207
         Left            =   1800
         Picture         =   "MapChip.frx":11994
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   206
         Left            =   1560
         Picture         =   "MapChip.frx":11CD6
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   205
         Left            =   1320
         Picture         =   "MapChip.frx":12018
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   204
         Left            =   1080
         Picture         =   "MapChip.frx":1235A
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   203
         Left            =   840
         Picture         =   "MapChip.frx":1269C
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   202
         Left            =   600
         Picture         =   "MapChip.frx":129DE
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   201
         Left            =   360
         Picture         =   "MapChip.frx":12D20
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   200
         Left            =   120
         Picture         =   "MapChip.frx":13062
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   62
         Left            =   600
         Picture         =   "MapChip.frx":133A4
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   30
         Left            =   120
         Picture         =   "MapChip.frx":136E6
         Top             =   1080
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 2"
         ForeColor       =   &H80000010&
         Height          =   180
         Index           =   2
         Left            =   2760
         TabIndex        =   3
         Top             =   120
         Width           =   630
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 1"
         ForeColor       =   &H80000010&
         Height          =   180
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   630
      End
      Begin VB.Line Line2 
         BorderColor     =   &H80000005&
         X1              =   2640
         X2              =   2640
         Y1              =   120
         Y2              =   6360
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000010&
         BorderWidth     =   2
         X1              =   2640
         X2              =   2640
         Y1              =   120
         Y2              =   6360
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   199
         Left            =   4920
         Picture         =   "MapChip.frx":13A28
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   198
         Left            =   4680
         Picture         =   "MapChip.frx":13DC6
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   197
         Left            =   4440
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   196
         Left            =   4200
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   195
         Left            =   3960
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   194
         Left            =   3720
         Picture         =   "MapChip.frx":14108
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   193
         Left            =   3480
         Picture         =   "MapChip.frx":144A6
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   192
         Left            =   3240
         Picture         =   "MapChip.frx":14853
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   191
         Left            =   3000
         Picture         =   "MapChip.frx":14BFB
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   190
         Left            =   2760
         Picture         =   "MapChip.frx":14F3D
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   189
         Left            =   4920
         Picture         =   "MapChip.frx":152B0
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   188
         Left            =   4680
         Picture         =   "MapChip.frx":15676
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   187
         Left            =   4440
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   186
         Left            =   4200
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   185
         Left            =   3960
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   184
         Left            =   3720
         Picture         =   "MapChip.frx":159B8
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   183
         Left            =   3480
         Picture         =   "MapChip.frx":15D60
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   182
         Left            =   3240
         Picture         =   "MapChip.frx":1611C
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   181
         Left            =   3000
         Picture         =   "MapChip.frx":164D8
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   180
         Left            =   2760
         Picture         =   "MapChip.frx":1681A
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   179
         Left            =   4920
         Picture         =   "MapChip.frx":16BB9
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   178
         Left            =   4680
         Picture         =   "MapChip.frx":16F6B
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   177
         Left            =   4440
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   176
         Left            =   4200
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   175
         Left            =   3960
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   174
         Left            =   3720
         Picture         =   "MapChip.frx":172AD
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   173
         Left            =   3480
         Picture         =   "MapChip.frx":17635
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   172
         Left            =   3240
         Picture         =   "MapChip.frx":179EF
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   171
         Left            =   3000
         Picture         =   "MapChip.frx":17D6F
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   170
         Left            =   2760
         Picture         =   "MapChip.frx":18149
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   169
         Left            =   4920
         Picture         =   "MapChip.frx":184FF
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   168
         Left            =   4680
         Picture         =   "MapChip.frx":18879
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   167
         Left            =   4440
         Picture         =   "MapChip.frx":18C1C
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   166
         Left            =   4200
         Picture         =   "MapChip.frx":18FB0
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   165
         Left            =   3960
         Picture         =   "MapChip.frx":19350
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   164
         Left            =   3720
         Picture         =   "MapChip.frx":196FC
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   163
         Left            =   3480
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   162
         Left            =   3240
         Picture         =   "MapChip.frx":19A6F
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   161
         Left            =   3000
         Picture         =   "MapChip.frx":19E19
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   160
         Left            =   2760
         Picture         =   "MapChip.frx":1A1F0
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   159
         Left            =   4920
         Picture         =   "MapChip.frx":1A5A2
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   158
         Left            =   4680
         Picture         =   "MapChip.frx":1A8F3
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   157
         Left            =   4440
         Picture         =   "MapChip.frx":1ACCC
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   156
         Left            =   4200
         Picture         =   "MapChip.frx":1B03F
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   155
         Left            =   3960
         Picture         =   "MapChip.frx":1B3A8
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   154
         Left            =   3720
         Picture         =   "MapChip.frx":1B77E
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   153
         Left            =   3480
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   152
         Left            =   3240
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   151
         Left            =   3000
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   150
         Left            =   2760
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   149
         Left            =   4920
         Picture         =   "MapChip.frx":1BAD3
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   148
         Left            =   4680
         Picture         =   "MapChip.frx":1BE28
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   147
         Left            =   4440
         Picture         =   "MapChip.frx":1C1B9
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   146
         Left            =   4200
         Picture         =   "MapChip.frx":1C593
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   145
         Left            =   3960
         Picture         =   "MapChip.frx":1C976
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   144
         Left            =   3720
         Picture         =   "MapChip.frx":1CD0D
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   143
         Left            =   3480
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   142
         Left            =   3240
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   141
         Left            =   3000
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   140
         Left            =   2760
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   139
         Left            =   4920
         Picture         =   "MapChip.frx":1D06D
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   138
         Left            =   4680
         Picture         =   "MapChip.frx":1D42F
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   137
         Left            =   4440
         Picture         =   "MapChip.frx":1D7FC
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   136
         Left            =   4200
         Picture         =   "MapChip.frx":1DBAF
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   135
         Left            =   3960
         Picture         =   "MapChip.frx":1DF2A
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   134
         Left            =   3720
         Picture         =   "MapChip.frx":1E2BC
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   133
         Left            =   3480
         Picture         =   "MapChip.frx":1E699
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   132
         Left            =   3240
         Picture         =   "MapChip.frx":1EA5D
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   131
         Left            =   3000
         Picture         =   "MapChip.frx":1EE35
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   130
         Left            =   2760
         Picture         =   "MapChip.frx":1F1F2
         Top             =   3600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   129
         Left            =   4920
         Picture         =   "MapChip.frx":1F5BE
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   128
         Left            =   4680
         Picture         =   "MapChip.frx":1F900
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   127
         Left            =   4440
         Picture         =   "MapChip.frx":1FC42
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   126
         Left            =   4200
         Picture         =   "MapChip.frx":1FF84
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   125
         Left            =   3960
         Picture         =   "MapChip.frx":20322
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   124
         Left            =   3720
         Picture         =   "MapChip.frx":206D3
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   123
         Left            =   3480
         Picture         =   "MapChip.frx":20A95
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   122
         Left            =   3240
         Picture         =   "MapChip.frx":20E37
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   121
         Left            =   3000
         Picture         =   "MapChip.frx":211E8
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   120
         Left            =   2760
         Picture         =   "MapChip.frx":2159B
         Top             =   3360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   119
         Left            =   4920
         Picture         =   "MapChip.frx":2194E
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   118
         Left            =   4680
         Picture         =   "MapChip.frx":21C90
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   117
         Left            =   4440
         Picture         =   "MapChip.frx":21FD2
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   116
         Left            =   4200
         Picture         =   "MapChip.frx":22314
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   115
         Left            =   3960
         Picture         =   "MapChip.frx":226E8
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   114
         Left            =   3720
         Picture         =   "MapChip.frx":22AB3
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   113
         Left            =   3480
         Picture         =   "MapChip.frx":22DF5
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   112
         Left            =   3240
         Picture         =   "MapChip.frx":23137
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   111
         Left            =   3000
         Picture         =   "MapChip.frx":234E4
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   110
         Left            =   2760
         Picture         =   "MapChip.frx":2389E
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   109
         Left            =   4920
         Picture         =   "MapChip.frx":23C49
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   108
         Left            =   4680
         Picture         =   "MapChip.frx":23FE9
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   107
         Left            =   4440
         Picture         =   "MapChip.frx":2436E
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   106
         Left            =   4200
         Picture         =   "MapChip.frx":2470F
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   105
         Left            =   3960
         Picture         =   "MapChip.frx":24ABB
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   104
         Left            =   3720
         Picture         =   "MapChip.frx":24E7D
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   103
         Left            =   3480
         Picture         =   "MapChip.frx":251FB
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   102
         Left            =   3240
         Picture         =   "MapChip.frx":255A5
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   101
         Left            =   3000
         Picture         =   "MapChip.frx":2595A
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   100
         Left            =   2760
         Picture         =   "MapChip.frx":25D20
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   99
         Left            =   4920
         Picture         =   "MapChip.frx":260D3
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   98
         Left            =   4680
         Picture         =   "MapChip.frx":26467
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   97
         Left            =   4440
         Picture         =   "MapChip.frx":267EB
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   96
         Left            =   4200
         Picture         =   "MapChip.frx":26B78
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   95
         Left            =   3960
         Picture         =   "MapChip.frx":26EBA
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   94
         Left            =   3720
         Picture         =   "MapChip.frx":271FC
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   93
         Left            =   3480
         Picture         =   "MapChip.frx":275A0
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   92
         Left            =   3240
         Picture         =   "MapChip.frx":27940
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   91
         Left            =   3000
         Picture         =   "MapChip.frx":27CE9
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   90
         Left            =   2760
         Picture         =   "MapChip.frx":280C2
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   89
         Left            =   4920
         Picture         =   "MapChip.frx":2846F
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   88
         Left            =   4680
         Picture         =   "MapChip.frx":2881C
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   87
         Left            =   4440
         Picture         =   "MapChip.frx":28BC3
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   86
         Left            =   4200
         Picture         =   "MapChip.frx":28F6A
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   85
         Left            =   3960
         Picture         =   "MapChip.frx":292AC
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   84
         Left            =   3720
         Picture         =   "MapChip.frx":295EE
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   83
         Left            =   3480
         Picture         =   "MapChip.frx":299C2
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   82
         Left            =   3240
         Picture         =   "MapChip.frx":29DAC
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   81
         Left            =   3000
         Picture         =   "MapChip.frx":2A156
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   80
         Left            =   2760
         Picture         =   "MapChip.frx":2A4FC
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   79
         Left            =   4920
         Picture         =   "MapChip.frx":2A8BB
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   78
         Left            =   4680
         Picture         =   "MapChip.frx":2AC86
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   77
         Left            =   4440
         Picture         =   "MapChip.frx":2B029
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   76
         Left            =   4200
         Picture         =   "MapChip.frx":2B3FA
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   75
         Left            =   3960
         Picture         =   "MapChip.frx":2B7CE
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   74
         Left            =   3720
         Picture         =   "MapChip.frx":2BB7B
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   73
         Left            =   3480
         Picture         =   "MapChip.frx":2BF4E
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   72
         Left            =   3240
         Picture         =   "MapChip.frx":2C290
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   71
         Left            =   3000
         Picture         =   "MapChip.frx":2C644
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   70
         Left            =   2760
         Picture         =   "MapChip.frx":2CA18
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   69
         Left            =   4920
         Picture         =   "MapChip.frx":2CDB7
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   68
         Left            =   4680
         Picture         =   "MapChip.frx":2D16A
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   67
         Left            =   4440
         Picture         =   "MapChip.frx":2D4ED
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   66
         Left            =   4200
         Picture         =   "MapChip.frx":2D8A8
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   65
         Left            =   3960
         Picture         =   "MapChip.frx":2DBEA
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   64
         Left            =   3720
         Picture         =   "MapChip.frx":2DF2C
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   63
         Left            =   3480
         Picture         =   "MapChip.frx":2E26E
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   62
         Left            =   3240
         Picture         =   "MapChip.frx":2E61B
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   61
         Left            =   3000
         Picture         =   "MapChip.frx":2E9CC
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   60
         Left            =   2760
         Picture         =   "MapChip.frx":2ED0E
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   59
         Left            =   4920
         Picture         =   "MapChip.frx":2F0AB
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   58
         Left            =   4680
         Picture         =   "MapChip.frx":2F44A
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   57
         Left            =   4440
         Picture         =   "MapChip.frx":2F7BE
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   56
         Left            =   4200
         Picture         =   "MapChip.frx":2FB00
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   55
         Left            =   3960
         Picture         =   "MapChip.frx":2FE74
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   54
         Left            =   3720
         Picture         =   "MapChip.frx":30249
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   53
         Left            =   3480
         Picture         =   "MapChip.frx":30619
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   52
         Left            =   3240
         Picture         =   "MapChip.frx":309DD
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   51
         Left            =   3000
         Picture         =   "MapChip.frx":30D97
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   50
         Left            =   2760
         Picture         =   "MapChip.frx":3115B
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   49
         Left            =   4920
         Picture         =   "MapChip.frx":314E7
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   48
         Left            =   4680
         Picture         =   "MapChip.frx":31886
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   47
         Left            =   4440
         Picture         =   "MapChip.frx":31C1D
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   46
         Left            =   4200
         Picture         =   "MapChip.frx":31FBD
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   45
         Left            =   3960
         Picture         =   "MapChip.frx":32356
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   44
         Left            =   3720
         Picture         =   "MapChip.frx":32698
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   43
         Left            =   3480
         Picture         =   "MapChip.frx":329DA
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   42
         Left            =   3240
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   41
         Left            =   3000
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   40
         Left            =   2760
         Picture         =   "MapChip.frx":32D7D
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   39
         Left            =   4920
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   38
         Left            =   4680
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   37
         Left            =   4440
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   36
         Left            =   4200
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   35
         Left            =   3960
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   34
         Left            =   3720
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   33
         Left            =   3480
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   32
         Left            =   3240
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   31
         Left            =   3000
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   30
         Left            =   2760
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   29
         Left            =   4920
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   28
         Left            =   4680
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   27
         Left            =   4440
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   26
         Left            =   4200
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   25
         Left            =   3960
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   24
         Left            =   3720
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   23
         Left            =   3480
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   22
         Left            =   3240
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   21
         Left            =   3000
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   20
         Left            =   2760
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   19
         Left            =   4920
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   18
         Left            =   4680
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   17
         Left            =   4440
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   16
         Left            =   4200
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   15
         Left            =   3960
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   14
         Left            =   3720
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   13
         Left            =   3480
         Picture         =   "MapChip.frx":330DF
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   12
         Left            =   3240
         Picture         =   "MapChip.frx":33498
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   11
         Left            =   3000
         Picture         =   "MapChip.frx":33850
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   10
         Left            =   2760
         Picture         =   "MapChip.frx":33BB4
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   9
         Left            =   4920
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   8
         Left            =   4680
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   7
         Left            =   4440
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   6
         Left            =   4200
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   5
         Left            =   3960
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   4
         Left            =   3720
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   3
         Left            =   3480
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   2
         Left            =   3240
         Picture         =   "MapChip.frx":33F16
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   1
         Left            =   3000
         Picture         =   "MapChip.frx":34280
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   0
         Left            =   2760
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   99
         Left            =   2280
         Picture         =   "MapChip.frx":345E9
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   98
         Left            =   2040
         Picture         =   "MapChip.frx":3492B
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   97
         Left            =   1800
         Picture         =   "MapChip.frx":34C6D
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   96
         Left            =   1560
         Picture         =   "MapChip.frx":34FAF
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   95
         Left            =   1320
         Picture         =   "MapChip.frx":352F1
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   94
         Left            =   1080
         Picture         =   "MapChip.frx":35633
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   93
         Left            =   840
         Picture         =   "MapChip.frx":35975
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   92
         Left            =   600
         Picture         =   "MapChip.frx":35CB7
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   91
         Left            =   360
         Picture         =   "MapChip.frx":35FF9
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   90
         Left            =   120
         Picture         =   "MapChip.frx":3633B
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   89
         Left            =   2280
         Picture         =   "MapChip.frx":3667D
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   88
         Left            =   2040
         Picture         =   "MapChip.frx":369BF
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   87
         Left            =   1800
         Picture         =   "MapChip.frx":36D01
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   86
         Left            =   1560
         Picture         =   "MapChip.frx":37043
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   85
         Left            =   1320
         Picture         =   "MapChip.frx":37385
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   84
         Left            =   1080
         Picture         =   "MapChip.frx":376C7
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   83
         Left            =   840
         Picture         =   "MapChip.frx":37A09
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   82
         Left            =   600
         Picture         =   "MapChip.frx":37D4B
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   81
         Left            =   360
         Picture         =   "MapChip.frx":3808D
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   80
         Left            =   120
         Picture         =   "MapChip.frx":383CF
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   79
         Left            =   2280
         Picture         =   "MapChip.frx":38711
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   78
         Left            =   2040
         Picture         =   "MapChip.frx":38A53
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   77
         Left            =   1800
         Picture         =   "MapChip.frx":38D95
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   76
         Left            =   1560
         Picture         =   "MapChip.frx":390D7
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   75
         Left            =   1320
         Picture         =   "MapChip.frx":39419
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   74
         Left            =   1080
         Picture         =   "MapChip.frx":3975B
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   73
         Left            =   840
         Picture         =   "MapChip.frx":39A9D
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   72
         Left            =   600
         Picture         =   "MapChip.frx":39DDF
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   71
         Left            =   360
         Picture         =   "MapChip.frx":3A121
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   70
         Left            =   120
         Picture         =   "MapChip.frx":3A463
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   69
         Left            =   2280
         Picture         =   "MapChip.frx":3A7A5
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   68
         Left            =   2040
         Picture         =   "MapChip.frx":3AAE7
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   67
         Left            =   1800
         Picture         =   "MapChip.frx":3AE29
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   66
         Left            =   1560
         Picture         =   "MapChip.frx":3B16B
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   65
         Left            =   1320
         Picture         =   "MapChip.frx":3B4AD
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   64
         Left            =   1080
         Picture         =   "MapChip.frx":3B7EF
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   63
         Left            =   840
         Picture         =   "MapChip.frx":3BB31
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   61
         Left            =   360
         Picture         =   "MapChip.frx":3BE73
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   60
         Left            =   120
         Picture         =   "MapChip.frx":3C1B5
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   59
         Left            =   2280
         Picture         =   "MapChip.frx":3C4F7
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   58
         Left            =   2040
         Picture         =   "MapChip.frx":3C839
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   57
         Left            =   1800
         Picture         =   "MapChip.frx":3CB7B
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   56
         Left            =   1560
         Picture         =   "MapChip.frx":3CEBD
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   55
         Left            =   1320
         Picture         =   "MapChip.frx":3D1FF
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   54
         Left            =   1080
         Picture         =   "MapChip.frx":3D541
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   53
         Left            =   840
         Picture         =   "MapChip.frx":3D883
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   52
         Left            =   600
         Picture         =   "MapChip.frx":3DBC5
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   51
         Left            =   360
         Picture         =   "MapChip.frx":3DF07
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   50
         Left            =   120
         Picture         =   "MapChip.frx":3E249
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   49
         Left            =   2280
         Picture         =   "MapChip.frx":3E58B
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   48
         Left            =   2040
         Picture         =   "MapChip.frx":3E8CD
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   47
         Left            =   1800
         Picture         =   "MapChip.frx":3EC0F
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   46
         Left            =   1560
         Picture         =   "MapChip.frx":3EF51
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   45
         Left            =   1320
         Picture         =   "MapChip.frx":3F293
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   44
         Left            =   1080
         Picture         =   "MapChip.frx":3F5D5
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   43
         Left            =   840
         Picture         =   "MapChip.frx":3F917
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   42
         Left            =   600
         Picture         =   "MapChip.frx":3FC59
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   41
         Left            =   360
         Picture         =   "MapChip.frx":3FF9B
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   40
         Left            =   120
         Picture         =   "MapChip.frx":402DD
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   39
         Left            =   2280
         Picture         =   "MapChip.frx":4061F
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   38
         Left            =   2040
         Picture         =   "MapChip.frx":40961
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   37
         Left            =   1800
         Picture         =   "MapChip.frx":40CA3
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   36
         Left            =   1560
         Picture         =   "MapChip.frx":40FE5
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   35
         Left            =   1320
         Picture         =   "MapChip.frx":41327
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   34
         Left            =   1080
         Picture         =   "MapChip.frx":41669
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   33
         Left            =   840
         Picture         =   "MapChip.frx":419AB
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   32
         Left            =   600
         Picture         =   "MapChip.frx":41CED
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   31
         Left            =   360
         Picture         =   "MapChip.frx":4202F
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   29
         Left            =   2280
         Picture         =   "MapChip.frx":42371
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   28
         Left            =   2040
         Picture         =   "MapChip.frx":426B3
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   27
         Left            =   1800
         Picture         =   "MapChip.frx":429F5
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   26
         Left            =   1560
         Picture         =   "MapChip.frx":42D37
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   25
         Left            =   1320
         Picture         =   "MapChip.frx":43079
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   24
         Left            =   1080
         Picture         =   "MapChip.frx":433BB
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   23
         Left            =   840
         Picture         =   "MapChip.frx":436FD
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   22
         Left            =   600
         Picture         =   "MapChip.frx":43A3F
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   21
         Left            =   360
         Picture         =   "MapChip.frx":43D81
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   20
         Left            =   120
         Picture         =   "MapChip.frx":440C3
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   19
         Left            =   2280
         Picture         =   "MapChip.frx":44405
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   18
         Left            =   2040
         Picture         =   "MapChip.frx":44747
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   17
         Left            =   1800
         Picture         =   "MapChip.frx":44A89
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   16
         Left            =   1560
         Picture         =   "MapChip.frx":44DCB
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   15
         Left            =   1320
         Picture         =   "MapChip.frx":4510D
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   14
         Left            =   1080
         Picture         =   "MapChip.frx":4544F
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   13
         Left            =   840
         Picture         =   "MapChip.frx":45791
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   12
         Left            =   600
         Picture         =   "MapChip.frx":45AD3
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   11
         Left            =   360
         Picture         =   "MapChip.frx":45E15
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   10
         Left            =   120
         Picture         =   "MapChip.frx":46157
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   0
         Left            =   120
         Picture         =   "MapChip.frx":46499
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   1
         Left            =   360
         Picture         =   "MapChip.frx":467DB
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   2
         Left            =   600
         Picture         =   "MapChip.frx":46B1D
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   3
         Left            =   840
         Picture         =   "MapChip.frx":46E5F
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   4
         Left            =   1080
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   5
         Left            =   1320
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   6
         Left            =   1560
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   7
         Left            =   1800
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   8
         Left            =   2040
         Picture         =   "MapChip.frx":471A1
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   9
         Left            =   2280
         Picture         =   "MapChip.frx":474E3
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   199
         Left            =   2280
         Picture         =   "MapChip.frx":47825
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   198
         Left            =   2040
         Picture         =   "MapChip.frx":47B67
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   197
         Left            =   1800
         Picture         =   "MapChip.frx":47EA9
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   196
         Left            =   1560
         Picture         =   "MapChip.frx":481EB
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   195
         Left            =   1320
         Picture         =   "MapChip.frx":4852D
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   194
         Left            =   1080
         Picture         =   "MapChip.frx":4886F
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   193
         Left            =   840
         Picture         =   "MapChip.frx":48BB1
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   192
         Left            =   600
         Picture         =   "MapChip.frx":48EF3
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   191
         Left            =   360
         Picture         =   "MapChip.frx":49235
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   189
         Left            =   2280
         Picture         =   "MapChip.frx":49577
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   188
         Left            =   2040
         Picture         =   "MapChip.frx":498B9
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   187
         Left            =   1800
         Picture         =   "MapChip.frx":49BFB
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   186
         Left            =   1560
         Picture         =   "MapChip.frx":49F3D
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   185
         Left            =   1320
         Picture         =   "MapChip.frx":4A27F
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   184
         Left            =   1080
         Picture         =   "MapChip.frx":4A5C1
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   183
         Left            =   840
         Picture         =   "MapChip.frx":4A903
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   182
         Left            =   600
         Picture         =   "MapChip.frx":4AC45
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   181
         Left            =   360
         Picture         =   "MapChip.frx":4AF87
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   179
         Left            =   2280
         Picture         =   "MapChip.frx":4B2C9
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   178
         Left            =   2040
         Picture         =   "MapChip.frx":4B60B
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   177
         Left            =   1800
         Picture         =   "MapChip.frx":4B94D
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   176
         Left            =   1560
         Picture         =   "MapChip.frx":4BC8F
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   175
         Left            =   1320
         Picture         =   "MapChip.frx":4BFD1
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   174
         Left            =   1080
         Picture         =   "MapChip.frx":4C313
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   173
         Left            =   840
         Picture         =   "MapChip.frx":4C655
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   172
         Left            =   600
         Picture         =   "MapChip.frx":4C997
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   171
         Left            =   360
         Picture         =   "MapChip.frx":4CCD9
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   169
         Left            =   2280
         Picture         =   "MapChip.frx":4D01B
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   168
         Left            =   2040
         Picture         =   "MapChip.frx":4D35D
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   167
         Left            =   1800
         Picture         =   "MapChip.frx":4D69F
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   166
         Left            =   1560
         Picture         =   "MapChip.frx":4D9E1
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   165
         Left            =   1320
         Picture         =   "MapChip.frx":4DD23
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   164
         Left            =   1080
         Picture         =   "MapChip.frx":4E065
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   163
         Left            =   840
         Picture         =   "MapChip.frx":4E3A7
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   162
         Left            =   600
         Picture         =   "MapChip.frx":4E6E9
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   161
         Left            =   360
         Picture         =   "MapChip.frx":4EA2B
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   159
         Left            =   2280
         Picture         =   "MapChip.frx":4ED6D
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   158
         Left            =   2040
         Picture         =   "MapChip.frx":4F0AF
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   157
         Left            =   1800
         Picture         =   "MapChip.frx":4F3F1
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   156
         Left            =   1560
         Picture         =   "MapChip.frx":4F733
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   155
         Left            =   1320
         Picture         =   "MapChip.frx":4FA75
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   154
         Left            =   1080
         Picture         =   "MapChip.frx":4FDB7
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   153
         Left            =   840
         Picture         =   "MapChip.frx":500F9
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   152
         Left            =   600
         Picture         =   "MapChip.frx":5043B
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   151
         Left            =   360
         Picture         =   "MapChip.frx":5077D
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   149
         Left            =   2280
         Picture         =   "MapChip.frx":50ABF
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   148
         Left            =   2040
         Picture         =   "MapChip.frx":50E01
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   147
         Left            =   1800
         Picture         =   "MapChip.frx":51143
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   146
         Left            =   1560
         Picture         =   "MapChip.frx":51485
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   145
         Left            =   1320
         Picture         =   "MapChip.frx":517C7
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   144
         Left            =   1080
         Picture         =   "MapChip.frx":51B09
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   143
         Left            =   840
         Picture         =   "MapChip.frx":51E4B
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   142
         Left            =   600
         Picture         =   "MapChip.frx":5218D
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   141
         Left            =   360
         Picture         =   "MapChip.frx":524CF
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   139
         Left            =   2280
         Picture         =   "MapChip.frx":52811
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   138
         Left            =   2040
         Picture         =   "MapChip.frx":52B53
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   137
         Left            =   1800
         Picture         =   "MapChip.frx":52E95
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   136
         Left            =   1560
         Picture         =   "MapChip.frx":531D7
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   135
         Left            =   1320
         Picture         =   "MapChip.frx":53519
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   134
         Left            =   1080
         Picture         =   "MapChip.frx":5385B
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   133
         Left            =   840
         Picture         =   "MapChip.frx":53B9D
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   132
         Left            =   600
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   131
         Left            =   360
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   129
         Left            =   2280
         Picture         =   "MapChip.frx":53EDF
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   128
         Left            =   2040
         Picture         =   "MapChip.frx":54221
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   127
         Left            =   1800
         Picture         =   "MapChip.frx":54563
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   126
         Left            =   1560
         Picture         =   "MapChip.frx":548A5
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   125
         Left            =   1320
         Picture         =   "MapChip.frx":54BE7
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   124
         Left            =   1080
         Picture         =   "MapChip.frx":54F29
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   123
         Left            =   840
         Picture         =   "MapChip.frx":5526B
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   122
         Left            =   600
         Picture         =   "MapChip.frx":555AD
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   121
         Left            =   360
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   119
         Left            =   2280
         Picture         =   "MapChip.frx":558EF
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   118
         Left            =   2040
         Picture         =   "MapChip.frx":55C31
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   117
         Left            =   1800
         Picture         =   "MapChip.frx":55F73
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   116
         Left            =   1560
         Picture         =   "MapChip.frx":562B5
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   115
         Left            =   1320
         Picture         =   "MapChip.frx":565F7
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   114
         Left            =   1080
         Picture         =   "MapChip.frx":56939
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   113
         Left            =   840
         Picture         =   "MapChip.frx":56C7B
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   112
         Left            =   600
         Picture         =   "MapChip.frx":56FBD
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   111
         Left            =   360
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   109
         Left            =   2280
         Picture         =   "MapChip.frx":572FF
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   108
         Left            =   2040
         Picture         =   "MapChip.frx":57641
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   107
         Left            =   1800
         Picture         =   "MapChip.frx":57983
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   106
         Left            =   1560
         Picture         =   "MapChip.frx":57CC5
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   105
         Left            =   1320
         Picture         =   "MapChip.frx":58007
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   104
         Left            =   1080
         Picture         =   "MapChip.frx":58349
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   103
         Left            =   840
         Picture         =   "MapChip.frx":5868B
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   102
         Left            =   600
         Picture         =   "MapChip.frx":589CD
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   101
         Left            =   360
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   190
         Left            =   120
         Picture         =   "MapChip.frx":58D0F
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   180
         Left            =   120
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   170
         Left            =   120
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   160
         Left            =   120
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   150
         Left            =   120
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   140
         Left            =   120
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   130
         Left            =   120
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   120
         Left            =   120
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   110
         Left            =   120
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   100
         Left            =   120
         Top             =   2760
         Width           =   240
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H0000FF00&
         BorderWidth     =   2
         FillColor       =   &H0000FF00&
         FillStyle       =   0  '단색
         Height          =   6015
         Index           =   0
         Left            =   120
         Top             =   360
         Width           =   2415
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H00FF0000&
         BorderWidth     =   2
         FillColor       =   &H00FF0000&
         FillStyle       =   0  '단색
         Height          =   975
         Index           =   2
         Left            =   2760
         Top             =   360
         Width           =   2415
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H000000FF&
         BorderWidth     =   2
         FillColor       =   &H000000FF&
         FillStyle       =   0  '단색
         Height          =   2415
         Index           =   3
         Left            =   2760
         Top             =   1440
         Width           =   2415
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H00FF00FF&
         BorderWidth     =   2
         FillColor       =   &H00FF00FF&
         FillStyle       =   0  '단색
         Height          =   2415
         Index           =   4
         Left            =   2760
         Top             =   3960
         Width           =   2415
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 1"
         ForeColor       =   &H80000005&
         Height          =   180
         Index           =   1
         Left            =   135
         TabIndex        =   2
         Top             =   135
         Width           =   630
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 2"
         ForeColor       =   &H80000005&
         Height          =   180
         Index           =   3
         Left            =   2775
         TabIndex        =   4
         Top             =   135
         Width           =   630
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mapchip_Click(Index As Integer)
    SelectedMapChip = Index
    Me.Caption = "맵 칩 " & SelectedMapChip & "/" & SelectedMapOverChip
    Shape1.Top = mapchip(Index).Top
    Shape1.Left = mapchip(Index).Left
End Sub

Private Sub mapoverchip_Click(Index As Integer)
    SelectedMapOverChip = Index
    Me.Caption = "맵 칩 " & SelectedMapChip & "/" & SelectedMapOverChip
    Shape2.Top = mapoverchip(Index).Top
    Shape2.Left = mapoverchip(Index).Left
End Sub

