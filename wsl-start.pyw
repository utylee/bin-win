import subprocess
import os

params = dict()

#command1 = 'bash.exe -c "tmux;cd;bash"'
command2 = 'bash.exe -c "echo sksmsqnwk11 | sudo -S service ssh --full-restart;bash"'
command3 = 'bash.exe -c "echo sksmsqnwk11 | sudo -S service mysql start;bash"'

# 새로운 RS3 리눅스까지 포함시키려니 많아져서 리스트로 관리하기로..
commands = [ command2,
            command3,]
            #'C:/Users/utylee/AppData/Local/wsltty/Ubuntu~.bat']

if os.name == "nt":
    startinfo = subprocess.STARTUPINFO()
    #starinfo.dwFlags |= subprocess.CREATE_NO_WINDOW
    #startinfo.dwFlags |= 0x08000000
    params['startupinfo'] = startinfo
    params['creationflags'] = 0x08000000
    
    print(os.name)
    print(startinfo.dwFlags)
    print(params)

    '''
    #proc = subprocess.Popen(command1, **params)
    proc = subprocess.Popen(command2, **params)
    proc = subprocess.Popen(command3, **params)
    #proc = subprocess.Popen(command)
    '''

    for c in commands:
        proc = subprocess.Popen(c, **params)
       
