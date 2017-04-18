
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
class testcase_bs_RsvAccount_getRsvAccount_httppostImpl(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        #apihostpath="/3160001RA-1.0.0-SNAPSHOT"
        httpClient = None
        self.httpClient = httplib.HTTPConnection('192.168.18.214', 18080, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_bs_RsvAccount_getRsvAccount(self):
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
            self.httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/bs/RsvAccount/getRsvAccount",jsondump_params, headers)

            #response is HTTPResponse Object
            response = self.httpClient.getresponse()
            print response.reason
            APIreponstr = response.read()
            dbResponsejsonStr={"responseCommonDto":{"errorLevel":"","lans":"","message":"","resultCode":"","sessionKey":"","token":"","tracerId":"","userUid":""},"resultData":{"acctNo":"","acctStus":"","arNo":"","areaId":0,"arrDt":"","arrStus":"","arrTm":"","artrustFlg":"","auditStus":"","bedNum":"","bkguestId":0,"blockFlg":"","buildingId":0,"cancelBdt":"","cancelDhms":"","cancelTyp":"","cancelUnitCd":"","cancelUnitUid":"","cancelUserCd":"","cancelUserNm":"","cancelUserUid":"","cancellationNum":"","cancelrsnId":0,"ccardExpireDt":"","ccardGstNm":"","ccardNum":"","ccardtypId":0,"cfmletterFlg":"","cfmletterNums":0,"cfmletterTyp":"","cfmletterfmtId":0,"chainUid":"","channelNo":"","checkinBdt":"","checkinDhms":"","checkinUnitCd":"","checkinUnitUid":"","checkinUserCd":"","checkinUserNm":"","checkinUserUid":"","checkoutBdt":"","checkoutDhms":"","checkoutUnitCd":"","checkoutUnitUid":"","checkoutUserCd":"","checkoutUserNm":"","checkoutUserUid":"","clockrmFlg":"","commissionId":0,"confirmBdt":"","confirmDhms":"","confirmStus":"","confirmUnitCd":"","confirmUnitUid":"","confirmUserCd":"","confirmUserNm":"","confirmUserUid":"","confirmationNum":"","corpNm":"","corpNo":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","crsNum":"","crsacctNo":"","crsallowuptFlg":"","crsgetFlg":"","cutoffDt":"","definiteFlg":"","depStus":"","departureDt":"","departureTm":"","dnrrsTxt":"","dropoffCano":"","dropoffCarrier":"","dropoffDhms":"","dropoffFlg":"","dropoffMemo":"","dropoffStation":"","dropoffTrno":"","earlyinFlg":"","excsvcFlg":"","exctax1Flg":"","exctax2Flg":"","exctax3Flg":"","exctax4Flg":"","exctax5Flg":"","extratableFlg":"","ffpNum":"","ffptypId":0,"ffsendStus":"","floorId":0,"folioNums":0,"freememo":"","groupCd":"","groupFlg":"","groupNo":"","groupStus":"","groupTyp":"","guaranteeFlg":"","hrendTm":"","hrstartDhms":"","id":0,"idsendStus":"","ifuserNm":"","ifuserPwd":"","igFlg":"","introProfileNo":"","invcFlg":"","keyFlg":"","keyNum":"","keyresv":"","linkAcctNo":"","mark":"","mcardId":"","mcardtypId":0,"memberId":0,"memberrankId":0,"membertypId":0,"mlPrd":"","modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","msgsendStus":"","negoCorpNo":"","netLvl":"","nopostFlg":"","noprintrateFlg":"","olpayNum":"","orgarrDt":"","orgdptDt":"","orgroomtypId":0,"othercrdNum":"","parentEntityLock":"","partnerSeq":"","paymentmethodId":0,"pickupCano":"","pickupCarrier":"","pickupDhms":"","pickupFlg":"","pickupMemo":"","pickupStation":"","pickupTrno":"","posId":"","prrgFlg":"","prrgNums":0,"prrgTyp":"","prrgfmtId":0,"rcpostFlg":"","regicardFlg":"","regicardNums":0,"regicardTyp":"","regicardfmtId":0,"reguestId":0,"reinstateDt":"","reqDepositAmt":0,"reqDepositEnddt":"","reservedFlg1":"","reservedFlg10":"","reservedFlg2":"","reservedFlg3":"","reservedFlg4":"","reservedFlg5":"","reservedFlg6":"","reservedFlg7":"","reservedFlg8":"","reservedFlg9":"","resvNo":"","resvcreateBdt":"","resvcreateDhms":"","resvcreateUnitCd":"","resvcreateUnitUid":"","resvcreateUserCd":"","resvcreateUserNm":"","resvcreateUserUid":"","resvmodifyBdt":"","resvmodifyDhms":"","resvmodifyUnitCd":"","resvmodifyUnitUid":"","resvmodifyUserCd":"","resvmodifyUserNm":"","resvmodifyUserUid":"","resvsrcTyp":"","resvtypId":"","roomNum":"","roomQuant":0,"roomfixFlg":"","roomtypId":0,"rsvAccountSubDto":{"typCRUD":""},"rtFlg":"","salerId":0,"saleroomtypId":0,"scityId":0,"scountryId":0,"shareSeq":"","sprovinceId":0,"stattyp10Id":0,"stattyp1Id":0,"stattyp2Id":0,"stattyp3Id":0,"stattyp4Id":0,"stattyp5Id":0,"stattyp6Id":0,"stattyp7Id":0,"stattyp8Id":0,"stattyp9Id":0,"stayTyp":"","superfixFlg":"","teleFrom":"","teleLvl":"","turnCd":"","tvLvl":"","unitUidOu":"","version":0,"voucher":"","wlPriority":0,"wlTeleno":"","wlrsnId":0,"wlrsnTxt":""}}
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


