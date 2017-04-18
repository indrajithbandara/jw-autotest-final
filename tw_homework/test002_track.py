#!/usr/bin/env python2.7
#coding: utf-8
'''
Created on 2017
@author: cui.jun@devopslabs.com
'''
from datetime import timedelta, datetime

from test002_timing import Timing


class Track(Timing):
    id = 0

    def __init__(self):
        super(Track, self).__init__()
        Track.id += 1
        self.talks = {}
        self.talk_list = Track.extract_input()

    @staticmethod
    def extract_input():
        __talks = {}
        lines = []
        try:
            lines = [line.strip() for line in open('test.txt')]
        except Exception as e:
            print('File Not Found', e)
        for line in lines:
            title, minutes = line.rsplit(maxsplit=1)
            try:
                minutes = int(minutes[:-3])
            # negative indexing raises error, so it means it's lightning
            except ValueError:
                minutes = 5
            __talks[line] = minutes
        return __talks

    def get_talks(self, start_talk, end_talk):
        start = timedelta(hours=start_talk)
        for key, value in list(self.talk_list.items()):
            prev = start + timedelta(minutes=int(value))
            if prev <= timedelta(hours=end_talk):
                self.talks[(datetime.min + start).strftime('%I:%M %p')] = key
                self.talk_list.popitem()
                start += timedelta(minutes=int(value))
        return self.talks

    def show_output(self):
        while not len(self.talk_list) is 0:
            print('Track %s' % Track.id)
            self._prepare_output(9, 12)
            print('%s - %s' % (self.lunch, 'Lunch'))
            self._prepare_output(13, 17)
            print('%s - %s' % (self.day_end, 'Networking Event'))
            Track.id += 1

    def _prepare_output(self, start, end):
        for time, title in sorted(self.get_talks(start, end).items()):
            print(time, '-', title)
        # clear previous entries
        self.talks.clear()


if __name__ == '__main__':
    a = Track()
    a.show_output()