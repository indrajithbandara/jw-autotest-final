
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
class testcase_bs_RsvHouseblock_updateRsvHouseblock_httppostImpl(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        #apihostpath="/3160001RA-1.0.0-SNAPSHOT"
        httpClient = None
        self.httpClient = httplib.HTTPConnection('192.168.18.214', 18080, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_bs_RsvHouseblock_updateRsvHouseblock(self):
            print "The InterfaceApi POST Request staring............................"
            params ={"displayData":"","logAbstractInfo":"","logInfoDto":"","originData":{"adultCnt":0,"areaId":"","arrDt":"","arrStus":"","blockFlg":"","blockKey":"","blockQuant":0,"blockStus":"","businessDt":"","chainUid":"","channelNo":"","childCnt":0,"clockrmFlg":"","cohuFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","definiteFlg":"","dptDt":"","dptStus":"","earlyinFlg":"","fromTm":"","grpNo":"","id":0,"igFlg":"","lateoutFlg":"","maleCnt":0,"marketId":0,"modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","negoCorpNo":"","parentEntityLock":"","repairSeq":"","resvNo":"","roomNum":"","roomQuant":0,"roomfixFlg":"","roomtypId":0,"rsvHouseblockSubDto":{"typCRUD":""},"rtAmt":0,"salerId":0,"scityId":0,"scountryId":0,"shareSeq":"","shareStus":"","sourceId":0,"sprovinceId":0,"toTm":"","unitUidOu":"","version":0,"vipFlg":""},"requestCommonDto":{"sessionKey":"","sourceNm":"","sysTypeName":"","token":"","tokenStatus":"","tracerId":"","tracerIdVersion":"","unitUid":"","userUid":"","validReqDtoStatus":""},"submitData":{"adultCnt":0,"areaId":"","arrDt":"","arrStus":"","blockFlg":"","blockKey":"","blockQuant":0,"blockStus":"","businessDt":"","chainUid":"","channelNo":"","childCnt":0,"clockrmFlg":"","cohuFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","definiteFlg":"","dptDt":"","dptStus":"","earlyinFlg":"","fromTm":"","grpNo":"","id":0,"igFlg":"","lateoutFlg":"","maleCnt":0,"marketId":0,"modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","negoCorpNo":"","parentEntityLock":"","repairSeq":"","resvNo":"","roomNum":"","roomQuant":0,"roomfixFlg":"","roomtypId":0,"rsvHouseblockSubDto":{"typCRUD":""},"rtAmt":0,"salerId":0,"scityId":0,"scountryId":0,"shareSeq":"","shareStus":"","sourceId":0,"sprovinceId":0,"toTm":"","unitUidOu":"","version":0,"vipFlg":""}}
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
            self.httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/bs/RsvHouseblock/updateRsvHouseblock",jsondump_params, headers)

            #response is HTTPResponse Object
            response = self.httpClient.getresponse()
            print response.reason
            APIreponstr = response.read()
            dbResponsejsonStr={"responseCommonDto":{"errorLevel":"","lans":"","message":"","resultCode":"","sessionKey":"","token":"","tracerId":"","userUid":""},"resultData":{"adultCnt":0,"areaId":"","arrDt":"","arrStus":"","blockFlg":"","blockKey":"","blockQuant":0,"blockStus":"","businessDt":"","chainUid":"","channelNo":"","childCnt":0,"clockrmFlg":"","cohuFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","definiteFlg":"","dptDt":"","dptStus":"","earlyinFlg":"","fromTm":"","grpNo":"","id":0,"igFlg":"","lateoutFlg":"","maleCnt":0,"marketId":0,"modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","negoCorpNo":"","parentEntityLock":"","repairSeq":"","resvNo":"","roomNum":"","roomQuant":0,"roomfixFlg":"","roomtypId":0,"rsvHouseblockSubDto":{"typCRUD":""},"rtAmt":0,"salerId":0,"scityId":0,"scountryId":0,"shareSeq":"","shareStus":"","sourceId":0,"sprovinceId":0,"toTm":"","unitUidOu":"","version":0,"vipFlg":""}}
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

