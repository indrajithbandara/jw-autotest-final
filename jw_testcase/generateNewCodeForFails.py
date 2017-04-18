# -*- coding: utf-8 -*-
# encoding:utf-8
'''
Copyright 2016 JointWisdom Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
'''

import os
import sys
sys.path.append("../")
sys.path.append("../jw_utils")
sys.path.append("../jw_base")
from string import Template
from jw_utils import connection_db

#this is http get method for interface testing
def httpGetMethod(infcls,rvflg,inter_name,testcase_name,result_input,result_output,result_assert,inter_url,interip,interport):
    code = Template('''
#!/usr/bin/env python
# -*- coding: utf-8 -*-
# encoding:utf-8
import time,os,sys,datetime,unittest
import os
sys.path.append("../")
sys.path.append("../jw_modules")
import httplib
import unittest
from jw_utils.logUtils import *

class testcase_${inter_name}_httpget_${testcase_name}(unittest.TestCase):
    def setUp(self):
        # init http get request method
        httpClient = None
        self.httpClient = httplib.HTTPConnection('${interip}', ${interport}, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    # change user interface for bazaar_utils & access story
    def test_${testcase_name}(self):
            print "The GET  Request staring",${result_input}
            self.httpClient.request('GET', '${inter_url}')
            # response object
            response = self.httpClient.getresponse()
            #print response.status
            statucode = response.status
            responsevalue=response.read()
            print "the response.status and responsevalue is --->",response.status,responsevalue
            self.assertEqual(statucode, 200);self.assertNotEqual(statucode, 201)
            if statucode == 200 or statucode == 201:
                print "The get_order_list status is 200 or 201"
                if ${rvflg} == 1:
                    if responsevalue == ${result_output}:
                        #${result_assert}();
                        print " the ${result_assert} ===========>", ${result_assert}
                        ${result_assert}
                    else:
                        raise "The GET Request return value has exception"
                else:
                    print "the return rvflg is not 1, so we can't excute this return compare."
            else:
                raise "The get_order_list has exception"
                print response.reason
                # self.assertEqual(statucode, 200,'incorrect default size')

''')
    print "#####@@@@@@@@@@##########",inter_name,testcase_name
    print "#####@@@@@@@@@@##########",result_input,result_output,result_assert
    print "#####@@@@@@@@@@##########",inter_url,interip,interport

    fileStr = code.substitute(infcls=infcls,rvflg=rvflg,inter_name=inter_name,testcase_name=testcase_name,result_input=result_input,
                              result_output=result_output,result_assert=result_assert,inter_url=inter_url,
                              interip=interip,interport=interport)
    saveFile(fileStr, inter_name+"_"+testcase_name + infcls +"_HttpGetImpl.py")


#this is http post method for interface testing
def httpPostMethod(infcls,rvflg,inter_name,testcase_name,result_input,result_output,result_assert,inter_url,interip,interport):
    code = Template('''
#!/usr/bin/env python
# -*- coding: utf-8 -*-
# encoding:utf-8
import time,os,sys,datetime,unittest
import os
sys.path.append("../")
sys.path.append("../jw_modules")
import httplib
import unittest
import json
import urllib

#Post http interface testing method
class testcase_${inter_name}_httppost_${testcase_name}(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        httpClient = None
        self.httpClient = httplib.HTTPConnection('${interip}', ${interport}, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_${testcase_name}(self):
            f=open("jsondata.json")
            strcreateoder=json.load(f)
            print "The POST  Request staring",strcreateoder,${result_input}
            params = urllib.urlencode(strcreateoder)
            headers = {'Content-type': 'application/x-www-form-urlencoded', 'Accept': 'text/plain'}
            self.httpClient.request('POST', "${inter_url}", params, headers)
            #response is HTTPResponse Object
            responsevalue = self.httpClient.getresponse()
            #responsevalue=response.read()
            #print response.status
            statucode=self.response.status
            print "the response.status is --->",self.response.status,responsevalue
            self.assertEqual(statucode, 200);self.assertNotEqual(statucode, 201)
            if statucode==200 or statucode==201:
                print "The get_order_list status is 200 or 201"
                if ${rvflg} == 1:
                    if responsevalue == ${result_output}:
                        #${result_assert}();
                        print " the ${result_assert} ===========>", ${result_assert}
                        ${result_assert}
                    else:
                        raise "The GET Request return value has exception"
                else:
                    print "the return rvflg is not 1, so we can't excute this return compare."
            else:
                raise "The interface has exception"
                print response.reason,response.read()
                #self.assertEqual(statucode, 200,'incorrect default size')

''')

    print "########POST#####@@@@@@@@@@##########",inter_name,testcase_name
    print "########POST#####@@@@@@@@@@##########",result_input,result_output,result_assert
    print "########POST#####@@@@@@@@@@##########",inter_url,interip,interport
    strdemo_infcls=infcls[::-1][0:infcls[::-1].find(".")]
    finalstrdemo_infcls=strdemo_infcls[::-1]
    print finalstrdemo_infcls
    fileStr = code.substitute(infcls=infcls,rvflg=rvflg,inter_name=inter_name,testcase_name=testcase_name,result_input=result_input,
                              result_output=result_output,result_assert=result_assert,inter_url=inter_url,
                              interip=interip,interport=interport)
    saveFile(fileStr, inter_name+"_"+testcase_name+"_"+finalstrdemo_infcls + "_HttpPostImpl.py")


#this is http post method for interface testing
def httpPostApiMethod(inter_name,inter_url,requestjson,responsejson,inter_type,interip,interport,inter_chinaname):
    code = Template('''
#!/usr/bin/env python
# -*- coding: utf-8 -*-
# encoding:utf-8
import time,os,sys,datetime,unittest
import os
sys.path.append("../")
sys.path.append("../jw_modules")
import httplib
import unittest
import json
import urllib
import loginSessionKey
reload(sys)
sys.setdefaultencoding('utf8')

#Post http interface testing method
class testcase_${inter_name}_httppostImpl(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        #apihostpath="/3160001RA-1.0.0-SNAPSHOT"
        httpClient = None
        self.httpClient = httplib.HTTPConnection('${interip}', ${interport}, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_${inter_name}(self):
            print "The InterfaceApi POST Request staring............................"
            params =${requestjson}
            jsondump_params=json.dumps(params)
            #print " @@@@@@@@@@@@@@@@@the requestjson >>>>>>>>>>>>>> ",jsondump_params
            sessionKeyStr=loginSessionKey.getLoginSessionKey()
            sessionKeyVar=sessionKeyStr[0]
            print "#####@@@@@@@@@@@@@@@@@##### the sessionkey >>>>>>>>>>>>>>",sessionKeyVar
            tokenStr=loginSessionKey.getTokenKey(sessionKeyStr[0],sessionKeyStr[1])
            print "#####@@@@@@@@@@@@@@@@@##### the tokenStr >>>>>>>>>>>>>>",tokenStr
            jwuidStr=sessionKeyStr[1]
            print " #####@@@@@@@@@@@@@@@@@##### the jwuidStr >>>>>>>>>>>>>>",jwuidStr
            
            headers = {"Content-type": "application/json; charset=UTF-8" , "Accept": "*/*", "jw_data": sessionKeyVar, "jw_token": tokenStr,"jw_uid": jwuidStr}
            self.httpClient.request("${inter_type}", "/3160001RA-1.0.0-SNAPSHOT${inter_url}",jsondump_params, headers)

            #response is HTTPResponse Object
            response = self.httpClient.getresponse()
            print response.reason
            APIreponstr = response.read()
            dbResponsejsonStr=${responsejson}
            print "@@@@@@@@@@@ interface self-define system database --->dbResponsejsonStr@@@@@@@@@@@@",dbResponsejsonStr
            statucode=response.status
            print "the response.status is --->",statucode
            if (APIreponstr==""):
                print " The APIreponstr is Empty String ......................"
                pass
            else:
                if statucode==200 or statucode==201:
                    print "The API Response status CODE is 200 or 201"
                    #print " the APIreponstr >>>>>>>>>>>>>",response.read()
                    print " @@@@@@@@@@@@##############The reponse API String is ================>>>>>>>>>",APIreponstr
                    #dictstr=json.dumps(response.read())
                    #print "##########dict######################",dictstr
                    print "#############the interface self-define calling repopse json dict#####################",APIreponstr
                    print "@###########interface self-define system database --->dbResponsejsonStr###########@@",dbResponsejsonStr
                    dictstr=json.loads(APIreponstr)
                    
                    for i in dictstr:
                        print "#@@@@@@@@@@@@@dictstr[%s]@@@@@@@@@@@@@=" % i,dictstr[i]
    
                        if str(dbResponsejsonStr).find(str(i)) == -1:
                             print "API and DB Response is not match,No filed String in reponse json string here!",dictstr[i]
                             pass
                             #self.assertEqual(str(dbResponsejsonStr).find(str(i)), 1);
                             #raise Exception("........No filed in reponse string here",dictstr[i])
                        else:
                             print "Found it now.awesome!  field str has been inclued .",str(APIreponstr).find("responseCommonDto")>1
                             #pass
                             if (str(APIreponstr).find("responseCommonDto")!=-1):
                                 
                                 #print " the responseCommonDto is ",dictstr["responseCommonDto"]
                                 responseCommonDtoStr=dictstr["responseCommonDto"]
                                 print "responseCommonDto the has been found.",responseCommonDtoStr
                                 messageCodeStr=responseCommonDtoStr["message"]
                                 #dictstr[i]["message"]
                                 print "responseCommonDtoStr messagecode is ",messageCodeStr
                                 print " the @@@@@@@@@@@@@@@@@@@@#####################",messageCodeStr.startswith("0") and len(messageCodeStr) == 6 and not messageCodeStr.endswith("0")
                                 if ((len(messageCodeStr) == 6 and messageCodeStr == "000000") ):
                                    print "this interface message filed is ",messageCodeStr ,",that's ok"
                                    pass
                                 elif (messageCodeStr.startswith("0") and len(messageCodeStr) == 6 and not messageCodeStr.endswith("0")):
                                    print "this interface message filed is ",messageCodeStr ," is not 000000 messagecode "
                                    self.assertEqual(str(dbResponsejsonStr).find(str(i)), 1);
                                 else:
                                    print "this interface message filed is  ",messageCodeStr ," that is logic error, not 000000 messagecode "
                                    raise Exception("Something happened with message,logic error is not correct",messageCodeStr)
                                    #if (messageCodeStr.startswith("0") and len(messageCodeStr) == 6 and not messageCodeStr.endswith("0")):
                                    #   print " the exception code >>>>>>>>>>>>>>>>>",messageCodeStr
                                    #   raise Exception("Something happened with message is not correct",messageCodeStr)
                                    #else:
                                    #   print " logic excpetion error  show............",messageCodeStr
                                    #   raise Exception("Logic excpetion error  show. happened with message is not correct",messageCodeStr)
    #                          else:
    #                              print " I can not find responseCommonDto !!!!!!!!!!!!!",str(APIreponstr).find("responseCommonDto")
    #                              raise Exception("I can not find responseCommonDto!!!!!!!!!",str(APIreponstr).find("responseCommonDto"))
                             else:
                                 self.assertEqual(str(dbResponsejsonStr).find(str(i)), 1);
                                 print "responseCommonDto the cannot found. @@@@@@@@@@@@@@@@@@@@@"
                else:
                    print "that's ok,this is 404 or 4xx error!"
                    pass


''')
    print "########POST inter_name,inter_url#####@@@@@@@@@@##########",inter_name,inter_url
    print "########POST parm requestjson#####@@@@@@@@@@##########",requestjson
    print "########POST parm responsejson#####@@@@@@@@@@##########",responsejson
    print "########POST interip,inter_chinaname#####@@@@@@@@@@##########",interip,inter_chinaname

    fileStr = code.substitute(inter_name=inter_name,inter_url=inter_url,requestjson=requestjson,responsejson=responsejson,
                              inter_type=inter_type,interip=interip,interport=interport,inter_chinaname=inter_chinaname)
    saveFile(fileStr, inter_name+"_HttpPostImpl.py")

#save interface testing code.py
def saveFile(code, path):
    print path
    f = open(path, 'w')
    f.write(code)
    f.close()


# param1 ModelName
# param2 Properties
def main():
    # parameters = sys.argv[1:]
    # number = len(parameters)
    # if (number < 2):
    #     print "Error parameters"
    # else:
    #     httpGetImplement("assertgetdemo");
    #     httpPostImplement("assertpostdemo","/client/v1/get_order?user_id=11452&order_id=12173793044055");
    # s = Template('There  ${moneyType} is  ${money}')
    # print s.substitute(moneyType = 'Dollar',money=12)

    result=connection_db.getIFD_INTERFACEDEF_All()
    for inter_row in result:
         print "===========inter_row row[3]->",inter_row[3],inter_row[5]
         result_case=connection_db.getIFD_EXAMPLEDEF_From_IFD_INTERFACEDEF("testcase1")
         print "===testcase ID ###################===",result_case[0]
         result_input=connection_db.getIFD_EXPINPUT_From_EXAMPLEDEF_ID(result_case[0])
         result_output=connection_db.getIFD_EXPOUTPUT_From_EXAMPLEDEF_ID(result_case[0])
         result_assert=connection_db.getIFD_EXPASSERT_From_EXAMPLEDEF_ID(result_case[0])
         print " the result_input is ===>",result_input[3]
         print " the result_output is ===>",result_output[2]
         print "############result_output[12] ===>",result_output[12]
         print " the result_assert is ===>",result_assert[3]

         inter_type=inter_row[7]
         inter_systype=inter_row[11]
         print " the inter_type is ===>",inter_type,inter_systype
         if "get" in inter_type:
              print "this is get method"
              httpGetMethod(inter_row[11],result_output[12],inter_row[3],result_case[3],result_input[3],result_output[2],result_assert[3],inter_row[5],"open09.edaixi.cn","81");
         else:
              print "this is post method"

     # if strassertname != "e":
     #      httpPostMethod(strtestname,strassertname,restfulName,"open09.edaixi.cn1111111");
     # else:
     #      print "the aassert is none value..."


    # if strassertname != "e":
    #      httpGetMethod(strtestname,strassertname,restfulName,"open09.edaixi.cn1111111");
    # else:
    #      print "the aassert is none value..."
    # result=connection_db.selectIFD_INTERFACEDEFOneRecord();
    # for row in result:
    #     # fname = row[0]
    #     # lname = row[5]
    #     strtestname=''.join(row[2])
    #     print " the row[2] is############ ->",strtestname
    #     resultone=connection_db.selectIFD_EXPASSERTOneonly(row[3])
    #     # strassertname=''.join(resultone[3])
    #     strassertname=resultone[3]
    #     strtesttype=row[7]
    #     restfulName=row[5]
    #     print " the resultone[3] is############ ->",strassertname,strtesttype
    #
    #     if "get" in strtesttype:
    #             if strassertname != "e":
    #                 httpGetMethod(strtestname,strassertname,restfulName,"open09.edaixi.cn1111111");
    #             else:
    #                 print "the aassert is none value..."
    #     else:
    #             if strassertname != "e":
    #                  # httpPostImplement("testpost","/client/v1/get_order?user_id=11452&order_id=12173793044055");
    #                  httpPostMethod(strtestname,strassertname,restfulName,"open09.edaixi.cn1111111");
    #             else:
    #                 print "the aassert is none value..."

            # print " the resultone is ==============->",resultone[3]
        # if "e" in resultone[3]:
        #     print "this is nose value for db"
        # else:
        #     print "this ==###########>", httpGetImplement(row[2],resultone[3]);

#                 for i in dictstr:
#                     print "#@@@@@@@@@@@@@dictstr[%s]=" % i,dictstr[i]
#                     if str(dbResponsejsonStr).find(i) == -1:
#                          print "No filed in reponse string here!"
#                          raise Exception("........No filed in reponse string here")
#                     else:
#                          print "Found ' field str inclued ' in the string."
#                     #print "434444444444444444444444444444", dictstr[i]
#                     #print "@@@@@@@@@@@@@@@@@@@@@@dictstr[i]["resultCode"] >>>>>>>>>",dictstr[i]["resultCode"]
#                     #print "dictstr[i]["resultCode"].startswith("0") is ",dictstr[i]["resultCode"].startswith("0")
#                     #if ( dictstr[i]["message"]== "000000" ):
#                     #    print "this interface message filed is 000000,that's ok"
#                     #    pass
#                     #else:
#                     #    print "inner exception,this message is >>>>>>>>>",dictstr[i]["message"]
#                     #    raise # <same as raise IOError>
#                     #print " ===================== ",not dictstr[i]["message"].startswith("0"),len(dictstr[i]["message"])
#                     #print not dictstr[i]["message"].startswith("0")
#                     #and len(dictstr[i]["resultCode"])
# 
#                     #if ((not dictstr[i]["message"].startswith("0") and len(dictstr[i]["message"]) == 6 and dictstr[i]["message"] != "000000") or dictstr[i]["message"] == "000000"):
#                     #   print "this interface message filed is 000000,that's ok"
#                     #   pass
#                     #else:
#                     #    print "inner exception,this message is >>>>>>>>>",dictstr[i]["message"]
#                     #   raise Exception("Something happened with message is not correct",dictstr[i]["message"])
#                         
#                     if ((len(dictstr[i]["message"]) == 6 and dictstr[i]["message"] == "000000") ):
#                         print "this interface message filed is ",dictstr[i]["message"] ,",that's ok"
#                         pass
#                     else:
#                         if (dictstr[i]["message"].startswith("0") and len(dictstr[i]["message"]) == 6 and not dictstr[i]["message"].endswith("0")):
#                             print " the exception code >>>>>>>>>>>>>>>>>",dictstr[i]["message"]
#                             raise Exception("Something happened with message is not correct",dictstr[i]["message"])
#                         else:
#                             print " logic excpetion error  show............"
#                             raise Exception("Logic excpetion error  show. happened with message is not correct",dictstr[i]["message"])

if __name__ == "__main__":
    main()
