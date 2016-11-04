#coding=utf-8
#Python os模块包含普遍的操作系统功能。如果你希望你的程序能够与平台无关的话，这个模块是尤为重要的
#代码基于Python3 

import os
import shutil
import send2trash
#改变工作目录，如果不改变，默认为文件.py文件所在目录
os.chair('C:\Users\zhongfang\Desktop\QGIS 2.18')
#显示当前目录下所有文件
os.listdir('.')
#创建新的文件夹可以是单层也可以是多层
os.makedirs(r'C:\Users\zhongfang\Desktop\QGIS 2.18\new')
#列出当前工作目录
os.getcwd()
#在当前目录下删除文件，看清楚了，不是删除文件夹
os.unlink('1.txt')
os.remove('1.txt')
#删除目录为空的文件夹,首先import shutil
os.rmdir(r'F:\QGIS 2.18\new\new1\new2')
#删除目录不为空的文件夹
shutil.rmtree(r'F:\QGIS 2.18\new')
#以上删除方式不安全，直接把文件删除，没有放回到回收站，如果想把删除的文件放回到回收站
#则需要首先安装 send2trash模块
#pip3 install send2trash
#import send2trash 既可以删除文件也可以删除文件夹
send2trash.send2trash(r'F:\QGIS 2.18\new\new1')
