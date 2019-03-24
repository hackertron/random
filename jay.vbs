 Dim msg, sapi
msg=InputBox("Enter your text","JAY VOICEBOX")
Set sapi=CreateObject("sapi.spvoice")
sapi.Speak msg
'+-> Hack the Universe <-+