#!/usr/bin/env python2.7
#coding: utf-8
'''
Created on 2017��4��5��

@author: cui.jun@devopslabs.com
'''
from datetime import timedelta, datetime


class Timing:
    def __init__(self):
        self.morning_start = (datetime.min+ timedelta(hours=9)).strftime('%I:%M %p')
        self.lunch = (datetime.min+ timedelta(hours=12)).strftime('%I:%M %p')
        self.afternoon_start = (datetime.min+ timedelta(hours=13)).strftime('%I:%M %p')
        self.day_end = (datetime.min+ timedelta(hours=17)).strftime('%I:%M %p')

if __name__ == '__main__':
    a = Timing()
    print(a.afternoon_start)