import os, time, shutil

#path = 'f:\\down\\'
#path = 'D:/D_Down/'
path = 'E:/Down/'
#target = 'w:\\99-data\\91-transmission-watch\\'
target = 'w:/99-data/91-transmission-watch'
target_media = 'w:/00-MediaWorld'


before = dict([(f, None) for f in os.listdir(path)])

while 1:
	time.sleep(1)
	after = dict([(f, None) for f in os.listdir(path)])
	added = [f for f in after if not f in before]
	removed = [f for f in before if not f in after]
	if added:
		if added[0][-7:] == 'torrent' : 
			a = path + "".join(added) 
			try:
				shutil.copy(a, target)
			except:
				continue
			time.sleep(1)
			os.remove(a)

		elif added[0][-3:] == 'smi' :
			a = path + "".join(added) 
			try:
				shutil.copy(a, target_media)
			except:
				continue
			time.sleep(1)
			#smi 파일은 복사후 삭제하지는 않기로..
			#os.remove(a)
	
	before = after

