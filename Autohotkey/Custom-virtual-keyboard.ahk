Gui, +AlwaysOnTop
Gui, Add, Button, Default w25 h25 x0 y0 g1, 1
Gui, Add, Button, Default w25 h25 x25 y0 g2, 2
Gui, Add, Button, Default w25 h25 x50 y0 g3, 3
Gui, Add, Button, Default w25 h25 x75 y0 g4, 4
Gui, Add, Button, Default w25 h25 x100 y0 g5, 5
Gui, Add, Button, Default w25 h25 x125 y0 g6, 6
Gui, Add, Button, Default w25 h25 x150 y0 g7, 7
Gui, Add, Button, Default w25 h25 x175 y0 g8, 8
Gui, Add, Button, Default w25 h25 x200 y0 g9, 9
Gui, Add, Button, Default w25 h25 x225 y0 g0, 0
Gui, Add, Button, Default w25 h25 x250 y0 g-, -
Gui, Add, Button, Default w25 h25 x275 y0 g=, =
Gui, Add, Button, Default w50 h25 x0 y25 gTAB, TAB
Gui, Add, Button, Default w25 h25 x50 y25 gGUI, Q
Gui, Add, Button, Default w25 h25 x75 y25 gGUI, W
Gui, Add, Button, Default w25 h25 x100 y25 gGUI, E
Gui, Add, Button, Default w25 h25 x125 y25 gGUI, R
Gui, Add, Button, Default w25 h25 x150 y25 gGUI, T
Gui, Add, Button, Default w25 h25 x175 y25 gGUI, Y
Gui, Add, Button, Default w25 h25 x200 y25 gGUI, U
Gui, Add, Button, Default w25 h25 x225 y25 gGUI, I
Gui, Add, Button, Default w25 h25 x250 y25 gGUI, O
Gui, Add, Button, Default w25 h25 x275 y25 gGUI, P
Gui, Add, Button, Default w75 h25 x0 y50 gGUI, CAPS
Gui, Add, Button, Default w25 h25 x75 y50 gGUI, A
Gui, Add, Button, Default w25 h25 x100 y50 gGUI, S
Gui, Add, Button, Default w25 h25 x125 y50 gGUI, D
Gui, Add, Button, Default w25 h25 x150 y50 gGUI, F
Gui, Add, Button, Default w25 h25 x175 y50 gGUI, G
Gui, Add, Button, Default w25 h25 x200 y50 gGUI, H
Gui, Add, Button, Default w25 h25 x225 y50 gGUI, J
Gui, Add, Button, Default w25 h25 x250 y50 gGUI, K
Gui, Add, Button, Default w25 h25 x275 y50 gGUI, L
Gui, Add, Button, Default w75 h25 x0 y75 gGUI, SHIFT
Gui, Add, Button, Default w25 h25 x75 y75 gGUI, Z
Gui, Add, Button, Default w25 h25 x100 y75 gGUI, X
Gui, Add, Button, Default w25 h25 x125 y75 gGUI, C
Gui, Add, Button, Default w25 h25 x150 y75 gGUI, V
Gui, Add, Button, Default w25 h25 x175 y75 gGUI, B
Gui, Add, Button, Default w25 h25 x200 y75 gGUI, N
Gui, Add, Button, Default w25 h25 x225 y75 gGUI, M
Gui, Add, Button, Default w25 h25 x250 y75 gGUI, ,
Gui, Add, Button, Default w25 h25 x275 y75 gGUI, .
Gui, Add, Button, Default w300 h25 x0 y100 gGUI, ----------------------------
Gui, Show, w300 h125 Center, bald
Return

1::
Send, !{Tab}
Sleep, 200      
Send, 1
Return
2::Reload
Return
3::Reload
Return
4::Reload
Return
5::Reload
Return
6::Reload
Return
7::Reload
Return
8::Reload
Return
9::Reload
Return
0::Reload
Return
-::Reload
Return
=::Reload
Return
TAB::Reload
Return





GUI:
Reload
Return

!r::
Goto, Reload
Return

Reload:
Reload
Return

!j::
Goto, Reload
Return

!k::
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