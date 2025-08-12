-- Spies on http requests, good for finding webhooks
local target=[=[

    
    
]=]
local l = assert(load or loadstring)(target) -- choose the compatible loader and run the target code
l()

local old = syn and syn.request or http and http.request or http_request
if old then
    (syn and function() syn.request = function(req) print("Found:", req.Url) return old(req) end end or
    http and function() http.request = function(req) print("Found:", req.Url) return old(req) end end or
    function() http_request = function(req) print("Found:", req.Url) return old(req) end end)()
end
