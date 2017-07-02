import winsound
import asyncio

async def handle(reader, writer):
    #data = yield from reader.read(100)
    data = await reader.read(100)
    message = data.decode()
    addr = writer.get_extra_info('peername')
    print("Received %r from %r" % (message, addr))

    # message가 moving 이 들어오면 lcd전원을 켜는 쉘을 실행합니다
    if(message == "coming"):
        #rmessage = "accepted:moving"
        try:
            # Beep
            for i in range(0, 3):
                winsound.Beep(300 + i*100, 120)
                asyncio.sleep(0.1)
            print('ㅋㅋㅋ')
        except:
            print('Beep failed!')


loop = asyncio.get_event_loop()
coro = asyncio.start_server(handle, '0.0.0.0', 8899, loop = loop)

server = loop.run_until_complete(coro)

try:
    loop.run_forever()
except KeyboardInterrupt:
    pass

print('interrupted')
# Close Server
server.close()
loop.run_until_complete(server.wait_closed())
loop.close()

