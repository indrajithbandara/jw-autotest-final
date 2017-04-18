
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
class testcase_bs_3250010_HptPmsRoomCombo_getHptPmsRoomCombo_httppostImpl(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        #apihostpath="/3160001RA-1.0.0-SNAPSHOT"
        httpClient = None
        self.httpClient = httplib.HTTPConnection('192.168.18.217', 18080, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_bs_3250010_HptPmsRoomCombo_getHptPmsRoomCombo(self):
            print "The InterfaceApi POST Request staring............................"
            params ={"displayData":"","id":0,"logAbstractInfo":"","logDiffer":[],"logInfoDto":"","requestCommonDto":{"sessionKey":"","sysTypeName":"","token":"","tokenStatus":"","tracerId":"","unitUid":"","userUid":"","validReqDtoStatus":""}}
            jsondump_params=json.dumps(params)
            print " @@@@@@@@@@@@@@@@@the requestjson >>>>>>>>>>>>>> ",jsondump_params
            sessionKeyStr=loginSessionKey.getLoginSessionKey()
            print " @@@@@@@@@@@@@@@@@the sessionkey >>>>>>>>>>>>>>",sessionKeyStr
            tokenStr=loginSessionKey.getTokenKey(sessionKeyStr)
            print " @@@@@@@@@@@@@@@@@the tokenStr >>>>>>>>>>>>>>",tokenStr
            headers = {"Content-type": "application/json; charset=UTF-8" , "Accept": "*/*", "jw_data": sessionKeyStr, "jw_token": tokenStr}
            self.httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/bs/3250010/HptPmsRoomCombo/getHptPmsRoomCombo",jsondump_params, headers)

            #response is HTTPResponse Object
            response = self.httpClient.getresponse()
            print response.reason
            reponstr = response.read()
            responsejsonStr={"responseCommonDto":{"errorLevel":"","lans":"","message":"","resultCode":"","sessionKey":"","token":"","tracerId":"","userUid":""},"resultData":{"areaUtilized":0,"chainUid":"","comboFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","hptPmsRoomComboSubDto":{"typCRUD":""},"id":0,"modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","percentUtilized":0,"primaryRoomNum":"","roomNum":"","statusFlg":"","unitUidOu":"","version":0}}
            print "@@@@@@@@@@@responsejsonStr@@@@@@@@@@@@",responsejsonStr
            statucode=response.status
            print "the response.status is --->",statucode
            self.assertEqual(statucode, 200);self.assertNotEqual(statucode, 201)
            if statucode==200 or statucode==201:
                print "The get_order_list status is 200 or 201"
                print " the repoStr >>>>>>>>>>>>>",response.read()
                dictstr=json.dumps(response.read())
                #print "##########dict######################",dictstr
                print "##########dict######################",reponstr
                dictstr=json.loads(reponstr)
                for i in dictstr:
                    print "#@@@@@@@@@@@@@dictstr[%s]=" % i,dictstr[i]
                    if str(responsejsonStr).find(i) == -1:
                         print "No filed in reponse string here!"
                         raise Exception("........No filed in reponse string here")
                    else:
                         print "Found ' field str inclued ' in the string."
                    #print "434444444444444444444444444444", dictstr[i]
                    #print "@@@@@@@@@@@@@@@@@@@@@@dictstr[i]["resultCode"] >>>>>>>>>",dictstr[i]["resultCode"]
                    #print "dictstr[i]["resultCode"].startswith("0") is ",dictstr[i]["resultCode"].startswith("0")
                    #if ( dictstr[i]["message"]== "000000" ):
                    #    print "this interface message filed is 000000,that's ok"
                    #    pass
                    #else:
                    #    print "inner exception,this message is >>>>>>>>>",dictstr[i]["message"]
                    #    raise # <same as raise IOError>
                    print " ===================== ",not dictstr[i]["message"].startswith("0"),len(dictstr[i]["message"])
                    #print not dictstr[i]["message"].startswith("0")
                    #and len(dictstr[i]["resultCode"])

                    if ((not dictstr[i]["message"].startswith("0") and len(dictstr[i]["message"]) == 6 and dictstr[i]["message"] != "000000") or dictstr[i]["message"] == "000000"):
                        print "this interface message filed is 000000,that's ok"
                        pass
                    else:
                        print "inner exception,this message is >>>>>>>>>",dictstr[i]["message"]
                        raise Exception("Something happened with message is not correct",dictstr[i]["message"])

