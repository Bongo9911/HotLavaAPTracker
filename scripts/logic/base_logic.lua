
-- this is the file to put all your custom logic functions into.
-- if you dont want to use the json based logic you can switch to a graph-based logic method.
-- the needed functions for that are in `/scripts/logic/graph_logic/logic_main.lua`.



-- function <name> (<parameters if needed>)
--     <actual code>
--     <indentations are just for readability>
-- end
--
                
function buddy()
    return ALL("grab")
end

function slide_jump()
    return ALL("crouch", "slide_jump")
end

function special()
    return ANY("double_jump", "boost_jump", slide_jump, "vault_jump")
end

function wind_tunnel_mastery()
    if HAS("wind_tunnels") == ACCESS_NORMAL then
        return ACCESS_NORMAL
    end
    if ALL("double_jump", "vault_jump", ANY("boost_jump", slide_jump)) == ACCESS_NORMAL then
        return ACCESS_SEQUENCEBREAK
    end
    return ACCESS_NONE
end