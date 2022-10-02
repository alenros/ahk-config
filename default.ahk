!Left::Media_Prev
!Right::Media_Next
!WheelDown::Volume_Down
!WheelUp::Volume_Up
!MButton::Volume_Mute
!p::Media_Play_Pause
!/::Send ¿
!;::SEND ¯\_(ツ)_/¯
!-::SEND 👎
!=::SEND 👍
+!-::SEND ❌
+!=::SEND ✅
+^w:: ; SHIFT+CTRL+W converts text to capitalized
  originalCB := ClipboardAll  ; save clipboard contents
  Clipboard := ""
  SendInput, ^c ;copies selected text
  ClipWait
  StringUpper Clipboard, Clipboard, T ; Title mode conversion
  SendInput %Clipboard%
  ClipBoard := originalCB 
Return

+^":: ; SHIFT+CTRL+" surrounds text with quotes
  originalCB := ClipboardAll  ; save clipboard contents
  Clipboard := ""
  SendInput, ^c ;copies selected text
  ClipWait
  quotedText= "%Clipboard%"
  SendInput %quotedText%
  ClipBoard := originalCB 
Return

