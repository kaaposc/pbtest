$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_1 from statictext within w_main
end type
type cb_hello from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2039
integer height = 824
boolean titlebar = true
string title = "PowerBuilder Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_greet ( )
st_1 st_1
cb_hello cb_hello
end type
global w_main w_main

event ue_greet();// Special greeting event

MessageBox ('PBTest', 'Hello world!')

end event

on w_main.create
this.st_1=create st_1
this.cb_hello=create cb_hello
this.Control[]={this.st_1,&
this.cb_hello}
end on

on w_main.destroy
destroy(this.st_1)
destroy(this.cb_hello)
end on

type st_1 from statictext within w_main
integer x = 512
integer y = 108
integer width = 923
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Push the button to greet the world!"
boolean focusrectangle = false
end type

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

event clicked;parent.event ue_greet()

end event

