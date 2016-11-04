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
#显示所使用的系统
os.name
#重命名文件或文件夹
os.rename(r'F:\QGIS 2.18\new',r'F:\QGIS 2.18\new23')
#把一个文件拷到另一个文件夹下
shutil.copy('C:\\spam.txt', 'C:\\delicious')
把一个文件拷到另一个文件夹下并重新命名
shutil.copy('eggs.txt', 'C:\\delicious\\eggs2.txt')
#把文件夹内容拷贝到一个新目录下，该目录必须是新建
shutil.copytree(r'F:\QGIS 2.18\I04-2015-000015',r'F:\QGIS 2.18\new1')
#把文件及文件夹移动到新的目录下
shutil.move(r'F:\QGIS 2.18\I04-2015-000015',r'F:\QGIS 2.18\new')
#文件或文件夹改名
os.rename(r'F:\QGIS 2.18\new',r'F:\QGIS 2.18\new23')
#对多层文件及文件夹改名
os.renames(r'F:\QGIS 2.18\new2\I04-2015-000015',r'F:\QGIS\newname\123')
#分别取得目录及文件
a=os.path.split(r'F:\QGIS 2.18\QGIS1\newname\123\1.tif')
#判断是目录还是文件
os.path.isdir(),os.path.isfile()
#os.path.exists()函数用来检验给出的路径是否真地存在
os.path.exists(r'F:\QGIS 2.18\QGIS1\newname\1234')
#获得绝对路径
os.path.abspath()
#连接目录与文件名或目录
os.path.join(r'F:\QGIS 2.18\QGIS1\newname\123','1.tif')
#返回文件名或目录此文件可以是不存在的（最后没有文件，则返回文件夹名称）
os.path.basename(r'F:\QGIS 2.18\QGIS1\newname\123\1.tifds')
#返回文件路径
os.path.dirname(r'F:\QGIS 2.18\QGIS1\newname\123\1.tifds')
#获得文件大小



