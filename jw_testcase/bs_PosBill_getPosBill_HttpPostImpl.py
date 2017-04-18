
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
class testcase_bs_PosBill_getPosBill_httppostImpl(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        #apihostpath="/3160001RA-1.0.0-SNAPSHOT"
        httpClient = None
        self.httpClient = httplib.HTTPConnection('192.168.18.214', 18080, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_bs_PosBill_getPosBill(self):
            print "The InterfaceApi POST Request staring............................"
            params ={"displayData":"","id":0,"logAbstractInfo":"","logDiffer":[],"logInfoDto":"","requestCommonDto":{"sessionKey":"","sourceNm":"","sysTypeName":"","token":"","tokenStatus":"","tracerId":"","tracerIdVersion":"","unitUid":"","userUid":"","validReqDtoStatus":""}}
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
            self.httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/bs/PosBill/getPosBill",jsondump_params, headers)

            #response is HTTPResponse Object
            response = self.httpClient.getresponse()
            print response.reason
            APIreponstr = response.read()
            dbResponsejsonStr={"responseCommonDto":{"errorLevel":"","lans":"","message":"","resultCode":"","sessionKey":"","token":"","tracerId":"","userUid":""},"resultData":{"acctId":0,"acctNo":"","afterPrintPage":0,"billAmount":0,"billId":0,"billNo":"","billOrigin":"","billOriginNo":"","billStus":"","billTranNo":"","billTyp":0,"blockNum":0,"chainUid":"","closeBy":"","closeByCd":"","closeByUid":"","closeDate":"","closePeriod":"","closeWsCd":"","closeWsId":0,"contacterNm":"","contacterTlno":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","createdWsCd":"","createdWsId":0,"discountAmount":0,"discountFlg":"","discountRate":0,"id":0,"insideBy":"","insideByCd":"","insideByUid":"","insideCd":"","insideDate":"","insideDept":"","insideDeptCd":"","insideDeptUid":0,"insideFlg":"","insideId":0,"insideMemo":"","insideUnitCd":"","insideUnitUid":0,"lastOperDate":"","lockerBy":"","lockerByCd":"","lockerByUid":"","lockerDate":"","lockerUnitCd":"","lockerUnitUid":0,"lockerWsCd":"","lockerWsId":0,"makeAmount":0,"makeupFlg":"","marketTyp":0,"memo":"","modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","modifiedWsCd":"","modifiedWsId":0,"openBy":"","openByCd":"","openByUid":"","openDate":"","openFlg":"","openPeriod":"","openWsCd":"","openWsId":0,"orgTyp":0,"parentEntityLock":"","payAmount":0,"posBillSubDto":{},"printBy":"","printByCd":"","printByUid":"","printDate":"","printNum":0,"printWsCd":"","printWsId":0,"profileFlg":"","profileId":0,"profileNo":"","psnNum":0,"reopenBy":"","reopenByCd":"","reopenByUid":"","reopenDate":"","reopenPeriod":"","reopenWsCd":"","reopenWsId":0,"resvAreaId":0,"resvCloseDate":"","resvClosePeriod":"","resvNo":"","resvOpenDate":"","resvOpenPeriod":"","roomNum":"","salerBy":"","salerByCd":"","salerByUid":"","salerUnitCd":"","salerUnitUid":"","salesId":0,"seatNo":"","serviceAmount":0,"serviceFlg":"","serviceRate":0,"spareContacterNm":"","spareContacterTlno":"","sysMemo":"","taxAmount1":0,"taxAmount2":0,"taxAmount3":0,"taxAmount4":0,"taxAmount5":0,"taxItemCd1":"","taxItemCd2":"","taxItemCd3":"","taxItemCd4":"","taxItemCd5":"","taxItemId1":0,"taxItemId2":0,"taxItemId3":0,"taxItemId4":0,"taxItemId5":0,"taxItemRate1":0,"taxItemRate2":0,"taxItemRate3":0,"taxItemRate4":0,"taxItemRate5":0,"unitUid":"","unitUidOu":"","version":0,"waiterBy":"","waiterByCd":"","waiterByUid":""}}
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


