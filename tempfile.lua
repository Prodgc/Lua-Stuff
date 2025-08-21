local function a()local b=debug.getinfo(2,"S")if b and b.source:sub(1,1)=="@"then warn("fail")else print("succes")end end;a()
