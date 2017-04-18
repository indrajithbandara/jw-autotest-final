#coding:utf-8
'''
Author : cui.jun@devopslabs.com
'''
import re
 
def getRomanNum(RomanStr):

    if re.search('^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$',RomanStr)!=None:
        NumDic = {"pattern":"","retNum":0}#ֵ��¼��
        # �������Ϊ XCVI �����retNum 96 pattern ^M{0}C{0}XCX{0}VI{1} չʾ��������
        RomanPattern = {
            "0":('','','','M'),             #          1000
            "1":('CM','CD','D','C',100), #900 400 500 100
            "2":('XC','XL','L','X',10), #90 40 50 10
            "3":('IX','IV','V','I',1)#9 4 5 1
            }
        i = 3
        NumItems = sorted(RomanPattern.items())#���ֵ������򷵻�Ԫ��
 
        for RomanItem in NumItems:
            if RomanItem[0] != '0':#��ͳ��ǧ�ڵ�
                patstr = NumDic["pattern"].join(['',RomanItem[1][0]])
                #print "R "+RomanItem[1][0]
                if re.search(patstr,RomanStr) != None:#���ж�Romanstr���Ƿ����parstr
                    NumDic["retNum"] += 9*RomanItem[1][4] # +=90
                    NumDic["pattern"] = patstr #���������Ϣ
                else:
                    patstr = NumDic["pattern"].join(['',RomanItem[1][1]])
                    #print patstr
                    if re.search(patstr,RomanStr) != None:
                        NumDic["retNum"] += 4*RomanItem[1][4] #+=40
                        NumDic["pattern"] = patstr
                    else:
                        patstr = NumDic["pattern"].join(['',RomanItem[1][2]])
                        if re.search(patstr,RomanStr) != None:
                            NumDic["retNum"] += 5*RomanItem[1][4] # += 50
                            NumDic["pattern"] = patstr
            # test
            #print "retNum " + str(NumDic["retNum"]) ,
            #print "pattern " +NumDic["pattern"]
 
            if NumDic["pattern"] == '':
                NumDic["pattern"] = '^'#��־
            tempstr = ''
            sum = 0
            for k in range(0,4):#�����������ּ���
                pstr = RomanItem[1][3].join(['','{']).join(['',str(k)]).join(['','}'])
                patstr = NumDic["pattern"].join(['',pstr])
                if re.search(patstr,RomanStr) != None:
                    sum = k*(10**i)
                    tempstr = patstr
            if tempstr <> '':#�����ڼ�����Ϊԭʼֵ
                NumDic["pattern"] = tempstr
            else:
                NumDic["pattern"] = patstr
            NumDic['retNum'] += sum
            i -= 1
 
        return NumDic['retNum']
        #return NumDic['pattern']
    else:
        print 'String is not a valid Roman numerals'
 
print getRomanNum('MXCVI')
 

# 
# 
# 
# #coding:utf-8
# from Roma_to_num_test import getRomanNum
#  
# Romanarray=['I','V','X','L','C','D','M']
#  
# word_dic = {}#���ֵ�����Ӧ���ʺ���������
# coin_dic = {}#���ֵ�����Ӧ���Һͼ�ֵ
#  
# def str_Resolve(input_line):
#     '''
#     ����ÿһ�е��ַ���������Ϣ:����Ŀ�еĲ�������.���ط������������Ϣ.
#  
#     �������˵��:
#     �ṹ������,����ĩβ�ַ��Ƿ���Romanarray��,�ж��Ƿ��ǵ�һ�ඨ�嵥������
#     �����ж��Ƿ���Сдs����,�ж��Ƿ�����Ϊ�ڶ�����������������
#     �����ж�ĩβ�Ƿ���?��Ϊ����������.���а��տո񻮷�֮���жϵڶ�������
#     ����many��mach���зֱ𷵻ش���
#     '''
#     if input_line[-1] in Romanarray:
#         input_line_array = input_line.split(' ')#�Կո��ȡ
#         word_dic[input_line_array[0]] = input_line_array[2]#ȡ��һ�������һ��Ԫ��
#         return
#     #print 'word_dic:',word_dic:
#  
#     elif input_line[-1] == 's':#��Сд����Ϊ���������Щ�������ݵ�ʶ�����
#         input_line_array = input_line.split(' ')#�Կո��ȡ
#  
#         temp_str = ''
#         for i in range(len(input_line_array)-4):
#             temp_str += word_dic[input_line_array[i]]
#  
#         temp_num =  getRomanNum(temp_str)
#         #print "input_line_array[-4]",input_line_array[-4]
#         coin_dic[input_line_array[-4]] = int(input_line_array[-2])/int(temp_num)
#         return
#     #print 'coin_dic:',coin_dic
#  
#     elif input_line[-1] == '?': #��?Ϊ��־,�ж��Ƿ��ǵ�����������
#         input_line_array = input_line.split(' ')
#         #print "input_line_array:",input_line_array
#  
#         if input_line_array[1] == 'much':
#             temp_str1 = ''
#             temp_str3 = ''
#             for i in range(3,len(input_line_array)-1):#��ȡ���ĸ������һ������Ԫ��
#                 temp_str3 += input_line_array[i]+' '
#                 temp_str1 += word_dic[input_line_array[i]]
#  
#             return temp_str3+"is "+str(getRomanNum(temp_str1))#ת�������ֲ������
#  
#  
#         elif input_line_array[1] == 'many':#��������
#             temp_str2 = ''
#             temp_str4 = ''
#             for i in range(4,len(input_line_array)-2):#ȡ�ڣ���������������֮��
#                 temp_str4 += input_line_array[i]+' '
#                 temp_str2 += word_dic[input_line_array[i]]#ת��Ϊ�ַ����У�����ѯ
#  
#             return temp_str4+input_line_array[-2]+' is '+ str(coin_dic[input_line_array[-2]]*getRomanNum(temp_str2) )+ ' Credits'#�����������λ��ֵ


# #coding:utf-8
# from str_Resolve import *
# import fileinput
# '''
# ����/ʹ��˵��:
# �뽫�µĲ�������,ʹ���ı�����ʽ�����test-data�ļ�����,ͬʱ�޸��ļ���ȡ��·��
# '''
# 
# for line in fileinput.input("../test-data/input_2.txt"):
#     str_line=line[:-1]#ȥ���н�β�Ļ��з���,δ֪Ϊ�λ���һ������ ,���ݻ�����ͬ�����в��
#     #print str_line
#     try:
#         str_return = str_Resolve(str_line)
#         if str_return:
#             print str_return
#     except:
#         print "I have no idea what you are talking about"

 


