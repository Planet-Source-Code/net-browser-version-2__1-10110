VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Floating Operations Bar"
   ClientHeight    =   645
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6675
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   645
   ScaleWidth      =   6675
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command7 
      Caption         =   "HOME"
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      ToolTipText     =   "Go To The Home Page"
      Top             =   360
      Width           =   735
   End
   Begin VB.CommandButton Command6 
      Caption         =   "REFRESH"
      Height          =   255
      Left            =   2640
      TabIndex        =   7
      ToolTipText     =   "Reload This Page"
      Top             =   360
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "STOP"
      Height          =   255
      Left            =   1920
      TabIndex        =   6
      ToolTipText     =   "Stop Loading This Page"
      Top             =   360
      Width           =   735
   End
   Begin VB.CommandButton Command4 
      Caption         =   "FORWARD"
      Height          =   255
      Left            =   720
      TabIndex        =   5
      ToolTipText     =   "Go Forward A Page"
      Top             =   360
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "BACK"
      Height          =   255
      Left            =   0
      TabIndex        =   4
      ToolTipText     =   "Go Back A Page"
      Top             =   360
      Width           =   735
   End
   Begin VB.CommandButton Command2 
      Caption         =   ">"
      Height          =   255
      Left            =   6360
      TabIndex        =   3
      ToolTipText     =   "Load In URL"
      Top             =   360
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      Caption         =   ">"
      Height          =   255
      Left            =   6360
      TabIndex        =   2
      ToolTipText     =   "Load Page"
      Top             =   0
      Width           =   255
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   0
      TabIndex        =   1
      Text            =   "http://www.madasafish.com"
      Top             =   0
      Width           =   6255
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   4560
      TabIndex        =   0
      Text            =   "Popular Links"
      ToolTipText     =   "A List Of Popular Links"
      Top             =   360
      Width           =   1695
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.WebBrowser1.Navigate Form2.Text1
End Sub

Private Sub Command2_Click()
If Combo1 = "hotmail" Then Text1 = "http://www.hotmail.com"
If Combo1 = "Yahoo" Then Text1 = "http://www.Yahoo.com.com"
If Combo1 = "Planet Source Code" Then Text1 = "http://www.planetsourcecode.com"
If Combo1 = "Lycos" Then Text1 = "http://www.Lycos.com"
If Combo1 = "Visual Basic Link" Then Text1 = "http://geocities.com/david_j_lovegrove"
End Sub

Private Sub Command3_Click()
Form1.WebBrowser1.GoBack
End Sub

Private Sub Command4_Click()
Form1.WebBrowser1.GoForward
End Sub

Private Sub Command5_Click()
Form1.WebBrowser1.Stop
End Sub

Private Sub Command6_Click()
Form1.WebBrowser1.Refresh
End Sub

Private Sub Command7_Click()
Form1.WebBrowser1.Navigate "http://www.madasafish.com"
End Sub

Private Sub Form_Load()
Combo1.AddItem "Hotmail"
Combo1.AddItem "Yahoo"
Combo1.AddItem "Planet Source Code"
Combo1.AddItem "Lycos"
Combo1.AddItem "Visual Basic Link"
'Form1.WebBrowser1.Navigate Form2.Text1
Form1.Show
End Sub
