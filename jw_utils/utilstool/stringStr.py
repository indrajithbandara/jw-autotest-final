# coding:utf-8
s = 'hello good boy doiido'
print s.startswith('h')
print s.startswith('hel')
print s.startswith('h',4)
print s.startswith('go',6,8)
print len(s)

d2 = {'spam': 2, 'ham': 1, 'eggs': 3} # make a dictionary
print d2 # order is scrambled
print d2.keys() # create a new list of my keys

#匹配空字符集
print s.startswith('')
#True
#匹配元组
print s.startswith(('t','b','h'))
#True

from string import upper
s1 = "Hello Good Boy Doiido 123456"
print s1.upper()
#HELLO GOOD BOY DOIIDO 123456

s2 = 'hello good boy doiido'
print s2.endswith('o')

print s2.endswith('ido')
True
print s2.endswith('do',4)
True
print s2.endswith('do',4,15)
False

str="hello boy<[www.doiido.com]>byebye"
print str.split("[")[1].split("]")[0]
#www.doiido.com
print str.split("[")[1].split("]")[0].split(".")
#['www', 'doiido', 'com']

def multiply(x):
    return (x*x)
def add(x):
    return (x+x)
funcs = [multiply, add]
for i in range(5):
    value = list(map(lambda x: x(i), funcs))
    print(value)
