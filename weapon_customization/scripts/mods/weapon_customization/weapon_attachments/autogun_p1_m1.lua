local mod = get_mod("weapon_customization")

-- ##### ┬─┐┌─┐┌─┐ ┬ ┬┬┬─┐┌─┐ #########################################################################################
-- ##### ├┬┘├┤ │─┼┐│ ││├┬┘├┤  #########################################################################################
-- ##### ┴└─└─┘└─┘└└─┘┴┴└─└─┘ #########################################################################################

local _common = mod:io_dofile("weapon_customization/scripts/mods/weapon_customization/weapon_attachments/common")
local _common_ranged = mod:io_dofile("weapon_customization/scripts/mods/weapon_customization/weapon_attachments/common_ranged")
local _common_lasgun = mod:io_dofile("weapon_customization/scripts/mods/weapon_customization/weapon_attachments/common_lasgun")

-- ##### ┌┬┐┌─┐┌┬┐┌─┐ #################################################################################################
-- #####  ││├─┤ │ ├─┤ #################################################################################################
-- ##### ─┴┘┴ ┴ ┴ ┴ ┴ #################################################################################################

local _item = "content/items/weapons/player"
local _item_ranged = _item.."/ranged"
local _item_melee = _item.."/melee"
local _item_minion = "content/items/weapons/minions"

-- ##### ┌─┐┌─┐┬─┐┌─┐┌─┐┬─┐┌┬┐┌─┐┌┐┌┌─┐┌─┐ ############################################################################
-- ##### ├─┘├┤ ├┬┘├┤ │ │├┬┘│││├─┤││││  ├┤  ############################################################################
-- ##### ┴  └─┘┴└─└  └─┘┴└─┴ ┴┴ ┴┘└┘└─┘└─┘ ############################################################################

--#region local functions
    local string = string
    local string_find = string.find
    local vector3_box = Vector3Box
    local table = table
    local pairs = pairs
    local ipairs = ipairs
    local type = type
--#endregion

local tv = function(t, i)
    local res = nil
    if type(t) == "table" then
        if #t >= i then
            res = t[i]
        elseif #t >= 1 then
            res = t[1]
        else
            return nil
        end
    else
        res = t
    end
    if res == "" then
        return nil
    end
    return res
end
table.combine = function(...)
    local arg = {...}
    local combined = {}
    for _, t in ipairs(arg) do
        for name, value in pairs(t) do
            combined[name] = value
        end
    end
    return combined
end
table.icombine = function(...)
    local arg = {...}
    local combined = {}
    for _, t in ipairs(arg) do
        for _, value in pairs(t) do
            combined[#combined+1] = value
        end
    end
    return combined
end

local functions = {
    braced_barrel_attachments = function()
        return {
            {id = "barrel_07", name = "Braced Autogun 1"},
            {id = "barrel_08", name = "Braced Autogun 2"},
            {id = "barrel_09", name = "Braced Autogun 3"},
            {id = "barrel_10", name = "Braced Autogun 4"},
            {id = "barrel_13", name = "Braced Autogun 13"},
            {id = "barrel_14", name = "Braced Autogun 14"},
        }
    end,
    braced_barrel_models = function(parent, angle, move, remove, type, no_support, automatic_equip, hide_mesh)
        local a = angle or 0
        local m = move or vector3_box(0, 0, 0)
        local r = remove or vector3_box(0, 0, 0)
        local t = type or "barrel"
        local n = no_support or {}
        local ae = automatic_equip or {}
        local h = hide_mesh or {}
        return {
            barrel_07 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_ak_01", type = "barrel", parent = tv(parent, 1), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 1), no_support = tv(n, 1), hide_mesh = tv(h, 1)},
            barrel_08 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_ak_02", type = "barrel", parent = tv(parent, 2), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 2), no_support = tv(n, 2), hide_mesh = tv(h, 2)},
            barrel_09 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_ak_03", type = "barrel", parent = tv(parent, 3), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 3), no_support = tv(n, 3), hide_mesh = tv(h, 3)},
            barrel_10 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_ak_04", type = "barrel", parent = tv(parent, 4), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 4), no_support = tv(n, 4), hide_mesh = tv(h, 4)},
            barrel_13 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_ak_05", type = "barrel", parent = tv(parent, 5), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 5), no_support = tv(n, 5), hide_mesh = tv(h, 5)},
            barrel_14 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_ak_06", type = "barrel", parent = tv(parent, 6), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 6), no_support = tv(n, 6), hide_mesh = tv(h, 6)},
        }
    end,
    headhunter_barrel_attachments = function()
        return {
            {id = "barrel_11", name = "Headhunter Autogun 11"},
            {id = "barrel_12", name = "Headhunter Autogun 12"},
            {id = "barrel_15", name = "Headhunter Autogun 15"},
            {id = "barrel_16", name = "Headhunter Autogun 16"},
        }
    end,
    headhunter_barrel_models = function(parent, angle, move, remove, type, no_support, automatic_equip, hide_mesh)
        local a = angle or 0
        local m = move or vector3_box(0, 0, 0)
        local r = remove or vector3_box(0, 0, 0)
        local t = type or "barrel"
        local n = no_support or {}
        local ae = automatic_equip or {}
        local h = hide_mesh or {}
        return {
            barrel_11 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_killshot_01", type = "barrel", parent = tv(parent, 1), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 1), no_support = tv(n, 1), hide_mesh = tv(h, 1)},
            barrel_12 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_killshot_03", type = "barrel", parent = tv(parent, 2), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 2), no_support = tv(n, 2), hide_mesh = tv(h, 2)},
            barrel_15 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_killshot_04", type = "barrel", parent = tv(parent, 3), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 3), no_support = tv(n, 3), hide_mesh = tv(h, 3)},
            barrel_16 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_killshot_05", type = "barrel", parent = tv(parent, 4), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 4), no_support = tv(n, 4), hide_mesh = tv(h, 4)},
        }
    end,
    barrel_attachments = function()
        return {
            {id = "barrel_01", name = "Infantry Autogun 1"},
            {id = "barrel_02", name = "Infantry Autogun 2"},
            {id = "barrel_03", name = "Infantry Autogun 3"},
            {id = "barrel_04", name = "Infantry Autogun 4"},
            {id = "barrel_05", name = "Infantry Autogun 5"},
            {id = "barrel_06", name = "Infantry Autogun 6"},
            {id = "barrel_17", name = "Barrel 1"},
        }
    end,
    barrel_models = function(parent, angle, move, remove, type, no_support, automatic_equip, hide_mesh)
        local a = angle or 0
        local m = move or vector3_box(0, 0, 0)
        local r = remove or vector3_box(0, 0, 0)
        local t = type or "barrel"
        local n = no_support or {}
        local ae = automatic_equip or {}
        local h = hide_mesh or {}
        return {
            barrel_01 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_01", type = "barrel", parent = tv(parent, 1), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 1), no_support = tv(n, 1), hide_mesh = tv(h, 1)},
            barrel_02 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_02", type = "barrel", parent = tv(parent, 2), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 2), no_support = tv(n, 2), hide_mesh = tv(h, 2)},
            barrel_03 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_03", type = "barrel", parent = tv(parent, 3), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 3), no_support = tv(n, 3), hide_mesh = tv(h, 3)},
            barrel_04 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_04", type = "barrel", parent = tv(parent, 4), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 4), no_support = tv(n, 4), hide_mesh = tv(h, 4)},
            barrel_05 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_05", type = "barrel", parent = tv(parent, 5), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 5), no_support = tv(n, 5), hide_mesh = tv(h, 5)},
            barrel_06 = {model = _item_ranged.."/barrels/autogun_rifle_barrel_06", type = "barrel", parent = tv(parent, 6), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 6), no_support = tv(n, 6), hide_mesh = tv(h, 6)},
            barrel_17 = {model = _item_ranged.."/barrels/barrel_01",               type = "barrel", parent = tv(parent, 7), angle = a, move = m, remove = r, mesh_move = false, automatic_equip = tv(ae, 7), no_support = tv(n, 7), hide_mesh = tv(h, 7)},
        }
    end,
    muzzle_attachments = function()
        return {
            {id = "muzzle_default", name = mod:localize("mod_attachment_default")},
            {id = "muzzle_01", name = "Infantry Autogun 1"},
            {id = "muzzle_02", name = "Infantry Autogun 2"},
            {id = "muzzle_03", name = "Infantry Autogun 3"},
            {id = "muzzle_04", name = "Infantry Autogun 4"},
            {id = "muzzle_05", name = "Infantry Autogun 5"},
            {id = "muzzle_06", name = "Braced Autogun 1"},
            {id = "muzzle_07", name = "Braced Autogun 2"},
            {id = "muzzle_08", name = "Braced Autogun 3"},
            {id = "muzzle_09", name = "Headhunter Autogun 1"},
            {id = "muzzle_10", name = "Headhunter Autogun 2"},
            {id = "muzzle_11", name = "Braced Autogun 4"},
            {id = "muzzle_12", name = "Braced Autogun 5"},
            {id = "muzzle_13", name = "Headhunter Autogun 3"},
            {id = "muzzle_14", name = "Headhunter Autogun 4"},
        }
    end,
    muzzle_models = function(parent, angle, move, remove)
        local a = angle or 0
        local m = move or vector3_box(0, 0, 0)
        local r = remove or vector3_box(0, 0, 0)
        return {
            muzzle_default = {model = "",                                                        type = "muzzle", parent = tv(parent, 1), angle = a, move = m, remove = r},
            muzzle_01 =      {model = _item_ranged.."/muzzles/autogun_rifle_muzzle_01",          type = "muzzle", parent = tv(parent, 2), angle = a, move = m, remove = r},
            muzzle_02 =      {model = _item_ranged.."/muzzles/autogun_rifle_muzzle_02",          type = "muzzle", parent = tv(parent, 3), angle = a, move = m, remove = r},
            muzzle_03 =      {model = _item_ranged.."/muzzles/autogun_rifle_muzzle_03",          type = "muzzle", parent = tv(parent, 4), angle = a, move = m, remove = r},
            muzzle_04 =      {model = _item_ranged.."/muzzles/autogun_rifle_muzzle_04",          type = "muzzle", parent = tv(parent, 5), angle = a, move = m, remove = r},
            muzzle_05 =      {model = _item_ranged.."/muzzles/autogun_rifle_muzzle_05",          type = "muzzle", parent = tv(parent, 6), angle = a, move = m, remove = r},
            muzzle_06 =      {model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_01",       type = "muzzle", parent = tv(parent, 7), angle = a, move = m, remove = r},
            muzzle_07 =      {model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_02",       type = "muzzle", parent = tv(parent, 8), angle = a, move = m, remove = r},
            muzzle_08 =      {model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03",       type = "muzzle", parent = tv(parent, 9), angle = a, move = m, remove = r},
            muzzle_09 =      {model = _item_ranged.."/muzzles/autogun_rifle_killshot_muzzle_01", type = "muzzle", parent = tv(parent, 10), angle = a, move = m, remove = r},
            muzzle_10 =      {model = _item_ranged.."/muzzles/autogun_rifle_killshot_muzzle_03", type = "muzzle", parent = tv(parent, 11), angle = a, move = m, remove = r},
            muzzle_11 =      {model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_04",       type = "muzzle", parent = tv(parent, 12), angle = a, move = m, remove = r},
            muzzle_12 =      {model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_05",       type = "muzzle", parent = tv(parent, 13), angle = a, move = m, remove = r},
            muzzle_13 =      {model = _item_ranged.."/muzzles/autogun_rifle_killshot_muzzle_04", type = "muzzle", parent = tv(parent, 14), angle = a, move = m, remove = r},
            muzzle_14 =      {model = _item_ranged.."/muzzles/autogun_rifle_killshot_muzzle_05", type = "muzzle", parent = tv(parent, 15), angle = a, move = m, remove = r},
        }
    end,
    magazine_attachments = function()
        return {
            -- {id = "magazine_default", name = mod:localize("mod_attachment_default"), sounds = {UISoundEvents.apparel_equip}},
            {id = "magazine_01", name = "Autogun 1"},
            {id = "magazine_02", name = "Autogun 2"},
            {id = "magazine_03", name = "Autogun 3"},
            {id = "magazine_04", name = "Braced Autogun 4"},
        }
    end,
    magazine_models = function(parent, angle, move, remove, type)
        local a = angle or 0
        local m = move or vector3_box(0, 0, 0)
        local r = remove or vector3_box(0, 0, 0)
        local t = type or "magazine"
        return {
            magazine_default = {model = "",                                                      type = t, parent = tv(parent, 1), angle = a, move = m, remove = r, mesh_move = false},
            magazine_01 =      {model = _item_ranged.."/magazines/autogun_rifle_magazine_01",    type = t, parent = tv(parent, 2), angle = a, move = m, remove = r, mesh_move = false},
            magazine_02 =      {model = _item_ranged.."/magazines/autogun_rifle_magazine_02",    type = t, parent = tv(parent, 3), angle = a, move = m, remove = r, mesh_move = false},
            magazine_03 =      {model = _item_ranged.."/magazines/autogun_rifle_magazine_03",    type = t, parent = tv(parent, 4), angle = a, move = m, remove = r, mesh_move = false},
            magazine_04 =      {model = _item_ranged.."/magazines/autogun_rifle_ak_magazine_01", type = t, parent = tv(parent, 5), angle = a, move = m, remove = r, mesh_move = false},
        }
    end,
    receiver_attachments = function()
        return {
            {id = "receiver_default",   name = mod:localize("mod_attachment_default")},
            {id = "receiver_01",        name = "Infantry Autogun 1"},
            {id = "receiver_02",        name = "Headhunter Autogun 1"},
            {id = "receiver_03",        name = "Braced Autogun 1"},
            {id = "receiver_04",        name = "Headhunter Autogun 2"},
            {id = "receiver_05",        name = "Headhunter Autogun 3"},
        }
    end,
    receiver_models = function(parent, angle, move, remove)
        local a = angle or 0
        local m = move or vector3_box(0, 0, 0)
        local r = remove or vector3_box(0, 0, 0)
        return {
            receiver_default = {model = "",                                                            type = "receiver", parent = tv(parent, 1), angle = a, move = m, remove = r},
            receiver_01 =      {model = _item_ranged.."/recievers/autogun_rifle_receiver_01",          type = "receiver", parent = tv(parent, 2), angle = a, move = m, remove = r},
            receiver_02 =      {model = _item_ranged.."/recievers/autogun_rifle_killshot_receiver_01", type = "receiver", parent = tv(parent, 3), angle = a, move = m, remove = r},
            receiver_03 =      {model = _item_ranged.."/recievers/autogun_rifle_ak_receiver_01",       type = "receiver", parent = tv(parent, 4), angle = a, move = m, remove = r},
            receiver_04 =      {model = _item_ranged.."/recievers/autogun_rifle_killshot_receiver_02", type = "receiver", parent = tv(parent, 5), angle = a, move = m, remove = r},
            receiver_05 =      {model = _item_ranged.."/recievers/autogun_rifle_killshot_receiver_03", type = "receiver", parent = tv(parent, 6), angle = a, move = m, remove = r},
        }
    end
}

return table.combine(
    functions,
    {
        attachments = { -- Done 24.9.2023
            flashlight = _common_ranged.flashlights_attachments(),
            rail = _common_lasgun.rail_attachments(),
            grip = _common_ranged.grip_attachments(),
            stock = table.icombine(
                {{id = "stock_default", name = mod:localize("mod_attachment_default")}},
                _common_ranged.stock_attachments()
            ),
            magazine = table.icombine(
                {{id = "magazine_default", name = mod:localize("mod_attachment_default")}},
                _common_ranged.magazine_attachments()
            ),
            trinket_hook = _common.trinket_hook_attachments(),
            barrel = table.icombine(
                {{id = "barrel_default", name = mod:localize("mod_attachment_default")}},
                functions.barrel_attachments(),
                functions.braced_barrel_attachments(),
                functions.headhunter_barrel_attachments()
            ),
            muzzle = functions.muzzle_attachments(),
            sight = table.icombine(
                _common_ranged.sight_default(),
                _common_ranged.reflex_sights_attachments(),
                _common_ranged.sights_attachments()
            ),
            receiver = functions.receiver_attachments(),
            bayonet = _common_ranged.bayonet_attachments(),
            emblem_right = _common.emblem_right_attachments(),
            emblem_left = _common.emblem_left_attachments(),
        },
        models = table.combine( -- Done 24.9.2023
            _common.emblem_right_models("receiver", -3, vector3_box(-.2, -4, 0), vector3_box(.2, 0, 0)),
            _common_ranged.flashlight_models(nil, -2.5, vector3_box(-.6, -3, 0), vector3_box(.2, 0, 0)),
            _common_ranged.bayonet_models({"barrel", "barrel", "barrel", "muzzle"}, -.5, vector3_box(.3, -3, 0), vector3_box(0, .4, -.034)),
            _common.emblem_left_models("receiver", 0, vector3_box(-.2, -4, 0), vector3_box(-.2, 0, 0)),
            _common_ranged.grip_models(nil, .4, vector3_box(-.4, -4, .1), vector3_box(0, -.1, -.1)),
            _common_ranged.reflex_sights_models("rail", .2, vector3_box(-.3, -4, -.2), vector3_box(0, -.2, 0), "sight", {}, {
                {rail = "rail_default"},
                {rail = "rail_01"},
                {rail = "rail_01"},
                {rail = "rail_01"},
                {rail = "rail_default"},
                {rail = "rail_01"},
            }),
            _common_ranged.sights_models(nil, .35, vector3_box(-.3, -4, -.2), vector3_box(0, -.2, 0)),
            _common_ranged.stock_models(nil, .5, vector3_box(-.6, -4, 0), vector3_box(0, -.4, -.11)),
            _common.trinket_hook_models(nil, 0, vector3_box(.1, -4, .2), vector3_box(0, 0, -.2)),
            {barrel_default = {model = "", type = "barrel"}},
            functions.barrel_models(nil, -.3, vector3_box(.2, -2, 0), vector3_box(0, .2, 0), nil, {
                {"trinket_hook_empty"},
            }, {
                {trinket_hook = "trinket_hook_empty|trinket_hook_02"},
            }),
            functions.braced_barrel_models(nil, -.3, vector3_box(.2, -2, 0), vector3_box(0, .2, 0)),
            functions.headhunter_barrel_models(nil, -.3, vector3_box(.2, -2, 0), vector3_box(0, .2, 0), nil, {
                {"trinket_hook"},
            }, {
                {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"},
            }),
            _common_lasgun.rail_models("receiver", 0, vector3_box(0, 0, 0), vector3_box(0, 0, .2)),
            functions.muzzle_models(nil, -.5, vector3_box(.4, -3, 0), vector3_box(0, .2, 0)),
            _common_ranged.magazine_models(nil, .2, vector3_box(-.2, -3, .1), vector3_box(0, 0, -.2)),
            functions.receiver_models(nil, 0, vector3_box(0, 0, 0), vector3_box(0, 0, -.00001))
        ),
        anchors = { -- Done 24.9.2023
            -- scope_offset = vector3_box(0, 0, .009),
            fixes = {
                -- Grips
                {dependencies = {"grip_27|grip_28|grip_29"}, -- Grip
                    grip = {offset = true, position = vector3_box(0, .01, -.02), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                -- Bayonets
                {dependencies = {"barrel_01", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .115, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_02", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .115, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_03", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .145, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_04", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .115, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_06", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .12, .055), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_11", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .173, .0675), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_12", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .09, .041), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_15", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .17, .088), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_16", "autogun_bayonet_01"}, -- Bayonet 1
                    bayonet = {offset = true, position = vector3_box(0, .19, .076), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_01", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .115, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_02", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .115, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_03", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .145, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_04", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .115, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_06", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .12, .055), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_11", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .173, .0675), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_12", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .09, .041), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_15", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .17, .088), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_16", "autogun_bayonet_02"}, -- Bayonet 2
                    bayonet = {offset = true, position = vector3_box(0, .19, .076), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_01", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .045, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_02", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .075, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_03", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .045, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_04", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .045, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_05", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .055, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_06", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .075, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_07", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .05, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_08", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .07, -.025), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_09", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .09, -.03), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"muzzle_10", "autogun_bayonet_03"}, -- Bayonet 3
                    bayonet = {offset = true, position = vector3_box(0, .1, -.03), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                -- Sights
                -- Infantry receiver
                {dependencies = {"lasgun_rifle_sight_01", "receiver_01"}, -- Lasgun sight
                    sight = {offset = true, position = vector3_box(0, -.028, .0265), rotation = vector3_box(0, 0, 0)}},
                -- Headhunter receiver
                {dependencies = {"autogun_rifle_sight_01", "receiver_02"}, -- Infantry sight
                    sight = {offset = true, position = vector3_box(0, -.006, -.005), rotation = vector3_box(0, 0, 0), scale = vector3_box(.9, 1, 1)}},
                {dependencies = {"autogun_rifle_ak_sight_01", "receiver_02"}, -- Braced sight
                    sight = {offset = true, position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"autogun_rifle_killshot_sight_01", "receiver_02"}, -- Headhunter sight
                    sight = {offset = true, position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"lasgun_rifle_sight_01", "receiver_02"}, -- Headhunter sight
                    sight = {offset = true, position = vector3_box(0, -.028, .026), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                -- Braced receiver
                {dependencies = {"autogun_rifle_sight_01", "receiver_03"}, -- Infantry sight
                    sight = {offset = true, position = vector3_box(0, .03, .0005), rotation = vector3_box(0, 0, 0), scale = vector3_box(.9, 1, 1)}},
                {dependencies = {"autogun_rifle_ak_sight_01", "receiver_03"}, -- Braced sight
                    sight = {offset = true, position = vector3_box(0, .01, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"autogun_rifle_killshot_sight_01", "receiver_03"}, -- Headhunter sight
                    sight = {offset = true, position = vector3_box(0, .01, .001), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"lasgun_rifle_sight_01", "receiver_03"}, -- Headhunter sight
                    sight = {offset = true, position = vector3_box(0, .015, .026), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"receiver_02"}, -- Sight
                    sight = {offset = true, position = vector3_box(0, -.045, 0), rotation = vector3_box(0, 0, 0)}},
                {dependencies = {"receiver_03"}, -- Sight
                    sight = {offset = true, position = vector3_box(0, -.035, 0), rotation = vector3_box(0, 0, 0)}},
                -- Rails
                -- Infantry receiver
                {dependencies = {"rail_01", "receiver_01", "barrel_01|barrel_03"}, -- Rail
                    rail = {offset = true, position = vector3_box(0, -.01, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 2.2, 1)}},
                {dependencies = {"rail_01", "receiver_01", "barrel_02|barrel_04|barrel_05|barrel_11|barrel_12"}, -- Rail
                    rail = {offset = true, position = vector3_box(0, -.035, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1.3, 1)}},
                {dependencies = {"rail_01", "receiver_01", "barrel_06"}, -- Rail
                    rail = {offset = true, position = vector3_box(0, -.01, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 2, 1)}},
                {dependencies = {"rail_01", "receiver_01", "barrel_07|barrel_08|barrel_09|barrel_10"}, -- Rail
                    rail = {offset = true, position = vector3_box(0, -.04, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1.15, 1)}},
                -- Braced / Headhunter receiver
                {dependencies = {"rail_01", "receiver_02|receiver_03"}, -- Rail
                    rail = {offset = true, position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(0, 0, 0)}},
                -- Sight offsets
                -- Infantry receiver / Infantry barrels
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_ak_sight_01", "receiver_01"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.002), rotation = vector3_box(-.3, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_killshot_sight_01", "receiver_01"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, -.001), rotation = vector3_box(-.2, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "lasgun_rifle_sight_01", "receiver_01"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.0075), rotation = vector3_box(-.55, 0, 0)}},
                -- Infantry receiver / Braced barrels
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_sight_01", "receiver_01"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, -.00075), rotation = vector3_box(.75, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_ak_sight_01", "receiver_01"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.003), rotation = vector3_box(.4, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_killshot_sight_01", "receiver_01"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, -.002), rotation = vector3_box(.75, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "lasgun_rifle_sight_01", "receiver_01"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.008), rotation = vector3_box(-.1, 0, 0)}},
                -- Infantry receiver / Headhunter barrels
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_ak_sight_01", "receiver_01"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.0025), rotation = vector3_box(-.3, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_killshot_sight_01", "receiver_01"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, -.001), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "lasgun_rifle_sight_01", "receiver_01"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.0075), rotation = vector3_box(-.5, 0, 0)}},
                -- Headhunter receiver / Infantry barrels
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_sight_01", "receiver_02"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, -.0035), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_ak_sight_01", "receiver_02"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.001), rotation = vector3_box(-.25, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_killshot_sight_01", "receiver_02"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, .001), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "lasgun_rifle_sight_01", "receiver_02"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.0065), rotation = vector3_box(-.55, 0, 0)}},
                -- Headhunter receiver / Braced barrels
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_sight_01", "receiver_02"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, -.004), rotation = vector3_box(.4, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_ak_sight_01", "receiver_02"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.002), rotation = vector3_box(.5, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_killshot_sight_01", "receiver_02"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, 0), rotation = vector3_box(.75, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "lasgun_rifle_sight_01", "receiver_02"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.007), rotation = vector3_box(0, 0, 0)}},
                -- Headhunter receiver / Headhunter barrels
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_sight_01", "receiver_02"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, -.003), rotation = vector3_box(-.2, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_ak_sight_01", "receiver_02"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.001), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_killshot_sight_01", "receiver_02"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, .001), rotation = vector3_box(0, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "lasgun_rifle_sight_01", "receiver_02"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.0065), rotation = vector3_box(-.5, 0, 0)}},
                -- Braced receiver / Infantry barrels
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_sight_01", "receiver_03"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_ak_sight_01", "receiver_03"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.002), rotation = vector3_box(-.25, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "autogun_rifle_killshot_sight_01", "receiver_03"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, 0), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06", "lasgun_rifle_sight_01", "receiver_03"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.009), rotation = vector3_box(-.9, 0, 0)}},
                -- Braced receiver / Braced barrels
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_sight_01", "receiver_03"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, 0), rotation = vector3_box(.8, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_ak_sight_01", "receiver_03"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.003), rotation = vector3_box(.5, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "autogun_rifle_killshot_sight_01", "receiver_03"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, -.001), rotation = vector3_box(.75, 0, 0)}},
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10", "lasgun_rifle_sight_01", "receiver_03"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.009), rotation = vector3_box(0, 0, 0)}},
                -- Braced receiver / Headhunter barrels
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_sight_01", "receiver_03"}, -- Infantry sight
                    no_scope_offset = {position = vector3_box(0, 0, 0), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_ak_sight_01", "receiver_03"}, -- Braced sight
                    no_scope_offset = {position = vector3_box(0, 0, -.003), rotation = vector3_box(-.1, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "autogun_rifle_killshot_sight_01", "receiver_03"}, -- Headhunter sight
                    no_scope_offset = {position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0)}},
                {dependencies = {"barrel_11|barrel_12|barrel_15|barrel_16", "lasgun_rifle_sight_01", "receiver_03"}, -- Lasgun sight
                    no_scope_offset = {position = vector3_box(0, 0, -.009), rotation = vector3_box(-.7, 0, 0)}},
                {dependencies = {"lasgun_rifle_sight_01"}, -- Sight Offset
                    no_scope_offset = {position = vector3_box(0, 0, -.008), rotation = vector3_box(-.1, 0, 0)}},
                -- Emblems
                {dependencies = {"receiver_01", "emblem_left_02"}, -- Emblems
                    emblem_left = {parent = "receiver", position = vector3_box(-.027, .21, .07), rotation = vector3_box(0, 0, 180), scale = vector3_box(1, -1, 1)}},
                {dependencies = {"receiver_01"}, -- Emblems
                    emblem_left = {parent = "receiver", position = vector3_box(-.027, .21, .07), rotation = vector3_box(0, 0, 180), scale = vector3_box(1, 1, 1)},
                    emblem_right = {parent = "receiver", position = vector3_box(.027, .21, .07), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"receiver_02", "emblem_left_02"}, -- Emblems
                    emblem_left = {parent = "receiver", position = vector3_box(-.029, -.02, .07), rotation = vector3_box(0, 0, 180), scale = vector3_box(1.8, -1.8, 1.8)}},
                {dependencies = {"receiver_02"}, -- Emblems
                    emblem_left = {parent = "receiver", position = vector3_box(-.029, -.02, .07), rotation = vector3_box(0, 0, 180), scale = vector3_box(1.8, 1.8, 1.8)},
                    emblem_right = {parent = "receiver", position = vector3_box(.029, -.02, .07), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.8, 1.8, 1.8)}},
                {dependencies = {"receiver_03", "emblem_left_02"}, -- Emblems
                    emblem_left = {parent = "receiver", position = vector3_box(-.021, .11, .1025), rotation = vector3_box(0, 20, 180), scale = vector3_box(1, -1, 1)}},
                {dependencies = {"receiver_03"}, -- Emblems
                    emblem_left = {parent = "receiver", position = vector3_box(-.021, .11, .1025), rotation = vector3_box(0, 20, 180), scale = vector3_box(1, 1, 1)},
                    emblem_right = {parent = "receiver", position = vector3_box(.029, -.02, .06), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.5, 1.5, 1.5)}},
                -- Barrels
                {dependencies = {"barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14", "!receiver_03"}, -- Barrel 7
                    barrel = {offset = true, position = vector3_box(0, 0, -.035), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"barrel_01|barrel_02|barrel_03|barrel_04|barrel_05|barrel_06|barrel_11|barrel_12|barrel_15|barrel_16", "receiver_03"}, -- Barrel 7
                    barrel = {offset = true, position = vector3_box(0, 0, .035), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)}},
                {dependencies = {"grip_01", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.115, -.15), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_02", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.12, -.165), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_03", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.155, -.125), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_04", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.132, -.136), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_05", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.145, -.120), rotation = vector3_box(-35, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook_empty"}, automatic_equip = {trinket_hook = "trinket_hook_empty|trinket_hook_02"}}},
                {dependencies = {"grip_06", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.12, -.145), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_07", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.132, -.136), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_08", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.145, -.120), rotation = vector3_box(-35, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook_empty"}, automatic_equip = {trinket_hook = "trinket_hook_empty|trinket_hook_02"}}},
                {dependencies = {"grip_09|grip_10|grip_11", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", parent_node = 5, position = vector3_box(.018, 0, 0), rotation = vector3_box(90, 0, -90), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "trinket_hook_empty"}}},
                {dependencies = {"grip_12", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.155, -.13), rotation = vector3_box(-35, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook_empty"}, automatic_equip = {trinket_hook = "trinket_hook_empty|trinket_hook_02"}}},
                {dependencies = {"grip_14", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.165, -.115), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_13|grip_15", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.145, -.12), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook_empty"}, automatic_equip = {trinket_hook = "trinket_hook_empty|trinket_hook_02"}}},
                {dependencies = {"grip_19", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.115, -.14), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_20", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.125, -.15), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_21", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.12, -.15), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_22", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.12, -.145), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_23", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.12, -.145), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_24", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.135, -.15), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_25", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.165, -.11), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"grip_26", "barrel_07|barrel_08|barrel_09|barrel_10|barrel_13|barrel_14"}, -- Trinket
                    trinket_hook = {parent = "grip", position = vector3_box(0, -.165, -.11), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"barrel_11"}, -- Trinket
                    trinket_hook = {parent = "barrel", position = vector3_box(0, .25, -.105), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"barrel_15"}, -- Trinket
                    trinket_hook = {parent = "barrel", position = vector3_box(0, .255, -.12), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"barrel_16"}, -- Trinket
                    trinket_hook = {parent = "barrel", position = vector3_box(0, .23, -.11), rotation = vector3_box(-45, 0, 0), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"barrel_12"}, -- Trinket
                    trinket_hook = {parent = "barrel", parent_node = 3, position = vector3_box(.029, 0, 0), rotation = vector3_box(90, 0, -45), scale = vector3_box(1, 1, 1), no_support = {"trinket_hook"}, automatic_equip = {trinket_hook = "!trinket_hook_empty|trinket_hook_empty"}}},
                {dependencies = {"receiver_02", "auto_pistol_magazine_01"}, -- Magazine
                    magazine = {offset = true, position = vector3_box(0, .01, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1.6, 1)}},
                {dependencies = {"auto_pistol_magazine_01"}, -- Magazine
                    magazine = {offset = true, position = vector3_box(0, .0025, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1.6, 1)}},
                {dependencies = {"receiver_02", "bolter_magazine_01"}, -- Magazine
                    magazine = {offset = true, position = vector3_box(0, .005, -.035), rotation = vector3_box(0, 0, 0), scale = vector3_box(.7, 1, 1)}},
                {dependencies = {"bolter_magazine_01"}, -- Magazine
                    magazine = {offset = true, position = vector3_box(0, 0, -.035), rotation = vector3_box(0, 0, 0), scale = vector3_box(.7, 1, 1)}},
                {dependencies = {"receiver_02", "bolter_magazine_02"}, -- Magazine
                    magazine = {offset = true, position = vector3_box(0, .005, -.035), rotation = vector3_box(0, 0, 0), scale = vector3_box(.7, 1, 1)}},
                {dependencies = {"bolter_magazine_02"}, -- Magazine
                    magazine = {offset = true, position = vector3_box(0, 0, -.035), rotation = vector3_box(0, 0, 0), scale = vector3_box(.7, 1, 1)}},
                {dependencies = {"receiver_01"}, -- Scope Offset
                    scope_offset = {position = vector3_box(0, 0, .0085)}},
                {dependencies = {"receiver_02"}, -- Scope Offset
                    scope_offset = {position = vector3_box(0, 0, .01025)}},
                {dependencies = {"receiver_03"}, -- Scope Offset
                    scope_offset = {position = vector3_box(0, 0, .009)}},
            },
        },
    }
)