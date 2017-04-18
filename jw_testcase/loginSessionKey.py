#!/usr/bin/env python
#coding=utf8
import httplib, urllib,json

# httpClient = None
# try:
#     # jsonstr='{"orderColumn":"id","dir":"asc","languages":"\'1\',\'0\'","pageStart":"0","pageLength":"20"}'
#     # object = json.load(jsonstr)
#     fjson=open("loginSessionKey.json")
#     jsonstr=json.load(fjson)
#     jsondump=json.dumps(jsonstr)
#     print "the jsondump is --->",jsondump
#     #params = urllib.urlencode(jsondump)
#     headers = {"Content-type": "application/json; charset=UTF-8" , "Accept": "*/*"}
#
#     httpClient = httplib.HTTPConnection("192.168.18.214", 18080, timeout=20)
#     httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/login", jsondump, headers)
#
#     response = httpClient.getresponse()
#     print " the statuis is ->",response.status,response.reason
#
#     repoStr=response.read()
#     print repoStr
#     #print "=========>",repoStr[repoStr.rfind("sessionKey")+13:repoStr.rfind("token")-3]
#     sessionKeyStr=repoStr[repoStr.rfind("sessionKey")+13:repoStr.rfind("token")-3]
#     #print response.read()
#     # print response.read()
#     print sessionKeyStr #get header information
# except Exception, e:
#     print e
# finally:
#     if httpClient:
#         httpClient.close()

global httpHostIP
global httpPort,timeOutDate

# import ConfigParser
# config=ConfigParser.ConfigParser()
# with open('../test-config/systemcfg.properties', 'r') as cfg:
#     config.readfp(cfg)
#     # print config.get('config', 'username')
#     httpHostIP=config.get('config', 'httpHostIP')
#     httpPort=config.get('config', 'httpPort')
#     timeOutDate=config.get('config', 'timeOutDate')
httpHostIP="192.168.18.217"
httpPort=18080
timeOutDate=20

def getLoginSessionKey():

    print "get LoginSession Key now........................."
    httpClient = None
    try:
       import ConfigParser
       config=ConfigParser.ConfigParser()
       with open('../test-config/systemcfg.properties', 'r') as cfg:
        config.readfp(cfg)
        apihosts=config.get('config', 'jw-interface-reqip')
        apiport=config.get('config', 'jw-interface-reqport')
        print " apihosts ",apihosts," apiport ",apiport
       # jsonstr='{"orderColumn":"id","dir":"asc","languages":"\'1\',\'0\'","pageStart":"0","pageLength":"20"}'
       # object = json.load(jsonstr)
       fjson=open("loginSessionKey.json")
       jsonstr=json.load(fjson)
       jsondump=json.dumps(jsonstr)

       headers = {"Content-type": "application/json; charset=UTF-8" , "Accept": "*/*"}
       httpClient = httplib.HTTPConnection(apihosts, apiport, timeout=timeOutDate)
       httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/login", jsondump, headers)

       response = httpClient.getresponse()
       print " the statuis is ->",response.status,response.reason

       repoStr=response.read()
#        print "==============",repoStr
       repoStrVarSessionkey=repoStr
       repoStrVarUid=repoStr 
       
       sessionKeyStr=repoStrVarSessionkey[repoStrVarSessionkey.rfind("sessionKey")+13:repoStrVarSessionkey.rfind("token")-3]
       jw_uidStr=repoStrVarUid[repoStrVarUid.index("userUid")+10:repoStrVarUid.index("unitFlg")-4]
       print " ====repoStrVarUid  >>>>>>>",repoStrVarUid
#        jw_uidStr=repoStrVarUid[repoStrVarUid.rfind("userUid")+10:repoStrVarUid.lfind("unitFlg")-4]
#        jw_uidStr=str(repoStrVarUid).rfind("userUid")
#            repoStrVarUid.index('33')
#        print "  repoStrVarUid.find ",repoStrVarUid.find(repoStrVarUid,repoStrVarUid.index("userUid"),repoStrVarUid.index("unitFlg")),repoStrVarUid.index("unitFlg")
#        print repoStrVarUid[repoStrVarUid.index("userUid")+10:repoStrVarUid.index("unitFlg")-4]
#  
#        print " @@@@@@@@@@@@@@@@@@@@@@@@@the sessionKeyStr is :",sessionKeyStr
#        print " @@@@@@@@@@@@@@@@@@@@@@@@@the jw_uidStr is :",jw_uidStr
       return sessionKeyStr,jw_uidStr
   
    except  Exception, e:
       print e
    finally:
       if httpClient:
          httpClient.close()



def getTokenKey(sessionkeyStr,uidcode):
    print "get token key now............................"
    httpClient = None
    try:
        # jsonstr='{"orderColumn":"id","dir":"asc","languages":"\'1\',\'0\'","pageStart":"0","pageLength":"20"}'
        # object = json.load(jsonstr)
        #print "the jsondump is --->",jsondump
        #params = urllib.urlencode(jsondump)
       import ConfigParser
       config=ConfigParser.ConfigParser()
       with open('../test-config/systemcfg.properties', 'r') as cfg:
        config.readfp(cfg)
        apihosts=config.get('config', 'jw-interface-reqip')
        apiport=config.get('config', 'jw-interface-reqport')
        print " apihosts ",apihosts," apiport ",apiport
        payload = {}
        jsondump=json.dumps(payload)
        headers = {"Content-type": "application/json; charset=UTF-8" , "Accept": "*/*", "jw_data": sessionkeyStr,"jw_uid": uidcode}
        httpClient = httplib.HTTPConnection(apihosts, apiport, timeout=timeOutDate)
        httpClient.request("POST", "/3160001RA-1.0.0-SNAPSHOT/bs/BsToken/getToken",jsondump, headers)

        response = httpClient.getresponse()
        print " the statuis is ->",response.status,response.reason
        repoStr=response.read()
        tokenKeyStr=repoStr[repoStr.rfind("token")+8:repoStr.rfind("tracerId")-3]
        #print repoStr
        #print "=========>",repoStr[repoStr.rfind("sessionKey")+13:repoStr.rfind("token")-3]
        #sessionKeyStr=repoStr[repoStr.rfind("sessionKey")+13:repoStr.rfind("token")-3]
        #print response.read()
        # print response.read()
        #print sessionKeyStr #get header information
        #print sessionKeyStr
        print " the tokenKeyStr is :",tokenKeyStr
        return tokenKeyStr
    except  Exception, e:
        print e
    finally:
        if httpClient:
            httpClient.close()

if __name__ == '__main__':
    #print getLoginSessionKey()
    sessionkey=getLoginSessionKey()
    uidcode=sessionkey[-1]
    #str(sessionkey)[0:str(,str(sessionkey).index("US000001")).index("US000001")-8]
    print " the sessionkey is ",sessionkey
    print " the sessionkey real is ",sessionkey[0]
    print " the uidcode is ",sessionkey[1]
    #str[-1]
    print getTokenKey(sessionkey[0],sessionkey[1])
    import re
    list=re.split('_#|','this_is#a|test')
    print "multiple re String is ",list
 #     tup1 = ('physics', 'chemistry', 1997, 2000);
#     tup2 = (1, 2, 3, 4, 5, 6, 7 );
#     print "tup1[0]: ", tup1[0]
#     print "tup2[1:5]: ", tup2[1:5]


