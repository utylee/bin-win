import os
import time
import shutil
import time

#path = 'f:\\down\\'
#path = 'D:/D_Down/'
# path = 'E:/Down/'
# path = 'C:/Users/utylee/Videos/World Of Warcraft'

# 복사 버퍼 크기인데 0.5초 단위의 속도를 의미합니다. 현재 초당 5메가로 
#캡쳐과 되고 있기에 그걸 감안해서 설정합니다
cur_length = 16 * 1024 * 100     # 16K * 100 = 1.6M /sec => 초당 3.2M 입니다

path = '/mnt/c/Users/utylee/Videos/World Of Warcraft/'
# path = '/mnt/c/Users/utylee/Videos/Desktop/'

#path = 'E:\\Down\\'
#target = 'w:\\99-data\\91-transmission-watch\\'
#target = 'v:/99-data/91-transmission-watch'
#target_media = 'v:/00-MediaWorld'
#target = 'u:/3002/99-data/91-transmission-watch'

#target = 'u:/4001/99-data/91-transmission-watch'
#target = r'\\192.168.0.201\clark\4001\99-data\91-transmission-watch'
# target = r'\\192.168.1.205\clark\4001\99-data\91-transmission-watch'
# target = r'\\192.168.1.202\clark\4002\00-MediaWorld-4002'
# target = '/mnt/clark/4002/00-MediaWorld-4002'
target = '/mnt/clark/4002/00-MediaWorld-4002/97-Capture'
backup_target = r'E:/magnets/'

#target_media = 'u:/3002/00-MediaWorld'
#target_media = 'u:/4002/00-MediaWorld-4002'
#target_media = r'\\192.168.0.201\clark\4002\00-MediaWorld-4002'
# target_media = r'\\192.168.1.205\clark\4002\00-MediaWorld-4002'
target_media = r'\\192.168.1.202\clark\4002\00-MediaWorld-4002'


before = dict([(f, None) for f in os.listdir(path)])

while 1:
    # 5초 주기입니다
    time.sleep(5)
    after = dict([(f, None) for f in os.listdir(path)])
    added = [f for f in after if not f in before]
    removed = [f for f in before if not f in after]
    if added:
        # if added:
        for i in added:
            # 5초 후 전송을 시작합니다
            time.sleep(5)
            # 파일이 여러개가 동시에 추가될 경우 파일 한개 밖에 처리하지 못하던 문제 수정
            # if added[0][-7:] == 'torrent' :
            # if i[-7:] == 'torrent':
            if i[-3:] == 'mp4':
                print(i)
                print(target)
                #a = path + "".join(added)
                a = path + "".join(i)

                src = open(a, 'rb')
                dst = open(f'{target}/{i}' , 'wb')

                # def _copyfileobj_patched(fsrc, fdst, length=16*1024):
                # def _copyfileobj_patched(fsrc, fdst, length=16 * 1024 * 20):
                def _copyfileobj_patched(fsrc, fdst, length=cur_length):
                    """Patches shutil copyfileobj method to hugely improve copy speed"""
                    print('copyfileobj')
                    while 1:
                        buf = fsrc.read(length)
                        if not buf:
                            break
                        fdst.write(buf)
                        time.sleep(0.5)
                shutil.copyfileobj = _copyfileobj_patched
                try:
                    print(a)
                    # shutil.copy(a, target)
                    # shutil.copyfile(a, target)
                    _copyfileobj_patched(src, dst)
                except:
                    print('exception')
                    continue
                # 복사완료후 원래 파일을 삭제합니다
                os.remove(a)
                # 삭제가 아닌 확장자 변경으로 테스트해봅니다
                # renamed = a + '.added'
                # os.rename(a, renamed)

                # 백업 폴더에 torrent 파일을 옮깁니다
                # shutil.copy(renamed,  backup_target)
                # os.remove(renamed)

            # elif added[0][-3:] == 'smi' :
            elif i[-3:] == 'smi' or i[-3:] == 'srt':
                # print(i)
                #a = path + "".join(added)
                a = path + "".join(i)
                try:
                    shutil.copy(a, target_media)
                except:
                    continue
                time.sleep(1)
                # smi 파일은 복사후 삭제하지는 않기로..
                # os.remove(a)

    before = after
