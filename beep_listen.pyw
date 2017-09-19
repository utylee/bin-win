import winsound
import asyncio
from PIL import Image
import os, glob
import subprocess
import datetime

#import pillow

class Handle():
    def __init__(self):
        self.file_flag = 0

    async def handle(self, reader, writer):
        #data = yield from reader.read(100)
        data = await reader.read(100)
        message = data.decode()
        addr = writer.get_extra_info('peername')
        print("Received %r from %r" % (message, addr))

        # message가 coming 이 들어오면 Beep 발생
        if(message == "coming"):
            try:
                # Beep
                for i in range(0, 6):
                    #winsound.Beep(300 + i*100, 60)
                    winsound.Beep(300 , 60)
                    asyncio.sleep(0.1)
            except:
                pass
                #print('Beep failed!')
                
        # motion 이 종료되었을 때 날아오는 메세지 
        elif(message == "ended"):
            # 거래시간인 오전에는 이미지 표시는 pass하도록 합니다
            current_hour = int(datetime.datetime.now().strftime('%H'))
            if (current_hour >= 9) and (current_hour <= 11):
                return

            try:
                # 파일 생성까지 시간이 좀 걸리므로 3초 딜레이를 줘봅니다
                loop.call_later(3, self.show)
            except:
                pass

    # 최신 캡쳐 이미지를 화면에 표시합니다
    def show(self):
        newest = max(glob.iglob(r"u:\21-motion2\2*.jpg"), key = os.path.getctime)
        #print(newest)
        im = Image.open(newest).resize((320, 450), Image.BICUBIC)
        filename = "{}{}.jpg".format(r"c:\Users\utylee\temp", self.file_flag)
        self.file_flag = self.file_flag + 1
        if (self.file_flag > 3): 
            self.file_flag = 0
        #im.save(r"c:\Users\utylee\temp.jpg")
        print(filename)
        im.save(filename)
        #꿀뷰를 직접 지정하여 사용합니다. im.show()를 사용하니 pyw 시작시 cmd창이 떠버립니다
        command = "{} {}".format(r"HoneyView.exe ", filename)
        print(command)
        #subprocess.Popen("{}".format(r"Honeyview.exe ", filename), shell = False )
        subprocess.Popen(command, shell = False )
        #im.show()

h = Handle()
loop = asyncio.get_event_loop()
coro = asyncio.start_server(h.handle, '0.0.0.0', 8899, loop = loop)

server = loop.run_until_complete(coro)

try:
    loop.run_forever()
except KeyboardInterrupt:
    pass

#print('interrupted')
# Close Server
server.close()
loop.run_until_complete(server.wait_closed())
loop.close()

