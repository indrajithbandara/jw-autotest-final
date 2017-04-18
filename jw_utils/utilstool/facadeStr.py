# coding:utf-8
# 设计模式之外观模式
# 股票类
class shares1():
    def __init__(self,name):
        self.name = name
    def sell(self):
        print u"卖出"+self.name
    def buy(self):
        print u"买入"+self.name
class shares2():
    def __init__(self,name):
        self.name = name
    def sell(self):
        print u"卖出"+self.name
    def buy(self):
        print u"买入"+self.name
class shares3():
    def __init__(self,name):
        self.name = name
    def sell(self):
        print u"卖出"+self.name
    def buy(self):
        print u"买入"+self.name
    # 基金类
class fund():
    def __init__(self,name):
        self.name = name
        self.s1 = shares1(u"股票1")
        self.s2 = shares2(u"股票2")
        self.s3 = shares3(u"股票3")
    def sell(self):
        self.s1.sell()
        self.s2.sell()
        self.s3.sell()
    def buy(self):
        self.s1.buy()
        self.s2.buy()
        self.s3.buy()

if __name__=='__main__':
    f = fund("基金1")
    f.sell()
    f.buy()