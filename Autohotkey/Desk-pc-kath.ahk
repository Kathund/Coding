!Enter::
MouseGetPos, xx, yy
Sleep, 50
MouseClick, left, 1558, 1045, 1, 0,
Sleep, 300
MouseMove, %xx%, %yy%
Return

!r::
Goto, Reload
Return

Reload:
Reload
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
                Sleep, 10009
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
