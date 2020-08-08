Help_text=
(
Both "`%" and "$" can be used within the math.
Example: $238 * 6`% to calculate 6`% of $238
Hotkey Windows+M reloads the main window.
)

GoSub GUIsub
Return

GUIsub:
Gui Destroy
Gui Font, S12
Gui Add, Button, W50 H23 x0 y0 gHelp, Help
Gui Add, Button, W50 H23 x51 y0 gExit, Exit
Gui Font, S13 Bold
Gui Font
Gui Font, S13
Gui Add, Edit, x5 W135 R1 -VScroll -HScroll -Wrap vVar1 Limit14
Gui Font, S13 Bold
Gui Add, Button, W15 H15 x143 y+-28 gPN1, +
Gui Add, DropDownList, x5 W35 vMathChoice1, +|-|/|*
Gui Font
Gui Font, S13
Gui Add, Edit, x5 W135 R1 -VScroll -HScroll -Wrap vVar2 Limit14
Gui Font, S13 Bold
Gui Add, Button, W15 H15 x143 y+-28 gPN2, +
Gui Add, DropDownList, x5 W35 vMathChoice2, +|-|/|*
Gui Font
Gui Font, S13
Gui Add, Edit, x5 W135 R1 -VScroll -HScroll -Wrap vVar3 Limit14
Gui Font, S13 Bold
Gui Add, Button, W15 H15 x143 y+-28 gPN3, +
Gui Add, DropDownList, x5 W35 vMathChoice3, +|-|/|*
Gui Font
Gui Font, S13
Gui Add, Edit, x5 W135 R1 -VScroll -HScroll -Wrap vVar4 Limit14
Gui Font, S13 Bold
Gui Add, Button, W15 H15 x143 y+-28 gPN4, +
Gui Font, S15 Bold
Gui Add, Button, x40 W27 H27 gSubmit_Data Default, =
Gui Font
Gui Font, S13
Gui Add, Edit, r4 W230 x+105 y+-141 +HScroll -VScroll +ReadOnly vResults -Wrap
Gui Add, Picture, y+-252, ahk.jpg
Gui Font, S12
Gui Add, Button, W50 H23 x101 y0 gHide, Hide
Gui Font
Gui Show, Center, .AHK Calculator
ControlFocus Edit1, .AHK Calculator
Return

Hide:
Gui Destroy
Return

PN1:
ControlGetText B_Text, Button3, .AHK Calculator
If B_Text = +
{ ControlSetText Button3, -
ControlFocus Edit1
Bt_Text1 = 1
}
If B_Text = -
{ ControlSetText Button3, +
ControlFocus Edit1
Bt_Text1 =
}
Return

PN2:
ControlGetText B_Text, Button4, .AHK Calculator
If B_Text = +
{ ControlSetText Button4, -
ControlFocus Edit2
Bt_Text2 = 1
}
If B_Text = -
{ ControlSetText Button4, +
ControlFocus Edit2
Bt_Text2 =
}
Return

PN3:
ControlGetText B_Text, Button5, .AHK Calculator
If B_Text = +
{ ControlSetText Button5, -
ControlFocus Edit3
Bt_Text3 = 1
}
If B_Text = -
{ ControlSetText Button5, +
ControlFocus Edit3
Bt_Text3 =
}
Return

PN4:
ControlGetText B_Text, Button6, .AHK Calculator
If B_Text = +
{ ControlSetText Button6, -
ControlFocus Edit4
Bt_Text4 = 1
}
If B_Text = -
{ ControlSetText Button6, +
ControlFocus Edit4
Bt_Text4 =
}
Return

#IfWinActive .AHK Calculator

Shift & =::
NumpadAdd::
ControlGetFocus Active_Control
If Active_Control = Edit1
{ ControlSendRaw ComboBox1, +
ControlFocus Edit2
}
If Active_Control = Edit2
{ ControlSendRaw ComboBox2, +
ControlFocus Edit3
}
If Active_Control = Edit3
{ ControlSendRaw ComboBox3, +
ControlFocus Edit4
}
Return

Shift & ,::
ControlGetFocus Active_Control
If Active_Control = Edit1
{ ControlSendRaw ComboBox1, <
ControlFocus Edit2
}
If Active_Control = Edit2
{ ControlSendRaw ComboBox2, <
ControlFocus Edit3
}
If Active_Control = Edit3
{ ControlSendRaw ComboBox3, <
ControlFocus Edit4
}
Return

Shift & .::
ControlGetFocus Active_Control
If Active_Control = Edit1
{ ControlSendRaw ComboBox1, >
ControlFocus Edit2
}
If Active_Control = Edit2
{ ControlSendRaw ComboBox2, >
ControlFocus Edit3
}
If Active_Control = Edit3
{ ControlSendRaw ComboBox3, >
ControlFocus Edit4
}
Return

NumpadSub::
-::
ControlGetFocus Active_Control
If Active_Control = Edit1
{ ControlSendRaw ComboBox1, -
ControlFocus Edit2
}
If Active_Control = Edit2
{ ControlSendRaw ComboBox2, -
ControlFocus Edit3
}
If Active_Control = Edit3
{ ControlSendRaw ComboBox3, -
ControlFocus Edit4
}
Return

NumpadDiv::
/::
ControlGetFocus Active_Control
If Active_Control = Edit1
{ ControlSendRaw ComboBox1, /
ControlFocus Edit2
}
If Active_Control = Edit2
{ ControlSendRaw ComboBox2, /
ControlFocus Edit3
}
If Active_Control = Edit3
{ ControlSendRaw ComboBox3, /
ControlFocus Edit4
}
Return

NumpadMult::
Shift & 8::
ControlGetFocus Active_Control
If Active_Control = Edit1
{ ControlSendRaw ComboBox1, *
ControlFocus Edit2
}
If Active_Control = Edit2
{ ControlSendRaw ComboBox2, *
ControlFocus Edit3
}
If Active_Control = Edit3
{ ControlSendRaw ComboBox3, *
ControlFocus Edit4
}
Return

#IfWinActive

#m::
Gosub GUIsub
Return

Help:
Gui 2: Default
Gui Destroy
Gui +Owner1 -SysMenu
Gui 1: +Disabled
Gui Font, S11 Bold
Gui Add, Picture, x0 y0, ahk.jpg
Gui Add, Text, x240 y10, .AHK Calculator`n`nVersion 1.0
Gui Font, underline
Gui Add, Text, cBlue gidw87, idw87.50megs.com
Gui Add, Text, cBlue gAHKey, www.autohotkey.com
Gui Font
Gui Font, S11
Gui Add, Text, x30, %help_text%
Gui Font, S12
Gui Add, Button, x320 y+-33 W40 H25 gExit_Help Default, OK
Gui Show, Center, .AHK Calculator Help
Return

Exit_Help:
Gui 1: -Disabled
Gui 2: Destroy
ControlFocus Edit1, .AHK Calculator
Return

idw87:
Run, http://idw87.50megs.com/
Return

AHKey:
Run, http://www.autohotkey.com/
Return

Exit:
ExitApp

Submit_Data:

Gui Submit, NoHide

If Bt_Text1 IS NOT space
Var1 = -%Var1%

If Bt_Text2 IS NOT space
Var2 = -%Var2%

If Bt_Text3 IS NOT space
Var3 = -%Var3%

If Bt_Text4 IS NOT space
Var4 = -%Var4%

Search_String := var1 var2 var3 var4

IfInString Search_String, $
{ StringReplace Var1, Var1, $
StringReplace Var2, Var2, $
StringReplace Var3, Var3, $
StringReplace Var4, Var4, $
is_money = 1
}

IfInString Search_String, `,
{ StringReplace Var1, Var1, `,,, All
StringReplace Var2, Var2, `,,, All
StringReplace Var3, Var3, `,,, All
StringReplace Var4, Var4, `,,, All
}

IfInString Var1, `%
{ StringReplace Var1, Var1, `%
StringLen, var_length, Var1
If var_length = 1
StringReplace Var1, Var1, %Var1%, 0.0%Var1%
	Else
StringReplace Var1, Var1, %Var1%, 0.%Var1%
}

IfInString Var2, `%
{ StringReplace Var2, Var2, `%
StringLen, var_length, Var2
If var_length = 1
StringReplace Var2, Var2, %Var2%, 0.0%Var2%
	Else
StringReplace Var2, Var2, %Var2%, 0.%Var2%
}

IfInString Var3, `%
{ StringReplace Var3, Var3, `%
StringLen, var_length, Var3
If var_length = 1
StringReplace Var3, Var3, %Var3%, 0.0%Var3%
	Else
StringReplace Var3, Var3, %Var3%, 0.%Var3%
}

IfInString Var4, `%
{ StringReplace Var4, Var4, `%
StringLen, var_length, Var4
If var_length = 1
StringReplace Var4, Var4, %Var4%, 0.0%Var4%
	Else
StringReplace Var4, Var4, %Var4%, 0.%Var4%
}

Var1 := zerotrimmer(0+Var1)
Var2 := zerotrimmer(0+Var2)
Var3 := zerotrimmer(0+Var3)
Var4 := zerotrimmer(0+Var4)

If MathChoice1 = +
math_section1 := (Var1 + Var2)
If MathChoice1 = -
math_section1 := (Var1 - Var2)
If MathChoice1 = /
math_section1 := (Var1 / Var2)
If MathChoice1 = *
math_section1 := (Var1 * Var2)

math_section1 := zerotrimmer(0+math_section1)

If MathChoice2 = +
math_section2 := (math_section1 + Var3)
If MathChoice2 = -
math_section2 := (math_section1 - Var3)
If MathChoice2 = /
math_section2 := (math_section1 / Var3)
If MathChoice2 = *
math_section2 := (math_section1 * Var3)

math_section2 := zerotrimmer(0+math_section2)

If MathChoice3 = +
math_section3 := (math_section2 + Var4)
If MathChoice3 = -
math_section3 := (math_section2 - Var4)
If MathChoice3 = /
math_section3 := (math_section2 / Var4)
If MathChoice3 = *
math_section3 := (math_section2 * Var4)

math_section3 := zerotrimmer(0+math_section3)

zerotrimmer(number) { 
   StringTrimRight n, number, 1 
   If (n <> number or n = "") 
      Return number 
   Return zerotrimmer(n) 
}

If math_section1 IS number
ms1 = 1
Else ms1 = 0
If math_section2 IS number
ms2 = 1
Else ms2 = 0
If math_section3 IS number
ms3 = 1
Else ms3 = 0

If (ms1 = 1 AND ms2 = 0 AND ms3 = 0)
{ math_results = %math_section1%
GoSub MoneyCommas
complete_results := " " Var1 " " MathChoice1 " " Var2 "=`r`n"
                  . " " math_results
ControlSetText Edit5, %complete_results%, .AHK Calculator
GoSub ClearVars
} Else If (ms1 = 1 AND ms2 = 1 AND ms3 = 0)
{ math_results = %math_section2%
GoSub MoneyCommas
complete_results := " (" Var1 " " MathChoice1 " " Var2 ") " MathChoice2 " " Var3 " " MathChoice3 " " Var4 "=`r`n"
                  . " " math_section1 " " MathChoice2 " " Var3 "=`r`n"
                  . " " math_results
ControlSetText Edit5, %complete_results%, .AHK Calculator
GoSub ClearVars
} Else If (ms1 = 1 AND ms2 = 1 AND ms3 = 1)
{ math_results = %math_section3%
GoSub MoneyCommas
complete_results := " (" Var1 " " MathChoice1 " " Var2 ") " MathChoice2 " " Var3 " " MathChoice3 " " Var4 "=`r`n"
                  . " (" math_section1 " " MathChoice2 " " Var3 ") " MathChoice3 " " Var4 "=`r`n"
                  . " " math_section2 " " MathChoice3 " " Var4 "=`r`n"
                  . " " math_results
ControlSetText Edit5, %complete_results%, .AHK Calculator
GoSub ClearVars
} Else
{ ControlSetText Edit5,, .AHK Calculator
GoSub ClearVars
}
Return

MoneyCommas:
If is_money = 1
{
SetFormat FLOAT, 0.2
math_results += 0
}
math_results := FormatNumber(math_results)
If is_money = 1
math_results = $%math_results%

FormatNumber(_number) {
   StringReplace _number, _number, -
   IfEqual ErrorLevel,0, SetEnv Sign,-
   Loop Parse, _number, .
      If (A_Index = 1) {
         len := StrLen(A_LoopField)
         Loop Parse, A_LoopField
            If (Mod(len-A_Index,3) = 0 and A_Index != len)
                 x = %x%%A_LoopField%,
            Else x = %x%%A_LoopField%
      } Else Return Sign x "." A_LoopField
   Return Sign x
}
Return

ClearVars:
ControlSetText Edit1,, .AHK Calculator
ControlSetText Edit2,, .AHK Calculator
ControlSetText Edit3,, .AHK Calculator
ControlSetText Edit4,, .AHK Calculator
GuiControl,, MathChoice1, |+|-|/|*
GuiControl,, MathChoice2, |+|-|/|*
GuiControl,, MathChoice3, |+|-|/|*
ControlSetText Button3, +
ControlSetText Button4, +
ControlSetText Button5, +
ControlSetText Button6, +
ControlFocus Edit1, .AHK Calculator
math_section1 =
math_section2 =
math_section3 =
Bt_Text1 =
Bt_Text2 =
Bt_Text3 =
Bt_Text4 =
is_money =
var1 =
var2 =
var3 =
var4 =
Return