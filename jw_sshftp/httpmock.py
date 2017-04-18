#! usr/bin/python #coding=utf-8
import BaseHTTPServer
import urlparse
import time
from SocketServer import ThreadingMixIn
import threading
import os

class WebRequestHandler(BaseHTTPServer.BaseHTTPRequestHandler):

    def do_POST(self):

        print 'post message'
        parsed_path = urlparse.urlparse(self.path)
        paramstr = parsed_path.query
        path = parsed_path.path
        print paramstr
        print path
        for param in paramstr.split('&'):
            print param

        length = self.headers.getheader('content-length');
        nbytes = int(length)
        data = self.rfile.read(nbytes)
        cur_thread = threading.currentThread()
        print 'Thread:%s\tdata:%s' % (cur_thread.getName(), data)

        message_parts = [ 'just a test']
        message = '\r\n'.join(message_parts)
        self.send_response(200)
        self.end_headers()
        self.wfile.write(message)

    def do_GET(self):

        print 'get message'
        parsed_path = urlparse.urlparse(self.path)
        paramstr = parsed_path.query
        path = parsed_path.path
        print paramstr
        print path
        for param in paramstr.split('&'):
            print param

        if path == self.getShopLevelURL:
            buf = self.getShopLevelResponseBody
        else:
            buf = 'it works'
            self.send_header("Welcome", "Contect")

        self.protocal_version = 'HTTP/1.1'
        self.send_response(200)
        self.end_headers()
        self.wfile.write(buf)

    '''获取店铺评级接口'''
    getShopLevelURL = '/abtest'
    getShopLevelResponseBody = '''
        {
            "status": 1,
            "info": "success",
            "data": {
                "input": {
                    "phone_number": "15168329206",
                    "cookie": null,
                    "id": "1234567",
                    "session_id": null,
                    "active_id": null
                },
                "abt_type": "b",
                "abt_name": "abt_001"
            }
        }'''

class ThreadingHttpServer(ThreadingMixIn, BaseHTTPServer.HTTPServer):
    pass

if __name__ == '__main__':
    '''server = BaseHTTPServer.HTTPServer(('0.0.0.0',18360), WebRequestHandler) '''
    server = ThreadingHttpServer(('0.0.0.0',18360), WebRequestHandler)
    ip, port = server.server_address
    '''Start a thread with the server -- that thread will then start one '''
    '''more thread for each request'''
    server_thread = threading.Thread(target=server.serve_forever)
    '''Exit the server thread when the main thread terminates'''
    server_thread.setDaemon(True)
    server_thread.start()

    print "Server loop running in thread:", server_thread.getName()
    while True:
        pass