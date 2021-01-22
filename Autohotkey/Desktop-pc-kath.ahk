#SingleInstance, Force
#NoEnv

GUI:
Gui 1: Default
Gui 2: Destroy
Gui, Add, DateTime, x150 y40 vMyDateTime, Time
Gui, Add, Button, w75 h20 x0 y0 , Timetable
Gui, Add, Button, Default w75 H20 x0 y20 gSpotify, Spotify
Gui, Add, Button, Default w75 H20 x75 y0 gMinecraft, Minecraft
Gui, Add, Button, Default w75 H20 x75 y20 gEdit, Edit 
Gui, Add, Button, Default w75 h20 x150 y0 gOther, Other
Gui, Add, Button, Default w75 h20 x150 y20 , Screenshot
Gui, Add, Button, Default w75 h20 x75 y60 gReload, Reload
Gui, Add, Button, Default w75 h20 x0 y60  gReload, Update Time
Gui, Add, Button, Default w75 h20 x150 y60 , Humanities
Gui, Add, Button, Default w75 h20 x0 y40 , Computing
Gui, Add, Button, Default w75 h20 x75 y40 , Other
Gui, Show, w225 h80 Center, Open App
Return

Spotify:
Gui 1: Destroy
Run, C:\Users\coffe\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk
Return

Minecraft:
Gui 1: Destroy
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Minecraft Launcher\Minecraft Launcher.lnk
Sleep, 2750 
MouseGetPos, MOUSEX, MOUSEY,
Sleep, 50
MouseMove, 528, 485, 0
Sleep, 50
MouseClick, left,
return

Edit:
Gui 1: Destroy
Gui 2: Default
Gui, Add, Button, Default w100 h20 x0 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gGithub, Github Page
Gui, Add, Button, Default w100 h20 x0 y40 gGitHubDesk, Github Desktop
Gui, Add, Button, Default w100 h20 x0 y60 gVSCode, VS code
Gui, Show, w100 h80 Center, GAY
Return

VSCode:
Gui 18: Destroy
Run, C:\Users\coffe\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\GitHub, Inc\GitHub Desktop.lnk
Sleep, 3750
Send, ^+a
Return

GithubDesk:
Gui 3: Destroy
Run, C:\Users\coffe\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\GitHub, Inc\GitHub Desktop.lnk
Return

Github:
Gui 3: Destroy
Run, https://github.com/Kathund/Coding
Return

Other:
Gui 1: Destroy
Gui 3: Default
Gui, Add, Button, Default w100 h20 x0 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gScripts, Scrpits
Gui, Add, Button, Default w100 h20 x0 y40 gVol, Vol
Gui, Add, Button, Default w100 h20 x0 y60 gBin, Empty Bin
Gui, Add, Button, Default w100 h20 x0 y80 gQuickSerch, Quick Serch
Gui, Add, Button, Default w100 h20 x0 y100 gColorGet, Color Get
Gui, Show, w100 h120 Center, Other
Return

Scripts:
Gui 3: Destroy
Gui 4: Default
Gui, Add, Button, w60 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w60 h20 x60 y0 gOther, GO BACK!
Gui, Add, Button, Default w120 h20 x0 y20 gXnnY, X and Y Mouse Cords
Gui, Show, w120 h40 Center, Scripts
Return

Vol:
Gui 3: Destroy
Gui 5: Default
Gui, Add, Button, Default w100 h20 x0 y0 gOther, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gVolUP, Vol Up
Gui, Add, Button, Default w100 h20 x0 y40 gVolDOWN, Vol Down
Gui, Add, Button, Default w100 h20 x0 y60 gVol0, Vol Set 0
Gui, Add, Button, Default w100 h20 x0 y80 gVol100, Vol Set 100
Gui, Show, w100 h100 Center, Vol
Return

Bin:
Gui 3: Destroy
FileRecycleEmpty
Return

QuickSerch:
Gui 3: Destroy
InputBox, UserInput,Search, , ,250,100
if %UserInput%
{
	Run, https://www.google.com/search?q=%UserInput%
}
Return

ColorGet:
Gui 3: Destroy
Sleep, 500
MouseGetPos, MouseX, MouseY
PixelGetColor, COLOR, %MouseX%, %MouseY%
Sleep, 50
Loop 500
{
MouseGetPos, xx, yy
ToolTip, %COLOR%, %xx%, %yy%
}
ToolTip,
Return

!r::
Goto, Reload
Return

Reload:
Reload
Return

!#Escape::
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools\Task Manager.lnk
Return

#Up::
Goto, VolUP
Return

VolUP:
SoundSet +2
SoundGet, Vol
SplashTextOn, 150, 150, Vol, The current volume is %Vol%
WinMove, Vol, , 0, 0
Sleep, 500
SplashTextOff
Return

#Down::
Goto, VolDOWN
Return

VolDOWN:
SoundSet -2
SoundGet, Vol
SplashTextOn, 150, 150, Vol, The current volume is %Vol%
WinMove, Vol, , 0, 0
Sleep, 500
SplashTextOff
Return

!j::
Goto, Reload
Return

#Home::
Suspend, Toggle
Return

!k::
{
        MsgBox, 4, EXIT, Do you want to exit?
        IfMsgBox, Yes
        {
                SplashTextOn, 300, 50, Closing in..., 3
                WinMove, Closing in..., , 0, 0
                Sleep, 1000
                SplashTextOff
                SplashTextOn, 300, 50, Closing in..., 2
                WinMove, Closing in..., , 0, 0
                Sleep, 1000
                SplashTextOff
                SplashTextOn, 300, 50, Closing in..., 1
                WinMove, Closing in..., , 0, 0
                Sleep, 1000
                SplashTextOff
                ExitApp
        }
        IfMsgBox, No
                Return
}
Return

!q::
Loop 100
{
MouseGetPos, xx, yy
FormatTime, CurrDATE, HHmmsstt
ToolTip, %CurrDATE%, %xx%, %yy%
}
ToolTip,
Return

!i::
FormatTime, CurrDATE, HHmmsstt
Sleep, 250
Send, %CurrDATE%
Return