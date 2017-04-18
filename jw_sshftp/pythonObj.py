#!/usr/bin/env python
#coding:utf-8
class A(object):
    def __init__(self):
        print "enter A"
        print "leave A"

class B(object):
    def __init__(self):
        print "enter B"
        print "leave B"

class C(A):
    def __init__(self):
        print "enter C"
        super(C, self).__init__()
        print "leave C"

class D(A):
    def __init__(self):
        print "enter D"
        super(D, self).__init__()
        print "leave D"
class E(B, C):
    def __init__(self):
        print "enter E"
        B.__init__(self)
        C.__init__(self)
        print "leave E"

class F(E, D):
    def __init__(self):
        print "enter F"
        E.__init__(self)
        D.__init__(self)
        print "leave F"

def multiply(x):
    return (x*x)
def add(x):
    return (x+x)
funcs = [multiply, add]
for i in range(5):
    value = list(map(lambda x: x(i), funcs))
    print(value)

# 使用map
print map( lambda x: x%3, range(6) )  # [0, 1, 2, 0, 1, 2]

#使用列表解析
print [x%3 for x in range(6)]  # [0, 1, 2, 0, 1, 2]

n = 5
print reduce(lambda x, y: x * y, range(1, n + 1))  # 120
m = 2
n = 5
print reduce( lambda x, y: x * y, range( 1, n + 1 ), m )  # 240

#!/usr/bin/python
# -*- coding: UTF-8 -*-

str = 'Hello World!'

print str # 输出完整字符串
print str[0] # 输出字符串中的第一个字符
print str[2:5] # 输出字符串中第三个至第五个之间的字符串
print str[2:] # 输出从第三个字符开始的字符串
print str * 2 # 输出字符串两次
print str + "TEST" # 输出连接的字符串


a = 21
b = 10
c = 0

if ( a == b ):
    print "Line 1 - a is equal to b"
else:
    print "Line 1 - a is not equal to b"

if ( a != b ):
    print "Line 2 - a is not equal to b"
else:
    print "Line 2 - a is equal to b"

if ( a <> b ):
    print "Line 3 - a is not equal to b"
else:
    print "Line 3 - a is equal to b"

if ( a < b ):
    print "Line 4 - a is less than b"
else:
    print "Line 4 - a is not less than b"

if ( a > b ):
    print "Line 5 - a is greater than b"
else:
    print "Line 5 - a is not greater than b"

a = 5;
b = 20;
if ( a <= b ):
    print "Line 6 - a is either less than or equal to b"
else:
    print "Line 6 - a is neither less than nor equal to b"

if ( b >= a ):
    print "Line 7 - b is either greater than or equal to b"
else:
    print "Line 7 - b is neither greater than nor equal to b"
#
# #-*-coding:utf-8-*-
# #1、字典
# dict = {'name': 'Zara', 'age': 7, 'class': 'First'}
# #字典转为字符串，返回：<type 'str'> {'age': 7, 'name': 'Zara', 'class': 'First'}
# print type(str(dict)), str(dict)
# #字典可以转为元组，返回：('age', 'name', 'class')
# print tuple(dict)
# #字典可以转为元组，返回：(7, 'Zara', 'First')
# print tuple(dict.values())
# #字典转为列表，返回：['age', 'name', 'class']
# print list(dict)
# #字典转为列表
# print dict.values
# #2、元组
# tup=(1, 2, 3, 4, 5)
# #元组转为字符串，返回：(1, 2, 3, 4, 5)
# print tup.__str__()
# #元组转为列表，返回：[1, 2, 3, 4, 5]
# print list(tup)
# #元组不可以转为字典
# #3、列表
# nums=[1, 3, 5, 7, 8, 13, 20];
# #列表转为字符串，返回：[1, 3, 5, 7, 8, 13, 20]
# print str(nums)
# #列表转为元组，返回：(1, 3, 5, 7, 8, 13, 20)
# print tuple(nums)
# #列表不可以转为字典
# #4、字符串
# #字符串转为元组，返回：(1, 2, 3)
# print tuple(eval("(1,2,3)"))
# #字符串转为列表，返回：[1, 2, 3]
# print list(eval("(1,2,3)"))
# #字符串转为字典，返回：<type 'dict'>
# print type(eval("{'name':'ljq', 'age':24}"))

#字典的添加、删除、修改操作
dict = {"a" : "apple", "b" : "banana", "g" : "grape", "o" : "orange"}
dict["w"] = "watermelon"
del(dict["a"])
dict["g"] = "grapefruit"
print dict.pop("b")
print dict
dict.clear()
print dict
#字典的遍历
dict = {"a" : "apple", "b" : "banana", "g" : "grape", "o" : "orange"}
for k in dict:
    print "dict[%s] =" % k,dict[k]
#字典items()的使用
dict = {"a" : "apple", "b" : "banana", "c" : "grape", "d" : "orange"}
#每个元素是一个key和value组成的元组，以列表的方式输出
print dict.items()
#调用items()实现字典的遍历
dict = {"a" : "apple", "b" : "banana", "g" : "grape", "o" : "orange"}
for (k, v) in dict.items():
    print "dict[%s] =" % k, v
#调用iteritems()实现字典的遍历
dict = {"a" : "apple", "b" : "banana", "c" : "grape", "d" : "orange"}
print dict.iteritems()
for k, v in dict.iteritems():
    print "dict[%s] =" % k, v
for (k, v) in zip(dict.iterkeys(), dict.itervalues()):
    print "dict[%s] =" % k, v

#使用列表、字典作为字典的值
dict = {"a" : ("apple",), "bo" : {"b" : "banana", "o" : "orange"}, "g" : ["grape","grapefruit"]}
print dict["a"]
print dict["a"][0]
print dict["bo"]
print dict["bo"]["o"]
print dict["g"]
print dict["g"][1]

dict = {"a" : "apple", "b" : "banana", "c" : "grape", "d" : "orange"}
#输出key的列表
print dict.keys()
#输出value的列表
print dict.values()
#每个元素是一个key和value组成的元组，以列表的方式输出
print dict.items()
dict = {"a" : "apple", "b" : "banana", "c" : "grape", "d" : "orange"}
it = dict.iteritems()
print it
#字典中元素的获取方法
dict = {"a" : "apple", "b" : "banana", "c" : "grape", "d" : "orange"}
print dict
print dict.get("c", "apple")
print dict.get("e", "apple")
#get()的等价语句
D = {"key1" : "value1", "key2" : "value2"}
if "key1" in D:
    print D["key1"]
else:
    print "None"
#字典的更新
dict = {"a" : "apple", "b" : "banana"}
print dict
dict2 = {"c" : "grape", "d" : "orange"}
dict.update(dict2)
print dict
#udpate()的等价语句
D = {"key1" : "value1", "key2" : "value2"}
E = {"key3" : "value3", "key4" : "value4"}
for k in E:
    D[k] = E[k]
print D
#字典E中含有字典D中的key
D = {"key1" : "value1", "key2" : "value2"}
E = {"key2" : "value3", "key4" : "value4"}
for k in E:
    D[k] = E[k]
print D
#设置默认值
dict = {}
dict.setdefault("a")
print dict
dict["a"] = "apple"
dict.setdefault("a","default")
print dict
#调用sorted()排序
dict = {"a" : "apple", "b" : "grape", "c" : "orange", "d" : "banana"}
print dict
#按照key排序
print sorted(dict.items(), key=lambda d: d[0])
#按照value排序
print sorted(dict.items(), key=lambda d: d[1])
#字典的浅拷贝
dict = {"a" : "apple", "b" : "grape"}
dict2 = {"c" : "orange", "d" : "banana"}
dict2 = dict.copy()
print dict2

#字典的深拷贝
import copy
dict = {"a" : "apple", "b" : {"g" : "grape","o" : "orange"}}
dict2 = copy.deepcopy(dict)
dict3 = copy.copy(dict)
dict2["b"]["g"] = "orange"
print dict
dict3["b"]["g"] = "orange"
print dict


# -*- encoding: UTF-8 -*-
class Student:
    name = ''
    age = 0
    def __init__(self, name, age):
        self.name = name
        self.age = age
def convert_to_dict(obj):
    '''把Object对象转换成Dict对象'''
    dict = {}
    dict.update(obj.__dict__)
    return dict
def convert_to_dicts(objs):
    '''把对象列表转换为字典列表'''
    obj_arr = []
    for o in objs:
        #把Object对象转换成Dict对象
        dict = {}
        dict.update(o.__dict__)
        obj_arr.append(dict)
    return obj_arr
def class_to_dict(obj):
    '''把对象(支持单个对象、list、set)转换成字典'''
    is_list = obj.__class__ == [].__class__
    is_set = obj.__class__ == set().__class__
    if is_list or is_set:
        obj_arr = []
        for o in obj:
            #把Object对象转换成Dict对象
            dict = {}
            dict.update(o.__dict__)
            obj_arr.append(dict)
        return obj_arr
    else:
        dict = {}
        dict.update(obj.__dict__)
        return dict
stu = Student('zhangsan', 20)
print '-----------'
print convert_to_dict(stu)
print '-----------'
print convert_to_dicts([stu, stu])
print '-----------'
print class_to_dict(stu)
print '-----------'
print class_to_dict([stu, stu])
stua = Student('zhangsan', 20)
stub = Student('lisi', 10)
stu_set = set()
stu_set.add(stua)
stu_set.add(stub)
print class_to_dict(stu_set)

info = 'abca'
print info.find('a')##从下标0开始，查找在字符串里第一个出现的子串，返回结果：0
info = 'abca'
print info.find('a',1)##从下标1开始，查找在字符串里第一个出现的子串：返回结果3
info = 'abca'
print info.find('333')##返回-1,查找不到返回-1

info = 'abca'
print info.index('a')
#print info.index('33')


#!/usr/bin/python
tup1 = ('physics', 'chemistry', 1997, 2000);
tup2 = (1, 2, 3, 4, 5, 6, 7 );
print "tup1[0]: ", tup1[0]
print "tup2[1:5]: ", tup2[1:5]
#以上实例输出结果：
#tup1[0]:  physics
#tup2[1:5]:  [2, 3, 4, 5]

#!/usr/bin/python
tup1 = (12, 34.56);
tup2 = ('abc', 'xyz');
# 以下修改元组元素操作是非法的。
# tup1[0] = 100;
# 创建一个新的元组
tup3 = tup1 + tup2;
print tup3;
#以上实例输出结果：
#(12, 34.56, 'abc', 'xyz')

#!/usr/bin/python
tup = ('physics', 'chemistry', 1997, 2000);
print tup;
del tup;
print "After deleting tup : "
print tup;




import urllib
import urllib2
import re

page = 1
url = 'http://www.qiushibaike.com/hot/page/' + str(page)
user_agent = 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'
headers = { 'User-Agent' : user_agent }
try:
    request = urllib2.Request(url,headers = headers)
    response = urllib2.urlopen(request)
    content = response.read().decode('utf-8')
    pattern = re.compile('<div.*?author">.*?<a.*?<img.*?>(.*?)</a>.*?<div.*?'+
                         'content">(.*?)<!--(.*?)-->.*?</div>(.*?)<div class="stats.*?class="number">(.*?)</i>',re.S)
    items = re.findall(pattern,content)
    for item in items:
        haveImg = re.search("img",item[3])
        if not haveImg:
            print item[0],item[1],item[2],item[4]
except urllib2.URLError, e:
    if hasattr(e,"code"):
        print e.code
    if hasattr(e,"reason"):
        print e.reason

