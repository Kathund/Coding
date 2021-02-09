Gui, Add, Button, gCoin, Flip a coin
Gui, Show, 
Return

Coin:
{
Random, Coin, 1, 2
If Coin = 1
{
Coin:="Heads!"
}
If Coin = 2
{
Coin:="Tails!"
}
sleep, 100
MsgBox, %Coin%
Return
}

GuiClose:
ExitApp