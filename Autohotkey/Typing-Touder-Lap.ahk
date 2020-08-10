#r::
Goto, Reload
Return

Reload:
Reload
Return

#j::
Goto, Cheat
Return

#Home::
Suspend, Toggle
Return

#k::
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

Cheat:
Loop, 5
{
        Sleep, 100
        MouseClick, Left, 1062, 1250, 1, 0
        Sleep, 300
        Send, ^a
        Sleep, 300
        Send, {Delete}
        Sleep, 300
        Send, 7
        Sleep, 300
        Send, {Enter}
        Sleep, 800
        MouseClick, Left,  1473, 766, 1, 0,
        Sleep, 50
        Send, aaaa{Space}aaaa{Space}aaaa{Space}aaaa
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, asdf{Space}asdf{Space}asdf{Space}asdf
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, {Raw};lkj 
        Send, {Space}
        Send, {Raw};lkj 
        Send, {Space}
        Send, {Raw};lkj 
        Send, {Space}
        Send, {Raw};lkj 
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, {Raw}asdfg 
        Send, {Space}
        Send, {Raw};lkjh
        Send, {Space}
        Send, {Raw}asdfg
        Send, {Space}
        Send, {Raw};lkjh
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, qwer{Space}qwer{Space}qwer{Space}qwer
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, poiu{Space}poiu{Space}poiu{Space}poiu
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, qwert{Space}poiuy{Space}qwert{Space}poiuy
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, zxcv{Space}zxcv{Space}zxcv{Space}zxcv
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, /.,m{Space}/.,m{Space}/.,m{Space}/.,m
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, zxcvb{Space}/.,mn{Space}zxcvb{Space}/.,mn
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, asdf{Space}qwer{Space};lkj{Space}poiu{Space}{Space}
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, asdf{Space}zxcv{Space};lkj{Space}/.,m
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, Asdf{Space}Jkl;{Space}Qwert{Space}Uiop{Space}Zxcv{Space}M,./
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, 1234{Space}5678{Space}90-=
        Sleep, 400
        MouseClick, Left,  1473, 766, 1, 0,
        Send, The{Space}Quick{Space}Brown{Space}Fox{Space}Jumped
        Sleep, 100
        MouseClick, Left, 1062, 1250, 1, 0
        Sleep, 300
        Send, ^a
        Sleep, 300
        Send, {Delete}
        Sleep, 300
        Send, 7
        Sleep, 300
        Send, {Enter}
        Sleep, 800
}
Return