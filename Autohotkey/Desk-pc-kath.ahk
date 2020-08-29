

!o::
Loop, 2
{
        MouseClick, left, 1170, 391, 1, 0,
        Sleep, 250
        MouseClick, left, 825, 525, 1, 0,
        Sleep, 750
}
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
ExitApp
Return
