#coding:utf-8
'''
Author : cui.jun@devopslabs.com
'''
from test001_romanumtest import getRomanNum

Romanarray=['I','V','X','L','C','D','M']

word_dic = {}#���ֵ�����Ӧ���ʺ���������
coin_dic = {}#���ֵ�����Ӧ���Һͼ�ֵ

def test001_str_resolve(input_line):

    if input_line[-1] in Romanarray:
        input_line_array = input_line.split(' ')#�Կո��ȡ
        word_dic[input_line_array[0]] = input_line_array[2]#ȡ��һ�������һ��Ԫ��
        return
    #print 'word_dic:',word_dic:

    elif input_line[-1] == 's':#��Сд����Ϊ���������Щ�������ݵ�ʶ�����
        input_line_array = input_line.split(' ')#�Կո��ȡ

        temp_str = ''
        for i in range(len(input_line_array)-4):
            temp_str += word_dic[input_line_array[i]]

        temp_num =  getRomanNum(temp_str)
        #print "input_line_array[-4]",input_line_array[-4]
        coin_dic[input_line_array[-4]] = int(input_line_array[-2])/int(temp_num)
        return
    #print 'coin_dic:',coin_dic

    elif input_line[-1] == '?': #��?Ϊ��־,�ж��Ƿ��ǵ�����������
        input_line_array = input_line.split(' ')
        #print "input_line_array:",input_line_array

        if input_line_array[1] == 'much':
            temp_str1 = ''
            temp_str3 = ''
            for i in range(3,len(input_line_array)-1):#��ȡ���ĸ������һ������Ԫ��
                temp_str3 += input_line_array[i]+' '
                temp_str1 += word_dic[input_line_array[i]]

            return temp_str3+"is "+str(getRomanNum(temp_str1))#ת�������ֲ������


        elif input_line_array[1] == 'many':#��������
            temp_str2 = ''
            temp_str4 = ''
            for i in range(4,len(input_line_array)-2):#ȡ�ڣ���������������֮��
                temp_str4 += input_line_array[i]+' '
                temp_str2 += word_dic[input_line_array[i]]#ת��Ϊ�ַ����У�����ѯ

            return temp_str4+input_line_array[-2]+' is '+ str(coin_dic[input_line_array[-2]]*getRomanNum(temp_str2) )+ ' Credits'
        
        
