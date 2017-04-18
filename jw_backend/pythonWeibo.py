'''
Created on 2017年3月27日

@author: cui
'''
#!/usr/bin/env python  
# -*- coding: utf-8 -*-  
   
from weibo import *  
import time  
   
def press_sina_weibo():  
   
    APP_KEY = '220567xxxx'  
    APP_SECRET = '47970abb02d8f7b4d600d98e9b1fxxxx' # c99'  
   
    CALLBACK_URL = 'https://api.weibo.com/oauth2/default.html'  
      
    client = APIClient(app_key=APP_KEY, app_secret=APP_SECRET, redirect_uri=CALLBACK_URL)  
    print client.get_authorize_url()  
      
    r = client.request_access_token(raw_input("input code:").strip())  
    client.set_access_token(r.access_token, r.expires_in)  
      
    friends_list = u'收听：'  
    #  
    myfriends = client.friendships.friends.get(uid=2601091753)  
    for s in myfriends.users:  
        friends_list += s.name  
        friends_list += ' '  
        if len(friends_list) >= 140:  #最多140个字  
            client.post.statuses__update(status=friends_list)  
            print friends_list.encode("gbk") #输出时要编码  
            friends_list = u'收听：'  
            time.sleep(10)  #别发太快，10秒一条  
    #输出剩余的          
    client.post.statuses__update(status=friends_list)  
    print friends_list.encode("gbk")   
   
if __name__ == '__main__':  
    press_sina_weibo()  