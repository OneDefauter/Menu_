@echo off

rem Define values for SendMessage.exe auxiliary program
rem Antonio Perez Ayala

:------------------------------------------------------:

rem Scroll the vertical scroll bar:
rem https://msdn.microsoft.com/en-us/library/bb787577(v=vs.85).aspx
set /A WM_VSCROLL=277
set /A SB_TOP=6, SB_PAGEUP=2, SB_LINEUP=0, SB_LINEDOWN=1, SB_PAGEDOWN=3, SB_BOTTOM=7, SB_THUMBPOSITION=4
rem Scroll screen one page down:    SendMessage %WM_VSCROLL% %SB_PAGEDOWN%
rem Scroll line N to top of screen: SendMessage %WM_VSCROLL% %SB_THUMBPOSITION% %N%

:------------------------------------------------------:

rem Scroll the horizontal scroll bar:
rem https://msdn.microsoft.com/en-us/library/bb787575(v=vs.85).aspx
set /A WM_HSCROLL=276
set /A SB_LEFT=6, SB_PAGELEFT=2, SB_LINELEFT=0, SB_LINERIGHT=1, SB_PAGERIGHT=3, SB_RIGHT=7, SB_THUMBPOSITION=4
rem Scroll screen one column right:    SendMessage %WM_HSCROLL% %SB_LINERIGHT%
rem Scroll column N to left of screen: SendMessage %WM_HSCROLL% %SB_THUMBPOSITION% %N%

:------------------------------------------------------:

rem Select an item from the System (Window) menu:
rem https://msdn.microsoft.com/en-us/library/windows/desktop/ms646360(v=vs.85).aspx
set /A WM_SYSCOMMAND=0x0112
set /A SC_KEYMENU=0xF100, SC_DEFAULT=0xF160, SC_TASKLIST=0xF130, SC_SCREENSAVE=0xF140, SC_NEXTWINDOW=0xF040, SC_PREVWINDOW=0xF050
set /A SC_MOVE=0xF010, SC_SIZE=0xF000, SC_MINIMIZE=0xF020, SC_MAXIMIZE=0xF030, SC_RESTORE=0xF120, SC_CLOSE=0xF060

rem Open the "F"ile (ASCII 70) popup menu: SendMessage %WM_SYSCOMMAND% %SC_KEYMENU% 70

set /A MF_ENABLED=0, MF_GRAYED=1, MF_DISABLED=2
rem Disable the Close (red "X") menu option: SendMessage %WM_SYSCOMMAND% %MF_DISABLED% %SC_CLOSE%

set /A SC_MONITORPOWER=0xF170, PowerOn=-1, PowerLow=1, PowerOff=2
rem Turn monitor power off: SendMessage %WM_SYSCOMMAND% %SC_MONITORPOWER% %PowerOff%

rem Values for ItemID's in the System (Window) menu of a cmd.exe window:
set /A CMD_Mark=0xFFF2, CMD_Copy=0xFFF0, CMD_Paste=0xFFF1, CMD_SelectAll=0xFFF5, CMD_Scroll=0xFFF3, CMD_Find=0xFFF4
set /A CMD_Defaults=0xFFF8, CMD_Properties=0xFFF7

:------------------------------------------------------:

rem Inject a key in the keyboard input buffer
rem https://msdn.microsoft.com/en-us/library/windows/desktop/ms646276(v=vs.85).aspx
set /A WM_CHAR=0x0102
set /A Ctrl_C=3, BSKey=8, TabKey=9, EnterKey=13, Ctrl_Z=26, EscKey=27, Space=32

:------------------------------------------------------:

rem Select an item from the Topmost menu:
rem https://msdn.microsoft.com/en-us/library/windows/desktop/ms647591(v=vs.85).aspx
set /A WM_COMMAND=0x0111

rem Some values for ItemID's in the Topmost menu of calc.exe (Windows Calculator):
set /A CAL_Standard=0x0131, CAL_Scientific=0x0130, CAL_Programmer=0x0132, CAL_Statistics=0x0133, CAL_GroupDigits=0x012F
set /A CAL_Copy=0x012C, CAL_Paste=0x012D, CAL_HistoryCopy=0x0136, CAL_HistoryClear=0x041A

rem Values for ItemID's in the Topmost menu of Notepad.exe:
set /A NP_New=0x0001, NP_Open=0x0002, NP_Save=0x0003, NP_SaveAs=0x0004, NP_Quit=0x0007
set /A NP_Cut=0x0300, NP_Copy=0x0301, NP_Paste=0x0302, NP_Delete=0x0303
set /A NP_Find=0x0015, NP_FindNext=0x0016, NP_Replace=0x0017, NP_SelectAll=0x0019
