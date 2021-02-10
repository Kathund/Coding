Gui, Add, Button, gDice6, Roll a 6-sided dice

Dice6:
{
Random, Dice, 1, 6
sleep, 100
MsgBox, %Dice%!
Return
}

GuiClose:
ExitApp