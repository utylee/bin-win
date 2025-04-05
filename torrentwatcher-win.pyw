import os
import time
import shutil

INTV = 5         # 주기를 1초에서 5초로 변경합니다
#path = 'f:\\down\\'
#path = 'D:/D_Down/'
# path = 'I:/Down/'
path = 'G:/Down/'
#path = 'E:\\Down\\'
#target = 'w:\\99-data\\91-transmission-watch\\'
#target = 'v:/99-data/91-transmission-watch'
#target_media = 'v:/00-MediaWorld'
#target = 'u:/3002/99-data/91-transmission-watch'

#target = 'u:/4001/99-data/91-transmission-watch'
#target = r'\\192.168.0.201\clark\4001\99-data\91-transmission-watch'
# target = r'\\192.168.1.205\clark\4001\99-data\91-transmission-watch'
# target = r'\\192.168.1.202\clark\4001\99-data\91-transmission-watch'
target = r'\\192.168.1.202\8001\99-data\91-transmission-watch'
backup_target = r'I:/magnets/'

#target_media = 'u:/3002/00-MediaWorld'
#target_media = 'u:/4002/00-MediaWorld-4002'
#target_media = r'\\192.168.0.201\clark\4002\00-MediaWorld-4002'
# target_media = r'\\192.168.1.205\clark\4002\00-MediaWorld-4002'
# target_media = r'\\192.168.1.202\clark\4002\00-MediaWorld-4002'
target_media = r'\\192.168.1.202\8001'


before = dict([(f, None) for f in os.listdir(path)])

while 1:
    time.sleep(INTV)
    after = dict([(f, None) for f in os.listdir(path)])
    added = [f for f in after if not f in before]
    removed = [f for f in before if not f in after]
    if added:
        # if added:
        for i in added:
            # 파일이 여러개가 동시에 추가될 경우 파일 한개 밖에 처리하지 못하던 문제 수정
            # if added[0][-7:] == 'torrent' :
            if i[-7:] == 'torrent':
                # print(i)
                #a = path + "".join(added)
                a = path + "".join(i)
                
                # 사이즈가 0일 경우 복사를 하지 않고 다음 주기로 그냥 넘깁니다
                if os.stat(a).st_size == 0:
                    # 그냥 넘기기 전에 리스트에서 항목을 제거합니다. 다음에 다시 추가되도록
                    del after[i]
                    before = after
                    continue

                try:
                    shutil.copy(a, target)
                except:
                    continue
                time.sleep(1)
                # os.remove(a)
                # 삭제가 아닌 확장자 변경으로 테스트해봅니다
                renamed = a + '.added'
                os.rename(a, renamed)
                # os.rename(a, a + '.added')

                # 백업 폴더에 torrent 파일을 옮깁니다
                shutil.copy(renamed,  backup_target)
                os.remove(renamed)

            # elif added[0][-3:] == 'smi' :
            elif i[-3:] == 'smi' or i[-3:] == 'srt':
                # print(i)
                #a = path + "".join(added)
                a = path + "".join(i)

                # 사이즈가 0일 경우 복사를 하지 않고 다음 주기로 그냥 넘깁니다
                if os.stat(a).st_size == 0:
                    continue

                try:
                    shutil.copy(a, target_media)
                except:
                    continue
                time.sleep(1)
                # smi 파일은 복사후 삭제하지는 않기로..
                # os.remove(a)

    before = after
