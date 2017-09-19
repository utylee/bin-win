; EnumDisplayDevices(Index [, ByRef Name, ByRef StateFlags ] )
;
; ... removed "documentation"
;
;/* Example 2:
    Loop {
		;MsgBox %A_Index%
        if ! EnumDisplayDevices(A_Index, DeviceName, StateFlags)
            break
        if (StateFlags & 4)
            text .= DeviceName " is the primary display device.`n"
        else if (StateFlags & 1)
            text .= "The desktop extends onto " DeviceName ".`n"
        if (StateFlags & 8)
            text .= DeviceName " is a pseudo-device.`n"
    }
	MsgBox, u"데헷"
    MsgBox %text%
;*/
EnumDisplayDevices(Index, ByRef DeviceName, ByRef StateFlags="", ByRef DeviceKey="")
{
    ; DISPLAY_DEVICE DisplayDevice
    VarSetCapacity(DisplayDevice, 424)
    ; lpDisplayDevice.cb := sizeof(DISPLAY_DEVICE)
    NumPut(424, DisplayDevice, 0)
    
    VarSetCapacity(DeviceName, 32, 0)
    VarSetCapacity(DeviceKey, 128, 0)
    ; For consistency, clear StateFlags in case of failure.
    StateFlags = 0
    
    if ! DllCall("EnumDisplayDevices"
        , "UInt", 0
        , "UInt", Index-1
        , "UInt", &DisplayDevice
        , "UInt", 0)
	{	
		MsgBox, false!
        return false
	}
    
    StateFlags := NumGet(DisplayDevice, 164)
    DllCall("lstrcpynA", "Str", DeviceName, "UInt", &DisplayDevice+4,   "int", 32)
    DllCall("lstrcpynA", "Str", DeviceKey,  "UInt", &DisplayDevice+296, "int", 128)
    if (SubStr(DeviceKey,1,18)="\Registry\Machine")
        DeviceKey := SubStr(DeviceKey,19)
    return true
}
