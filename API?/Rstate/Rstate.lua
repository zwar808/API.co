local include = {}
local RstateUndefined = {}
local Main = {}
function Main:rstate(type)
    if type == nil or type == "" then
        _G.Rstate = nil
        table.insert(RstateUndefined, type)
        return
    end

    if typeof(type) == "table" or typeof(type) == "boolean" or typeof(type) == "number" or typeof(type) == "string" or typeof(type) == "Color3" or typeof(type) == "Instance" then
        _G.Rstate = type
        table.insert(include, type)
        return
    end

  if type == "Rstate" then
      _G.Rstate = "?"
    print("#include Rstate isint defined as a class.")
  end
    _G.Rstate = type
    table.insert(include, type)
  
end

return Main
