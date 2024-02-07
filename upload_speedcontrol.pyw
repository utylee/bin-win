import asyncio
# from ahk import AHK
import win32gui
import win32process
import psutil
import time
import aiohttp


SLEEP = 8 
URL_LOWSPEED = "http://localhost:8007/low"
URL_HIGHSPEED = "http://localhost:8007/high"

EXES = [ 'discovery.exe', 'overwatch.exe', 'HeroesOfTheStorm_x64.exe' \
            ,'r5apex.exe', 'cs2.exe']


def check_foreground_windows(exes):
    ret = 0
    try:
        hwnd = win32gui.GetForegroundWindow()
        # print(win32gui.GetForegroundWindow())
        threadid, procid = win32process.GetWindowThreadProcessId(hwnd)
        process = psutil.Process(procid)
        proc_name = process.name()
        # print(proc_name)

        for exe in exes:
            if proc_name.strip().lower() == exe.lower():
                ret = 1             # 하나라도 발견되면 그냥 리턴합니다
                break

    except Exception as e:
        print(f'exception {e}')
    return ret


def check_proc_by_exe(exe):
    ret = 0
    win_list = []

    def winEnumHandler(hwnd, ret):
        if win32gui.IsWindowVisible(hwnd):
            thread_id, process_id = win32process.GetWindowThreadProcessId(hwnd)
            # Get the process name and executable path
            process = psutil.Process(process_id)
            process_name = process.name()
            # process_path = process.exe()
            # print(process_name)

            if process_name.strip().lower() == exe.lower():
                # print(process_name)
                win_list.append(process_name)

    win32gui.EnumWindows(winEnumHandler, None)

    if len(win_list) > 0:
        ret = 1
    return ret


async def main():
    # exe = 'vlc.exe'
    # exe = 'discovery.exe'
    before_url = URL_HIGHSPEED
    while True:
        # print(check_proc_by_exe(exe))
        # print(check_foreground_windows(exe))

        url = URL_LOWSPEED if check_foreground_windows(EXES) else URL_HIGHSPEED
        if url != before_url:
            before_url = url
            async with aiohttp.ClientSession() as sess:
                await sess.get(url)
        # if check_proc_by_exe(exe) == 1:
        #     print(f'found {exe} !!')
        # else:
        #     print('not found')

        time.sleep(SLEEP)


asyncio.run(main())
