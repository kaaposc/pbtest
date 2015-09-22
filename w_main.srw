$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_hello from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2039
integer height = 968
boolean titlebar = true
string title = "PowerBuilder Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_hello cb_hello
end type
global w_main w_main

on w_main.create
this.cb_hello=create cb_hello
this.Control[]={this.cb_hello}
end on

on w_main.destroy
destroy(this.cb_hello)
end on

type cb_hello from commandbutton within w_main
integer x = 640
integer y = 316
integer width = 667
integer height = 156
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Hello world!"
end type

event clicked;MessageBox ('PBTest', 'Hello world!')

end event

