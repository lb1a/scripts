#!/usr/bin/python

import os, glob

def process():
  cmd = 'mogrify -format jpg *.tif'
  os.system(cmd)

  for f in glob.glob('*.jpg'):
   cmd2 = 'mogrify -size 300x300 %s' % f
   os.system(cmd2)

  cmd3 = 'mogrify -path thumbnail -thumbnail 100x100 *.jpg'
  os.system(cmd3)

if __name__ == '__main__':
  process()

