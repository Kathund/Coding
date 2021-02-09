#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Process, Priority, , R ; high CPU cooperation (maxed at 50 on dual affinity, use H otherwise)
SetBatchLines, -1 ; for delay precision
SetControlDelay, -1

DllCall("SystemParametersInfo", UInt, 0xB, UInt, 31, UIntP, 0, UInt, 0) ; 0xB is SPI_SETKEYBOARDSPEED. 31 is the max speed, 0 is the min.
if !FileExist("C:\Users\" A_UserName "\Documents\SnakeStats.ini") {
	FileAppend,, C:\Users\%A_UserName%\Documents\SnakeStats.ini
	IniWrite, 1, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section1, difficulty
	IniWrite, 1, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section2, borders
	IniWrite, 1, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section3, sounds
	IniWrite, 0, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section4, record
}
IniRead, dif, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section1, difficulty
IniRead, bor, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section2, borders
IniRead, sou, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section3, sounds
IniRead, Record, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section4, record
Loop, 961 {
	SF%A_Index% =
	FF%A_Index% =
}
Gui, Destroy
Gui, new
gui, Color, Black
gui, font, cWhite s40 Verdana bold
Gui, Add, Text, x0 y0 w310 ReadOnly Center, SNAKE
gui, font, s12 Verdana
gui, Add, Text, x10 y+20 w100 ReadOnly, DIFFICULTY
Gui, Add, Slider, x+30 w150 vSlider1 range1-3 NoTicks AltSubmit -Theme, %dif%
gui, font, s8 Verdana
gui, Add, Text, x140 y+2 w170 ReadOnly, easy        normal        hard
gui, font, s12 Verdana
gui, Add, Text, x10 y+30 w100 ReadOnly, BORDERS
Gui, Add, Slider, x+30 w150 vSlider2 range1-2 NoTicks AltSubmit -Theme, %bor%
gui, font, s8 Verdana
gui, Add, Text, x140 y+2 w170 ReadOnly, on                            off
gui, font, s12 Verdana
gui, Add, Text, x10 y+30 w100 ReadOnly, SOUNDS
Gui, Add, Slider, x+30 w150 vSlider3 range1-2 NoTicks AltSubmit -Theme, %sou%
gui, font, s8 Verdana
gui, Add, Text, x140 y+2 w170 ReadOnly, on                            off
gui, font, s12 Verdana
gui, Add, Button, x0 y+30 w311 h34 -Theme -Border gStart, START GAME
gui, show, w310 h325, Created by Jacob Bray
return

Start:
gui, submit
IniWrite, %Slider1%, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section1, difficulty
IniWrite, %Slider2%, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section2, borders
IniWrite, %Slider3%, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section3, sounds
if (Slider2 = 1)
	extra := 5
if (Slider2 = 2)
	extra := 0
if (Slider1 = 1)
	speeds := 100, point := 10 + extra
if (Slider1 = 2)
	speeds := 75, point := 15 + extra
if (Slider1 = 3)
	speeds := 50, point := 20 + extra
gosub, game_launch
return

game_launch:
Gui, Destroy
Gui, new
Gui, Color, Black
rr := new Main_Field()
ee := new The_Snake()
ee.Game_Mapping()
ee.Game_Start(Record)
ee.Food_C()
gui, font, cWhite s9 Verdana
gui, Add, Text, x0 y310 w100 h15 ReadOnly +Border Center vleng, Snake length: 5
gui, Add, Text, x+0 w105 h15 ReadOnly +Border Center vpoints, Points: 0
gui, Add, Text, x+0 w105 h15 ReadOnly +Border Center vrecord, Record: %Record%
gui, font, cBlack s8 Verdana
gui, show, w310 h325, The Snake
ee.Snake_Move(speeds, Slider2, point, Slider3)
return

class Main_Field { ; gameboard
	__New( ) {
		this.Field_Elements := Object()
		temp_Y := 0, temp_C := 0, SF_temp := 0
		loop, 31
			loop, 31 {
				SF_temp++
				this.Field_Elements[A_Index + temp_C] := Object()
				temp_X := (A_Index - 1) * 10
				this.Field_Elements[A_Index + temp_C][1] := temp_X
				this.Field_Elements[A_Index + temp_C][2] := temp_Y
				tt := A_Index + temp_C
				if (A_Index = 31) {
					temp_C := tt, temp_Y += 10
					continue, 1
				}
			}
	}
}

class The_Snake extends Main_Field { ; the snake
	Food_C()
	{
		Loop {
			Random, random_coord, 1, 961
			GuiControlGet, zt, Visible , SF%random_coord%
		} until (zt = 0)
		GuiControl, Show, FF%random_coord%
		this.Food_Loc := random_coord
		return this.Food_Loc ; food location
	}
	Game_Mapping()
	{
		Loop, 961 {
			Snake_X := this.Field_Elements[A_Index][1], Snake_Y := this.Field_Elements[A_Index][2] ; snakes start location
			Gui, add, progress, w10 h10 cWhite x%Snake_X% y%Snake_Y% vSF%A_Index% +Border +Hidden
			Gui, add, progress, w10 h10 cOlive x%Snake_X% y%Snake_Y% vFF%A_Index% +Hidden, 100
		}
	}
	Game_Start(record)
	{
		this.rec := record
		this.points := 0, this.length := 5
		this.Snake_Elements := Object()
		Loop, 5 { ; gyvates nareliu skaicius
			Snake_C := 466 + A_Index ; fields where the snake is
			GuiControl, Show, SF%Snake_C%
			this.Snake_Elements[A_Index] := Snake_C
		}
	}
	Snake_Move(speed, border_pass, points_add, musics)
	{
		if (musics = 1)
			music := "*-1"
		else
			music := ""
		KeyR := 2, KeyU := 2, KeyL := 2, KeyD := 2, direction := 1
		Loop {
			count_states := GetKeyState("Right") + GetKeyState("Left") + GetKeyState("Up") + GetKeyState("Down") ; checks how much key are pressed at the same time
			if (count_states < 2) { 
				if (GetKeyState("Right") AND KeyR = 2) {
					if (direction = 3 OR direction = 1)
						KeyR := 3, KeyL := 2, KeyU := 2, KeyD := 2
					else
						direction := 1, KeyR := 3, KeyL := 2, KeyU := 2, KeyD := 2
				}
				if (GetKeyState("Up") AND KeyU = 2) {
					if (direction = 4 OR direction = 2)
						KeyR := 2, KeyL := 2, KeyU := 3, KeyD := 2
					else
						direction := 2, KeyR := 2, KeyL := 2, KeyU := 3, KeyD := 2
				}
				if (GetKeyState("Left") AND KeyL = 2) {
					if (direction = 1 OR direction = 3)
						KeyR := 2, KeyL := 3, KeyU := 2, KeyD := 2
					else
						direction := 3, KeyR := 2, KeyL := 3, KeyU := 2, KeyD := 2
				}
				if (GetKeyState("Down") AND KeyD = 2) {
					if (direction = 2 OR direction = 4)
						KeyR := 2, KeyL := 2, KeyU := 2, KeyD := 3
					else
						direction := 4, KeyR := 2, KeyL := 2, KeyU := 2, KeyD := 3
				}
			}
			if (direction = 1) ; moves to the right
				current_border := "31,62,93,124,155,186,217,248,279,310,341,372,403,434,465,496,527,558,589,620,651,682,713,744,775,806,837,868,899,930,961", f_move := -30, s_move := 1
			if (direction = 2) ; moves up
				current_border := "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31", f_move := 930, s_move := -31
			if (direction = 3) ; moves to the left
				current_border := "1,32,63,94,125,156,187,218,249,280,311,342,373,404,435,466,497,528,559,590,621,652,683,714,745,776,807,838,869,900,931", f_move := 30, s_move := -1
			if (direction = 4) ; moves down
				current_border := "931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961", f_move := -930, s_move := 31
				sleep %speed%
				extra_minus := this.Snake_Elements[1], add_new := false
				GuiControl, Hide, SF%extra_minus%
				Loop, % this.Snake_Elements.MaxIndex() {
					if (A_Index = this.Snake_Elements.MaxIndex()) {
						zw := this.Snake_Elements[A_Index] ; paziurim ar desinys krastas esantis laukelis
						if zw in %current_border%
						{
							if (border_pass = 2)
								this.Snake_Elements[A_Index] := this.Snake_Elements[A_Index] + f_move
							if (border_pass = 1) {
								this.Game_Over(this.points)
								break, 2
							}
						}
						else
							this.Snake_Elements[A_Index] := this.Snake_Elements[A_Index - 1] + s_move
						re := this.Snake_Elements[A_Index]
						if (this.Food_Loc = this.Snake_Elements[A_Index]) { ; food was eaten
							SoundPlay, %music%
							this.points += points_add, this.length += 1
							tt_l := "Snake length: " this.length, tt_p := "Points: " this.points 
							GuiControl,, points, % tt_p
							GuiControl,, leng, % tt_l
							add_new := true, temp_c := this.Food_Loc
							this.Snake_Elements.Push(this.Food_Loc)
							this.Food_C()
						}
						GuiControlGet, zr, Visible , SF%re%
						if (zr = 1) {
							this.Game_Over(this.points)
							break, 2
						}
					}
					else
						this.Snake_Elements[A_Index] := this.Snake_Elements[A_Index + 1]
					extra_plus := this.Snake_Elements[A_Index]
					GuiControlGet, OutputVar, Visible , SF%extra_plus%
					if (OutputVar = 0)
						GuiControl, Show, SF%extra_plus%
				}
				if (add_new = true) {
					GuiControl, Hide, FF%temp_c%
					GuiControl, Show, SF%temp_c%
				}
		}
	}
	Game_Over(points_earned)
	{
		if (points_earned > this.rec) {
			IniWrite, %points_earned%, C:\Users\%A_UserName%\Documents\SnakeStats.ini, section4, record
			MsgBox, 68, GAME OVER, % "NEW RECORD " points_earned "!!!`n`nDo you want to play again?"
			IfMsgBox, Yes
			{
				Gui, Destroy
				Reload
			}
			else
				ExitApp
		}
		else
			MsgBox, 68, GAME OVER, % "Your score " points_earned "!`n`nDo you want to play again?"
			IfMsgBox, Yes
			{
				Gui, Destroy
				Reload
			}
			else
				ExitApp
	}
}