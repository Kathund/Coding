;On/Off with key F1, every 240 ms
F1::SetTimer, F1 Up,% (F1:=!F1)?0:"Off"
F1 Up::Click,,,%F1%
~*e::
~*t::
~*/::
~*Esc::
~*Enter::
;turned off when I press E, T, /, Esc or Enter
SetTimer, F1 Up, Off
F1 := False
Return