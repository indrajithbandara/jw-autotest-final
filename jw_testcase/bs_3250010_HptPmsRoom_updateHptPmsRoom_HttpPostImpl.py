
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
class testcase_bs_3250010_HptPmsRoom_updateHptPmsRoom_httppostImpl(unittest.TestCase):
    def setUp(self):
        # self.widget = Widget('The widget')
        #apihostpath="/3160001RA-1.0.0-SNAPSHOT"
        httpClient = None
        self.httpClient = httplib.HTTPConnection('192.168.18.217', 18080, timeout=10)

    def tearDown(self):
        # self.widget.dispose()
        # self.widget = None
        self.httpClient.close()

    def test_bs_3250010_HptPmsRoom_updateHptPmsRoom(self):
            print "The InterfaceApi POST Request staring............................"
            params ={"displayData":"","logAbstractInfo":"","logInfoDto":"","originData":{"agnPrty":0,"area":0,"areaId":0,"areaReal":0,"areaUnits":"","assignDhms":"","assignRsn":0,"assignStus":"","assignTyp":0,"assignUserUid":"","barFlg":"","bedNum":0,"bedtypId":0,"buildingId":0,"buildingReal":0,"chainUid":"","cleanStatDhms":"","cleanStus":"","comboFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","departureCredit":0,"dndFlg":"","extraStus":"","floorId":0,"floorReal":0,"foPers":0,"foRoomStus":"","handicapFlg":"","hkPers":0,"hkRoomStus":"","hkeveningsectionId":0,"hksectionId":0,"holdDhms":"","holdEmployeeId":0,"holdtypId":0,"hptPmsRoomSubDto":{"typCRUD":""},"id":0,"internetFlg":"","lockTyp":"","meetingroomFlg":"","memo":"","modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","msgFlg":"","note":"","occupancyMax":0,"occupancyMin":0,"other1Flg":"","other2Flg":"","other3Flg":"","other4Flg":"","other5Flg":"","parentEntityLock":"","phoneFlg":"","pseudoFlg":"","revenueMin":0,"roomCls":0,"roomNum":"","roomNumReal":0,"roomNumRef":"","roomStus":"","roomfeatureId":0,"roomtypId":0,"seq":0,"shareableFlg":"","smokingFlg":"","statusFlg":"","stayoverCredit":0,"suitFlg":"","tdndFlg":"","totarrm":0,"totmaintain":0,"totrm":0,"touchupCredit":0,"turndownCredit":0,"turndownEnableFlg":"","turndownFlg":"","tvFlg":"","unitUidOu":"","version":0,"vmsgFlg":"","webBookingFlg":"","webVisibleFlg":""},"requestCommonDto":{"sessionKey":"","sysTypeName":"","token":"","tokenStatus":"","tracerId":"","unitUid":"","userUid":"","validReqDtoStatus":""},"submitData":{"agnPrty":0,"area":0,"areaId":0,"areaReal":0,"areaUnits":"","assignDhms":"","assignRsn":0,"assignStus":"","assignTyp":0,"assignUserUid":"","barFlg":"","bedNum":0,"bedtypId":0,"buildingId":0,"buildingReal":0,"chainUid":"","cleanStatDhms":"","cleanStus":"","comboFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","departureCredit":0,"dndFlg":"","extraStus":"","floorId":0,"floorReal":0,"foPers":0,"foRoomStus":"","handicapFlg":"","hkPers":0,"hkRoomStus":"","hkeveningsectionId":0,"hksectionId":0,"holdDhms":"","holdEmployeeId":0,"holdtypId":0,"hptPmsRoomSubDto":{"typCRUD":""},"id":0,"internetFlg":"","lockTyp":"","meetingroomFlg":"","memo":"","modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","msgFlg":"","note":"","occupancyMax":0,"occupancyMin":0,"other1Flg":"","other2Flg":"","other3Flg":"","other4Flg":"","other5Flg":"","parentEntityLock":"","phoneFlg":"","pseudoFlg":"","revenueMin":0,"roomCls":0,"roomNum":"","roomNumReal":0,"roomNumRef":"","roomStus":"","roomfeatureId":0,"roomtypId":0,"seq":0,"shareableFlg":"","smokingFlg":"","statusFlg":"","stayoverCredit":0,"suitFlg":"","tdndFlg":"","totarrm":0,"totmaintain":0,"totrm":0,"touchupCredit":0,"turndownCredit":0,"turndownEnableFlg":"","turndownFlg":"","tvFlg":"","unitUidOu":"","version":0,"vmsgFlg":"","webBookingFlg":"","webVisibleFlg":""}}
            jsondump_params=json.dumps(params)
            print " @@@@@@@@@@@@@@@@@the requestjson >>>>>>>>>>>>>> ",jsondump_params
            sessionKeyStr=loginSessionKey.getLoginSessionKey()
            print " @@@@@@@@@@@@@@@@@the sessionkey >>>>>>>>>>>>>>",sessionKeyStr
            tokenStr=loginSessionKey.getTokenKey(sessionKeyStr)
            print " @@@@@@@@@@@@@@@@@the tokenStr >>>>>>>>>>>>>>",tokenStr
            headers = {"Content-type": "application/json; charset=UTF-8" , "Accept": "*/*", "jw_data": sessionKeyStr, "jw_token": tokenStr}
            self.httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/bs/3250010/HptPmsRoom/updateHptPmsRoom",jsondump_params, headers)

            #response is HTTPResponse Object
            response = self.httpClient.getresponse()
            print response.reason
            reponstr = response.read()
            responsejsonStr={"responseCommonDto":{"errorLevel":"","lans":"","message":"","resultCode":"","sessionKey":"","token":"","tracerId":"","userUid":""},"resultData":{"agnPrty":0,"area":0,"areaId":0,"areaReal":0,"areaUnits":"","assignDhms":"","assignRsn":0,"assignStus":"","assignTyp":0,"assignUserUid":"","barFlg":"","bedNum":0,"bedtypId":0,"buildingId":0,"buildingReal":0,"chainUid":"","cleanStatDhms":"","cleanStus":"","comboFlg":"","createdBy":"","createdByCd":"","createdByUid":"","createdDate":"","createdUnitCd":"","createdUnitUid":"","departureCredit":0,"dndFlg":"","extraStus":"","floorId":0,"floorReal":0,"foPers":0,"foRoomStus":"","handicapFlg":"","hkPers":0,"hkRoomStus":"","hkeveningsectionId":0,"hksectionId":0,"holdDhms":"","holdEmployeeId":0,"holdtypId":0,"hptPmsRoomSubDto":{"typCRUD":""},"id":0,"internetFlg":"","lockTyp":"","meetingroomFlg":"","memo":"","modifiedBy":"","modifiedByCd":"","modifiedByUid":"","modifiedDate":"","modifiedUnitCd":"","modifiedUnitUid":"","msgFlg":"","note":"","occupancyMax":0,"occupancyMin":0,"other1Flg":"","other2Flg":"","other3Flg":"","other4Flg":"","other5Flg":"","parentEntityLock":"","phoneFlg":"","pseudoFlg":"","revenueMin":0,"roomCls":0,"roomNum":"","roomNumReal":0,"roomNumRef":"","roomStus":"","roomfeatureId":0,"roomtypId":0,"seq":0,"shareableFlg":"","smokingFlg":"","statusFlg":"","stayoverCredit":0,"suitFlg":"","tdndFlg":"","totarrm":0,"totmaintain":0,"totrm":0,"touchupCredit":0,"turndownCredit":0,"turndownEnableFlg":"","turndownFlg":"","tvFlg":"","unitUidOu":"","version":0,"vmsgFlg":"","webBookingFlg":"","webVisibleFlg":""}}
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

