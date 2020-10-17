!Enter::
MouseGetPos, MouseX, MouseY
MouseClick, left, 1543, 1047, 1, 0
MouseMove, %MouseX%, %MouseY%, 0
Return

!NumpadEnter::
Loop, 
{
MouseGetPos, MouseX, MouseY
MouseClick, left, 1543, 1047, 1, 0
MouseMove, %MouseX%, %MouseY%, 0
Sleep, 3000
}
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