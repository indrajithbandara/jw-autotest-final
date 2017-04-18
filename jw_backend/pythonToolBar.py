'''
Created on 2017��3��27��

@author: cui
'''
#!/usr/bin/env python  
# -*- coding: utf-8 -*-  
  
import wx  
import wx.py.images  
  
class ToolbarFrame(wx.Frame):  
    def __init__(self, parent, id):  
          
        wx.Frame.__init__(self, parent, id, 'Toolbars', size = (300, 200))  
          
        panel = wx.Panel(self)  
        panel.SetBackgroundColour('White')  
          
        #����״̬��  
        statusBar = self.CreateStatusBar()  
          
        #����������  
        toolbar = self.CreateToolBar()  
        #����һ������  
        toolbar.AddSimpleTool(wx.NewId(), wx.py.images.getPyBitmap(), "New", "Long help for 'New'")  
        toolbar.AddSimpleTool(wx.NewId(), wx.py.images.getPyBitmap(), "Edit", "Long help for 'Edit'")  
        #׼����ʾ  
        toolbar.Realize()  
          
        #�����˵�  
        menuBar = wx.MenuBar()  
          
        menu1 = wx.Menu()  
        menuBar.Append(menu1, "&File") #�˵���Ŀ1  
          
        menu2 = wx.Menu()  
          
        #�˵�����&��ʾ�����ַ�Ϊ�ȼ�������3Ϊ��״̬������ʾ�Ĳ˵���˵��  
        menu2.Append(wx.NewId(), "&Copy", "Copy in status bar")   
        menu2.Append(wx.NewId(), "C&ut", "")  
        menu2.Append(wx.NewId(), "Paste", "")  
        menu2.AppendSeparator()  
        menu2.Append(wx.NewId(), "&Options...", "Display Options")  
        menuBar.Append(menu2, "&Edit")  
        self.SetMenuBar(menuBar)  
  
if __name__ == '__main__':  
    app = wx.PySimpleApp()  
    frame = ToolbarFrame(parent = None, id = -1)  
    frame.Show()  
    app.MainLoop()  