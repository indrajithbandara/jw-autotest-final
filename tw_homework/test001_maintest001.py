#coding:utf-8
'''
Author : cui.jun@devopslabs.com
'''
from test001_str_resolve import *
import fileinput


for line in fileinput.input("D:\\ecliworkspace\\jw-source-pmscode\\jw-autotest\\tw_homework\\test001input.txt"):
    str_line=line[:-1]#ȥ���н�β�Ļ��з���,δ֪Ϊ�λ���һ������ ,���ݻ�����ͬ�����в��
    #print str_line
    try:
        str_return = test001_str_resolve(str_line)
        if str_return:
            print str_return
    except:
        print "I have no idea what you are talking about"