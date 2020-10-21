
GUI:
Gui 1: Default
Gui 3: Destroy
Gui 4: Destroy
Gui 7: Destroy
Gui 13: Destroy
Gui 15: Destroy
Gui 17: Destroy
Gui 18: Destroy
Gui 19: Destroy
Gui, Add, DateTime, x150 y40 vMyDateTime, Time
Gui, Add, Button, w75 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default cRed w75 H20 x0 y20 gEnglish, English
Gui, Add, Button, Default w75 H20 x75 y0 gMaths, Maths
Gui, Add, Button, Default w75 H20 x75 y20 gScience, Science 
Gui, Add, Button, Default w75 h20 x150 y0 gEdit, Edit
Gui, Add, Button, Default w75 h20 x150 y20 gScreenshot, Screenshot
Gui, Add, Button, Default w75 h20 x75 y60 gReload, Reload
Gui, Add, Button, Default w75 h20 x0 y60  gReload, Update Time
Gui, Add, Button, Default w75 h20 x150 y60 gHumanities, Humanities
Gui, Add, Button, Default w75 h20 x0 y40 gComputing, Computing
Gui, Add, Button, Default w75 h20 x75 y40 gOther, Other
Gui, Show, w225 h80 Center, Open App
Return

Computing:
Gui 1: Destroy
Gui 19: Default
Gui 20: Destroy
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gRobot, Robot
Gui, Show, w100 h40
Return

Games:
Gui 15: Destroy
Gui 2: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gSuperHot, Superhot
Gui, Add, Button, Default w100 h20 x0 y40 gKSP, KSP
Gui, Add, Button, Default w100 h20 x0 y60 gPvZ, Pvz
Gui, Add, Button, Default w100 h20 x0 y80, gSteam, Steam
Gui, Add, Button, Default w100 h20 x0 y100,
Gui, Show, w100 h120
Return

SuperHot:
Gui 2: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\Games\SUPERHOT\SUPERHOT.exe
Return

KSP:
Gui 2: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\Games\Kerbal Space Program\KSP_x64.exe
Return

PvZ:
Gui 2: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\Games\Plants Vs Zombies GOTY\PlantsVsZombies.exe
Return

Among:
Gui 2: Destroy
Run, C:\Program Files (x86)\Steam\steamapps\common\Among Us\Among Us.exe
Return                                                                                                                                                                                                                                                  

Steam:
Gui 2: Destroy
Run, C:\Program Files (x86)\Steam\steam.exe
Return


Robot:
Gui 19: Destroy
Gui 20: Default
Gui 21: Destroy
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gComputing, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gARC, ARC
Gui, Add, Button, Default w100 h20 x0 y40 gWorkspace, Workspace
Gui, Show, w100 h60
Return

ARC:
Gui 20: Destroy
Run, C:\Program Files (x86)\Synthiam Inc\ARC by Synthiam\ARC.exe
Return

Workspace:
Gui 20: Destroy
Gui 21: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gRobot, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gCurrentJD, Current JD
Gui, Add, Button, Default w100 h20 x0 y40 gCurrentSix, Current Six
Gui, Show, w100 h60
Return

CurrentSix:
Gui 21: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\School\subjects\D AND T\Robot\six\CUrrent.EZB
Return

CurrentJD:
Gui 21: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\School\subjects\D AND T\Robot\JD\Current.EZB
Return

Other:
Gui 1: Destroy
Gui 16: Destroy
Gui 6: Destroy
Gui 13: Destroy
Gui 15: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gSoundboard, Soundboard
Gui, Add, Button, Default w100 h20 x0 y40 gScripts, Scrpits
Gui, Add, Button, Default w100 h20 x0 y60 gVol, Vol
Gui, Add, Button, Default w100 h20 x0 y80 gBIn, Empty Bin
Gui, Add, Button, Default w100 h20 x0 y100 gTimer, Daily Timer
Gui, Add, Button, Default w100 h20 x0 y120 gGames, Games
Gui, Add, Button, Default w100 h20 x0 y140 gQuickSerch, Quick Serch
Gui, Show, w100 h160 Center, Other
Return

QuickSerch:
Gui 15: Destroy
InputBox, UserInput,Search, , ,500,100
if %UserInput%
{
	Run, https://www.google.com/search?q=%UserInput%
}
Return

Timer:
Gui 15: Destroy
Run, https://ict.kennedy.wa.edu.au/timers/Kennedy-periods-timer.html
Return

Bin:
Gui 15: Destroy
FileRecycleEmpty
Return

Scripts:
Gui 15: Destroy
Gui 16: Default
Gui, Add, Button, w60 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w60 h20 x60 y0 gOther, GO BACK!
Gui, Add, Button, Default w120 h20 x0 y20 gXnnY, X and Y Mouse Cords
Gui, Show, w120 h40 Center, Scripts
Return

XnnY:
Gui 16: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\Not School\GIthub\Coding\Autohotkey\x and y.ahk
Return

Soundboard:
Gui 15: Destroy
Gui 22: Destroy
Gui 13: Default
; LEFT COLLOM BELOW
Gui, Add, Button, w100 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w100 h20 x0 y20 goof, OOF
Gui, Add, Button, Default w100 h20 x0 y40 gGameCube, Gamecube
Gui, Add, Button, Default w100 h20 x0 y60, NOT SET
; LEFT COLLOM ABOVE
; MIDDLE COLLOM BELOW
Gui, Add, Button, Default w100 h20 x100 y0 gStopSound, STOP SOUND
Gui, Add, Button, Default w100 h20 x100 y20 gWindows, XP
Gui, Add, Button, Default w100 h20 x100 y40 gTOMMASLOAD, thomas the tank LOUD
Gui, Add, Button, Default w100 h20 x100 y60 gGay, I'm gay
; MIDDLE COLOM ABOVE
; RIGHT COLLOM BELOW
Gui, Add, Button, Default w100 h20 x200 y0 gOther, GO BACK!
Gui, Add, Button, Default w100 h20 x200 y20 gAirhorn, Air Horn
Gui, Add, Button, Default w100 h20 x200 y40 gBabyShark, Baby shark
Gui, Add, Button, Default w100 h20 x200 y60 gTerriaSound, Terria
; RIGHT COLLOM ABOVE
Gui, Show, w300 h80 Center, TrASH
Return

StopSound:
SoundPlay, egegtgtg.mp333
Return

BabyShark:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\GIthub\Coding\Soundboard\Baby shark.mp3
Return

Gay:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\Github\Coding\Soundboard\I'm gay sound.mp3
Return

GameCube:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\Github\Coding\Soundboard\GAMECUBE.mp3
Return

Windows:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\Github\Coding\Soundboard\WIndows xp.mp3
Return

TOMMASLOAD:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\Github\Coding\Soundboard\TOMMMMASS LOUD.mp3
Return

oof:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\Github\Coding\Soundboard\Oof.mp3
Return

Airhorn:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\Github\Coding\Soundboard\AIRHORN.mp3
Return

TerriaSound:
Gui 13: Destroy
Gui 22: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gSoundboard, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gStopSound, STOP SOUND
Gui, Add, Button, Default w100 h20 x0 y40 gOverworldDAY, Overworld day
GUI Show, w100 h60
Return

OverworldDAY:
SoundPlay, C:\Users\crbra\OneDrive\Desktop\Not School\GIthub\Coding\Soundboard\Terria\Overworld-day.mp3
Return

Screenshot:
Gui 1: Destroy
Sleep, 200
Send, #{PrintScreen}
Sleep, 500
Gui 17: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gOpen, Open Photo
Gui, Show, w100 h40 Center, Screenshot
Return

Open: 
Gui 17: Destroy
Run, C:\Users\crbra\OneDrive\Pictures\Screenshots
Sleep, 1750
WinMaximize, Screenshots
Sleep, 750
MouseClick, Left, 500, 350, 2, 0,
Return

Exit:
ExitApp
Return

Humanities:
Gui 1: Destroy
Gui 14: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gSeqtaHumanities, Seqta
Gui, Show, w100 h40 Center, Humanities
Return

SeqtaHumanities:
Run, https://student.kennedy.wa.edu.au/#?page=/courses/4936:21763
Return

Vol:
Gui 15: Destroy
Gui 6: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gOther, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gVolUP, Vol Up
Gui, Add, Button, Default w100 h20 x0 y40 gVolDOWN, Vol Down
Gui, Add, Button, Default w100 h20 x0 y60 gVol0, Vol Set 0
Gui, Add, Button, Default w100 h20 x0 y80 gVol100, Vol Set 100
Gui, Show, w100 h100 Center, Vol
Return

VolUP:
SoundSet +2
SoundGet, Vol
SplashTextOn, 150, 150, Vol, The current volume is %Vol%
WinMove, Vol, , 0, 0
Sleep, 500
SplashTextOff
Return

Vol0:
SoundSet, 0
Return

Vol100:
SoundSet, 100
Return

VolDOWN:
SoundSet -2
SoundGet, Vol
SplashTextOn, 150, 150, Vol, The current volume is %Vol%
WinMove, Vol, , 0, 0
Sleep, 500
SplashTextOff
Return


Edit:
Gui 1: Destroy
Gui 18: Default
Gui, Add, Button, w50 h20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 h20 x50 y0 gOther, GO BACK!
Gui, Add, Button, Default w100 h20 x0 y20 gGithub, Github Page
Gui, Add, Button, Default w100 h20 x0 y40 gGitHubDesk, Github Desktop
Gui, Add, Button, Default w100 h20 x0 y60 gVSCode, VS code
Gui, Show, w100 h80 Center, GAY
Return

VSCode:
Gui 18: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\GitHubDesktop.lnk
Sleep, 3750
Send, ^+a
Return

GithubDesk:
Gui 18: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\GitHubDesktop.lnk
Return

Github:
Gui 18: Destroy
Run, https://github.com/Kathund/Coding
Return

Timetable:
Gui 1: Destroy
Gui 2: Destroy
Gui 3: Destroy
Gui 4: Destroy
Gui 5: Destroy
Gui 6: Destroy
Gui 7: Default
Gui 8: Destroy
Gui 9: Destroy
Gui 10: Destroy
Gui 11: Destroy
Gui 12: Destroy
Gui 13: Destroy
Gui 14: Destroy
Gui 15: Destroy
Gui 16: Destroy
Gui 17: Destroy
Gui 18: Destroy
Gui 19: Destroy
Gui 20: Destroy
Gui 21: Destroy
Gui 22: Destroy
Gui 23: Destroy
Gui, Add, Button, Default w75 h20 x0 y0 gGUI, GO BACK
Gui, Add, Button, Default w75 h20 x0 y20 gMonday, Monday
Gui, Add, Button, Default w75 h20 x0 y40 gTuesday, Tuesday
Gui, Add, Button, Default w75 h20 x0 y60 gWednesday, Wednesday
Gui, Add, Button, Default w75 h20 x0 y80 gThursday, Thursday
Gui, Add, Button, Default w75 h20 x0 y100 gFriday, Friday
Gui, Show, w75 h120 Center, Timetable
Return

Friday:
Gui 12: Default
Gui 7: Destroy
Gui, Add, Button, Default w160 h20 x0 y0 gTimetable, GO BACK! 
Gui, Add, Button, Default w160 h20 x0 y20, Form 8:15 - 8:30
Gui, Add, Button, Default w160 h20 x0 y40, Christen Education 8:30 - 9:20
Gui, Add, Button, Default w160 h20 x0 y60, English 9:20 - 10:10
Gui, Add, Button, Default w160 h20 x0 y80, Humanities 10:10 - 11:00
Gui, Add, Button, Default w160 h20 x0 y100, Math 11:30 - 12:20
Gui, Add, Button, Default w160 h20 x0 y120, English 12:20 - 13:05
Gui, Add, Button, Default w160 h20 x0 y140, Science 13:40 - 14:25
Gui, Add, Button, Default w160 h20 x0 y160, Humanities 14:25 - 15:15
Gui, Show, w160 h180 
Return

Thursday:
Gui 11: Default
Gui 7: Destroy
Gui, Add, Button, Default w160 h20 x0 y0 gTimetable, GO BACK! 
Gui, Add, Button, Default w160 h20 x0 y20, Form 8:15 - 8:30
Gui, Add, Button, Default w160 h20 x0 y40, Math 8:30 - 9:20
Gui, Add, Button, Default w160 h20 x0 y60, Health 9:20 - 10:10
Gui, Add, Button, Default w160 h20 x0 y80, English 10:10 - 11:00
Gui, Add, Button, Default w160 h20 x0 y100, Drama 11:30 - 12:20
Gui, Add, Button, Default w160 h20 x0 y120, Drama 12:20 - 13:05
Gui, Add, Button, Default w160 h20 x0 y140, Computing 13:40 - 14:25
Gui, Add, Button, Default w160 h20 x0 y160, Computing 14:25 - 15:15
Gui, Show, w160 h180 
Return


Wednesday:
Gui 10: Default
Gui 7: Destroy
Gui, Add, Button, Default w160 h20 x0 y0 gTimetable, GO BACK! 
Gui, Add, Button, Default w160 h20 x0 y20, Form 8:15 - 8:30
Gui, Add, Button, Default w160 h20 x0 y40, Form 8:30 - 9:20
Gui, Add, Button, Default w160 h20 x0 y60, English 9:20 - 10:10
Gui, Add, Button, Default w160 h20 x0 y80, Humanities 10:10 - 11:00
Gui, Add, Button, Default w160 h20 x0 y100, Science 11:30 - 12:20
Gui, Add, Button, Default w160 h20 x0 y120, English 12:20 - 13:05
Gui, Add, Button, Default w160 h20 x0 y140, Future Tech 13:40 - 14:25
Gui, Add, Button, Default w160 h20 x0 y160, Future Tech 14:25 - 15:15
Gui, Show, w160 h180 
Return


Tuesday:
Gui 9: Default
Gui 7: Destroy
Gui, Add, Button, Default w160 h20 x0 y0 gTimetable, GO BACK! 
Gui, Add, Button, Default w160 h20 x0 y20, Form 8:15 - 8:30
Gui, Add, Button, Default w160 h20 x0 y40, Math 8:30 - 9:20
Gui, Add, Button, Default w160 h20 x0 y60, Science 9:20 - 10:10
Gui, Add, Button, Default w160 h20 x0 y80, English 10:10 - 11:00
Gui, Add, Button, Default w160 h20 x0 y100, Humanities 11:30 - 12:20
Gui, Add, Button, Default w160 h20 x0 y120, Math 12:20 - 13:05
Gui, Add, Button, Default w160 h20 x0 y140, MEDIA 13:40 - 14:25
Gui, Add, Button, Default w160 h20 x0 y160, MEDIA 14:25 - 15:15
Gui, Show, w160 h180 
Return

Monday:
Gui 8: Default
Gui 7: Destroy
Gui, Add, Button, Default w160 h20 x0 y0 gTimetable, GO BACK! 
Gui, Add, Button, Default w160 h20 x0 y20, Form 8:15 - 8:30
Gui, Add, Button, Default w160 h20 x0 y40, PE 8:30 - 9:20
Gui, Add, Button, Default w160 h20 x0 y60, PE 9:20 - 10:10
Gui, Add, Button, Default w160 h20 x0 y80, STUDY 10:10 - 11:00
Gui, Add, Button, Default w160 h20 x0 y100, Science 11:30 - 12:20
Gui, Add, Button, Default w160 h20 x0 y120, Math 12:20 - 13:05
Gui, Add, Button, Default w160 h20 x0 y140, Humanities 13:40 - 14:25
Gui, Add, Button, Default w160 h20 x0 y160, Science 14:25 - 15:15
Gui, Show, w160 h180 
Return

Science:   
Gui 1: Destroy
Gui 3: Default
Gui, Add, Button, W50 H20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 H20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, W100 H20 x0 y20 gBookScience, Book
Gui, Add, Button, W100 H20 x0 y40 gPowerPointScience, PowerPont
Gui, Add, Button, W100 H20 x0 y60 gSeqtaScience, Seqta

Gui, Show, w100 h80 Center, bald
Return

BookScience:
Gui 3: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\School\subjects\Science\Booklet.docx
Return

SeqtaScience:
Gui 3: Destroy
Run, https://student.kennedy.wa.edu.au/#?page=/courses/4627:21820
Return

PowerPointScience:
Gui 3: Destroy
Run, C:\Users\crbra\OneDrive\Desktop\School\subjects\Science\PowerPoint.pptx
Return

Maths:
Gui 1: Destroy
Gui 5: Destroy
Gui 4: Default
Gui, Add, Button, W50 H20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 H20 x50 y0 gGUI, GO BACK!
Gui, Add, Button, W100 H20 x0 y20 gTextBoxMath, TextBook
Gui, Add, Button, W100 H20 x0 y40 gSeqtaMath, Seqta
Gui, Add, Button, w100 h20 x0 y60 gOnenoteMath, Onenote
Gui, Show, w100 h80 Center, bald
Return

OnenoteMath:
Gui 4: Destroy
Sleep, 50
Send, {LWin}
Sleep, 250
Send, onenote for windows 10
Sleep, 250
Send, {Enter}
Sleep, 2750
MouseClick, left, 350, 250, 1, 0
Sleep, 250
MouseClick, left, 400, 630, 1, 0
Return

TextBoxMath:
Gui 4: Destroy
Gui 5: Default
Gui 23: Destroy
Gui, Add, Button, W50 H20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 H20 x50 y0 gMaths, GO BACK!
Gui, Add, Button, w100 h20 x0 y20 gMathsChapterAnswers, Answers
Gui, Add, Button, w100 h20 x0 y40 gMathsChapter1, Chapter 1
Gui, Add, Button, w100 h20 x0 y60 gMathsChapter2, Chapter 2
Gui, Add, Button, w100 h20 x0 y80 gMathsChapter3, Chapter 3
Gui, Add, Button, w100 h20 x0 y100 gMathsChapter4, Chapter 4
Gui, Add, Button, w100 h20 x0 y120 gMathsChapter5, Chapter 5
Gui, Add, Button, w100 h20 x0 y140 gMathsChapter6, Chapter 6
Gui, Add, Button, w100 h20 x0 y160 gMathsChapter7, Chapter 7
Gui, Add, Button, w100 h20 x0 y180 gMathsChapter8, Chapter 8
Gui, Add, Button, w100 h20 x0 y200 gMathsChapter9, Chapter 9
Gui, Add, Button, w100 h20 x0 y220 gMathsChapter10, Chapter 10
Gui, Add, Button, w100 h20 x0 y240 gMathLetters, Letters
Gui, Show, w100 h260 Center, bald
Return

MathLetters:
Gui 5: Destroy
Gui 23: Default
Gui, Add, Button, W50 H20 x0 y0 gTimetable, Timetable
Gui, Add, Button, Default w50 H20 x50 y0 gTextBoxMathm , GO BACK!
Gui, Add, Button, w100 h20 x0 y20 gMathLettersA, A
Gui, Add, Button, w100 h20 x0 y40 gMathLettersB, B
Gui, Add, Button, w100 h20 x0 y60 gMathLettersC, C 
Gui, Add, Button, w100 h20 x0 y80 gMathLettersD, D 
Gui, Add, Button, w100 h20 x0 y100 gMathLettersE, E 
Gui, Add, Button, w100 h20 x0 y120 gMathLettersF, F 
Gui, Add, Button, w100 h20 x0 y140 gMathLettersG, G 
Gui, Add, Button, w100 h20 x0 y160 gMathLettersH, H 
Gui, Add, Button, w100 h20 x0 y180 gMathLettersI, I 
Gui, Add, Button, w100 h20 x0 y200 gMathLettersJ, J 
Gui, Add, Button, w100 h20 x0 y220 gMathLettersK, K 
Gui, Add, Button, w100 h20 x0 y240 gMathLettersL, L
Gui, Add, Button, w100 h20 x0 y260 gMathLettersM, M
Gui, Add, Button, w100 h20 x0 y280 gMathLettersN, N
Gui, Add, Button, w100 h20 x0 y300 gMathLettersO, O
Gui, Add, Button, w100 h20 x0 y320 gMathLettersP, P
Gui, Add, Button, w100 h20 x0 y340 gMathLettersQ, Q
Gui, Add, Button, w100 h20 x0 y360 gMathLettersR, R
Gui, Add, Button, w100 h20 x0 y380 gMathLettersS, S
Gui, Add, Button, w100 h20 x0 y400 gMathLettersT, T
Gui, Add, Button, w100 h20 x0 y420 gMathLettersU, U
Gui, Add, Button, w100 h20 x0 y440 gMathLettersV, V
Gui, Add, Button, w100 h20 x0 y460 gMathLettersW, W
Gui, Add, Button, w100 h20 x0 y480 gMathLettersX, X
Gui, Add, Button, w100 h20 x0 y500 gMathLettersY, Y
Gui, Add, Button, w100 h20 x0 y520 gMathLettersZ, Z
Gui, Show, w100 h540 Center, bald
Return

MathLettersA:
Gui 23: Destroy
Send, A         
Return

MathLettersB:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Return

MathLettersC:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Return

MathLettersD:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Return

MathLettersE:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Return

MathLettersF:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Return

MathLettersG:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Return

MathLettersH:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Return

MathLettersI:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Return

MathLettersJ:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Return

MathLettersK:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Return

MathLettersL:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Return

MathLettersM:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Return

MathLettersN:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Return

MathLettersO:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Return

MathLettersP:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Return

MathLettersQ:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Return

MathLettersR:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Return

MathLettersS:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Return

MathLettersT:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Return

MathLettersU:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Send, U         {Return}
Return

MathLettersV:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Send, U         {Return}
Send, V         {Return}
Return

MathLettersW:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Send, U         {Return}
Send, V         {Return}
Send, W         {Return}
Return

MathLettersX:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Send, U         {Return}
Send, V         {Return}
Send, W         {Return}
Send, X         {Return}
Return

MathLettersY:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Send, U         {Return}
Send, V         {Return}
Send, W         {Return}
Send, X         {Return}
Send, Y         {Return}
Return

MathLettersZ:
Gui 23: Destroy
Send, A         {Return}
Send, B         {Return}
Send, C         {Return}
Send, D         {Return}
Send, E         {Return}
Send, F         {Return}
Send, G         {Return}
Send, H         {Return}
Send, I         {Return}
Send, J         {Return}
Send, K         {Return}
Send, L         {Return}
Send, M         {Return}
Send, N         {Return}
Send, O         {Return}
Send, P         {Return}
Send, Q         {Return}
Send, R         {Return}
Send, S         {Return}
Send, T         {Return}
Send, U         {Return}
Send, V         {Return}
Send, W         {Return}
Send, X         {Return}
Send, Y         {Return}
Send, Z         {Return}
Return

MathsChapterAnswers:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Answers.pdf
Return

MathsChapter1:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-1-Integers.pdf
Return

MathsChapter2:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-2-Lines-shapes-and-solids.pdf
Return

MathsChapter3:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-3-Fractions-decimals-and-percentages.pdf
Return

MathsChapter4:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-4-Measurement-and-introduction-to-Pythagoras-theorem.pdf
Return

MathsChapter5:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-5-Algebra.pdf
Return

MathsChapter6:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-6-Ratios-and-rates.pdf
Return

MathsChapter7:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-7-Equations and inequalities.pdf
Return

MathsChapter8:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-8-Probability and statistics.pdf
Return

MathsChapter9:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-9-Straight line graphs.pdf
Return

MathsChapter10:
Gui 5: Destroy
Run, \\curric.kennedy.wa.edu.au\student\YDrive\Allsubjects\Year8\Mathematics\8 Essential Mathematics Version 2\Chapter-10-Transformation-and-congruence.pdf
Return

SeqtaMath:
Gui 4: Destroy
Run, https://student.kennedy.wa.edu.au/#?page=/courses/4685:21793
Return

English:
Reload
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

#Up::
Goto, VolUP
Return

#Down::
Goto, VolDOWN
Return

!j::
Goto, Reload
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

^+i::
FormatTime, CurrDATE, HHmmsstt
Sleep, 250
Send, %CurrDATE%
Return

/**
Gui 1 = main
Gui 2 = Games
Gui 3 = Science
Gui 4 = maths
Gui 5 = text book math
Gui 6 = vol stuff
Gui 7 = timetable
Gui 8 = monday - timetable
Gui 9 = Tuesday - timetable
Gui 10 = Wednesday - timetable
Gui 11 = Thursday - timetable
Gui 12 = Friday - timetable
Gui 13 = Soundboard
Gui 14 = Humanities
Gui 15 = Other
Gui 16 = Scripts
Gui 17 = Screenshot
Gui 18 = Edit
Gui 19 = Computing
Gui 20 = Robot
Gui 21 = Workspace
Gui 22 = TerriaSound
  
<^Space::
InputBox, UserInput,Search, , ,500,100
if %UserInput%
{
	Run, https://www.google.com/#q= + %UserInput%
}




*/
