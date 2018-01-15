#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Suspend, On

; -------------------- COMMANDS

F1:: 
    Suspend, Toggle
return

F3::
    Suspend, Off
    Reload
return

F4:: 
    Suspend, Off
    ExitApp
return

SetTitleMatchMode, 2
#IfWinActive, DendroDIF

F12::
    Suspend, Off
    MouseClick, Left, 180, 150
    MouseClick, Left, 600, 680
    Sleep, 2000
    MouseClick, Left, 650, 70
    MouseClick, Left, 200, 240
    Send 10
    Send {Tab}
return

F11::
    Suspend, Off
    MouseClick, Left, 180, 150
    MouseClick, Left, 600, 680
    Sleep, 2000
    MouseClick, Left, 650, 70
    MouseClick, Left, 200, 240
    Send 15
    Send {Tab}
return

t:: ; Test pour savoir la position de la souris
    MouseMove, 650, 70
return

Esc::
    MouseClick, Left, 800, 70
    Sleep 2000
    MouseClick, Left, 250, 150
    MouseMove, 110, 200
    ;Send ^s
    Suspend, On
return

;~LButton:: 
    Suspend, On
return

; -------------------- ARBRES

s::
    Send sab
    Send {Tab}
    Send 01
return

e::
    Send epn
    Send {Tab}
    Send 01
return

b::
    Send epb
    Send {Tab}
    Send 01
return

o::
    Send bop
    Send {Tab}
    Send 01
return

m::
    Send mel
    Send {Tab}
    Send 01
return


; -------------------- MENUS

#:: ; Ajoute un arbre vivant
    MouseClick, Left, 520, 70
    Send 10
    Send {Tab}
    ;Send ^s
return

q:: ; Ajoute un chicot
    MouseClick, Left, 520, 70
    Send 15
    Send {Tab}
    ;Send ^s
return

c:: ; Copie de état et essence
    MouseClick, Left, 560, 70
    Send 01
    ;Send ^s
return

Del:: ; Suprime l'occurence
    MouseClick, Left, 580, 70
return

^Up:: ; Sélectionne l'arbre précédent
    MouseClick, Left, 690, 70
return

^Down:: ; Sélectionne l'arbre suivant
    MouseClick, Left, 710, 70
return

CapsLock:: ; Shift Tab
    Send {Shift Down}
    Send {Tab}
    Send {Shift Up}
return

F2:: ; Les questions oui et non après les remarques
    Suspend, Off
    MouseClick, Left, 600, 150
    Sleep 500
    MouseClick, Left, 250, 400
    Send oui
    Send {Tab}
    Send non
    Send {Tab}
    Send {Tab}
    Send non
    Send {Tab}
    Send {Tab}
    Send oui
    Send ^s
    Sleep 500
    MouseClick, Left, 200, 70
    Suspend, On
return

F5:: ; Sélection automatique des arbres l
    Suspend, Off
    MouseClick, Left, 530, 650
    Sleep 1000
    Send l
    MouseClick, Left, 800, 70
    MouseMove, 530, 580
    Suspend, On
return

F6:: ; Aide gaules
    Suspend, Off
    MouseClick, Left, 50, 545
    MouseMove, 60, 220
    Suspend, On
return