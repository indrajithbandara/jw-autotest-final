# coding:utf-8
# 设计模式-模板模式
class Template():
    def __init__(self,name):
        self.name = name

    def TestA(self):
        print "This is Question A"
        print self.TestAResult()
    def TestB(self):
        print "This is Question B"
        print self.TestBResult()
    def TestAResult(self):
        pass
    def TestBResult(self):
        pass
class StudentA(Template):
    def TestAResult(self):
        return "This is "+self.name+u" Result A"
    def TestBResult(self):
        return "This is "+self.name+u" Result B"
class StudentB(Template):
    def TestAResult(self):
        return "This is "+self.name+" Result A"
    def TestBResult(self):
        return "This is "+self.name+u" Result B"

if __name__=="__main__":
    sA = StudentA("Melody")
    sB = StudentB("ToM")
    sA.TestA()
    sB.TestB()