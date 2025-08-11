-- Spies on load & loadstring calls v1
local target=[=[

    
    
]=]

local LD1,LD2=load,loadstring
load=function(c,...) 
    print("load:",c)
    return LD1(c,...)
end

if LD2 then 
    loadstring=function(c,...)
        print("loadstring:",c)
        return LD2(c,...)
    end
end
load(target)(...)
