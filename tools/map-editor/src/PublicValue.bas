Attribute VB_Name = "Module1"
Option Explicit
Public SelectedMapChip As Integer
Public Area(1599) As Integer
Public SelectedMapOverChip As Integer
Public OverArea(1599) As Integer

Public Function AddEvent(Code As String)
If Form5.Code.ListCount <= 0 Then
    Form5.Code.AddItem (Code), Form5.Code.ListCount
Else
    Form5.Code.AddItem (Code), Form5.Code.ListCount - 1
End If
    If Form5.Code.List(Form5.Code.ListCount - 1) <> "" Then Form5.Code.AddItem ""
End Function
