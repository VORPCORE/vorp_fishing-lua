local VORPcore = exports.vorp_core:GetCore()

local T = Translation.Langs[Config.Lang]

local fishEntity = {
    [`A_C_FISHBLUEGIL_01_MS`]        = { entity = "a_c_fishbluegil_01_ms", name = FishData.A_C_FISHBLUEGIL_01_MS[1], texture = FishData.A_C_FISHBLUEGIL_01_MS[2] },
    [`A_C_FISHBLUEGIL_01_SM`]        = { entity = "a_c_fishbluegil_01_sm", name = FishData.A_C_FISHBLUEGIL_01_SM[1], texture = FishData.A_C_FISHBLUEGIL_01_SM[2] },
    [`A_C_FISHBULLHEADCAT_01_MS`]    = { entity = "a_c_fishbullheadcat_01_ms", name = FishData.A_C_FISHBULLHEADCAT_01_MS[1], texture = FishData.A_C_FISHBULLHEADCAT_01_MS[2] },
    [`A_C_FISHBULLHEADCAT_01_SM`]    = { entity = "a_c_fishbullheadcat_01_sm", name = FishData.A_C_FISHBULLHEADCAT_01_SM[1], texture = FishData.A_C_FISHBULLHEADCAT_01_SM[2] },
    [`A_C_FISHCHAINPICKEREL_01_MS`]  = { entity = "a_c_fishchainpickerel_01_ms", name = FishData.A_C_FISHCHAINPICKEREL_01_MS[1], texture = FishData.A_C_FISHCHAINPICKEREL_01_MS[2] },
    [`A_C_FISHCHAINPICKEREL_01_SM`]  = { entity = "a_c_fishchainpickerel_01_sm", name = FishData.A_C_FISHCHAINPICKEREL_01_SM[1], texture = FishData.A_C_FISHCHAINPICKEREL_01_SM[2] },
    [`A_C_FISHCHANNELCATFISH_01_LG`] = { entity = "a_c_fishchannelcatfish_01_lg", name = FishData.A_C_FISHCHANNELCATFISH_01_LG[1], texture = FishData.A_C_FISHCHANNELCATFISH_01_LG[2] },
    [`A_C_FISHCHANNELCATFISH_01_XL`] = { entity = "a_c_fishchannelcatfish_01_xl", name = FishData.A_C_FISHCHANNELCATFISH_01_XL[1], texture = FishData.A_C_FISHCHANNELCATFISH_01_XL[2] },
    [`A_C_FISHLAKESTURGEON_01_LG`]   = { entity = "a_c_fishlakesturgeon_01_lg", name = FishData.A_C_FISHLAKESTURGEON_01_LG[1], texture = FishData.A_C_FISHLAKESTURGEON_01_LG[2] },
    [`A_C_FISHLARGEMOUTHBASS_01_LG`] = { entity = "a_c_fishlargemouthbass_01_lg", name = FishData.A_C_FISHLARGEMOUTHBASS_01_LG[1], texture = FishData.A_C_FISHLARGEMOUTHBASS_01_LG[2] },
    [`A_C_FISHLARGEMOUTHBASS_01_MS`] = { entity = "a_c_fishlargemouthbass_01_ms", name = FishData.A_C_FISHLARGEMOUTHBASS_01_MS[1], texture = FishData.A_C_FISHLARGEMOUTHBASS_01_MS[2] },
    [`A_C_FISHLONGNOSEGAR_01_LG`]    = { entity = "a_c_fishlongnosegar_01_lg", name = FishData.A_C_FISHLONGNOSEGAR_01_LG[1], texture = FishData.A_C_FISHLONGNOSEGAR_01_LG[2] },
    [`A_C_FISHMUSKIE_01_LG`]         = { entity = "a_c_fishmuskie_01_lg", name = FishData.A_C_FISHMUSKIE_01_LG[1], texture = FishData.A_C_FISHMUSKIE_01_LG[2] },
    [`A_C_FISHNORTHERNPIKE_01_LG`]   = { entity = "a_c_fishnorthernpike_01_lg", name = FishData.A_C_FISHNORTHERNPIKE_01_LG[1], texture = FishData.A_C_FISHNORTHERNPIKE_01_LG[2] },
    [`A_C_FISHPERCH_01_MS`]          = { entity = "a_c_fishperch_01_ms", name = FishData.A_C_FISHPERCH_01_MS[1], texture = FishData.A_C_FISHPERCH_01_MS[2] },
    [`A_C_FISHPERCH_01_SM`]          = { entity = "a_c_fishperch_01_sm", name = FishData.A_C_FISHPERCH_01_SM[1], texture = FishData.A_C_FISHPERCH_01_SM[2] },
    [`A_C_FISHRAINBOWTROUT_01_LG`]   = { entity = "a_c_fishrainbowtrout_01_lg", name = FishData.A_C_FISHRAINBOWTROUT_01_LG[1], texture = FishData.A_C_FISHRAINBOWTROUT_01_LG[2] },
    [`A_C_FISHRAINBOWTROUT_01_MS`]   = { entity = "a_c_fishrainbowtrout_01_ms", name = FishData.A_C_FISHRAINBOWTROUT_01_MS[1], texture = FishData.A_C_FISHRAINBOWTROUT_01_MS[2] },
    [`A_C_FISHREDFINPICKEREL_01_MS`] = { entity = "a_c_fishredfinpickerel_01_ms", name = FishData.A_C_FISHREDFINPICKEREL_01_MS[1], texture = FishData.A_C_FISHREDFINPICKEREL_01_MS[2] },
    [`A_C_FISHREDFINPICKEREL_01_SM`] = { entity = "a_c_fishredfinpickerel_01_sm", name = FishData.A_C_FISHREDFINPICKEREL_01_SM[1], texture = FishData.A_C_FISHREDFINPICKEREL_01_SM[2] },
    [`A_C_FISHROCKBASS_01_MS`]       = { entity = "a_c_fishrockbass_01_ms", name = FishData.A_C_FISHROCKBASS_01_MS[1], texture = FishData.A_C_FISHROCKBASS_01_MS[2] },
    [`A_C_FISHROCKBASS_01_SM`]       = { entity = "a_c_fishrockbass_01_sm", name = FishData.A_C_FISHROCKBASS_01_SM[1], texture = FishData.A_C_FISHROCKBASS_01_SM[2] },
    [`A_C_FISHSALMONSOCKEYE_01_LG`]  = { entity = "a_c_fishsalmonsockeye_01_lg", name = FishData.A_C_FISHSALMONSOCKEYE_01_LG[1], texture = FishData.A_C_FISHSALMONSOCKEYE_01_LG[2] },
    [`A_C_FISHSALMONSOCKEYE_01_ML`]  = { entity = "a_c_fishsalmonsockeye_01_ml", name = FishData.A_C_FISHSALMONSOCKEYE_01_ML[1], texture = FishData.A_C_FISHSALMONSOCKEYE_01_ML[2] },
    [`A_C_FISHSALMONSOCKEYE_01_MS`]  = { entity = "a_c_fishsalmonsockeye_01_ms", name = FishData.A_C_FISHSALMONSOCKEYE_01_MS[1], texture = FishData.A_C_FISHSALMONSOCKEYE_01_MS[2] },
    [`A_C_FISHSMALLMOUTHBASS_01_LG`] = { entity = "a_c_fishsmallmouthbass_01_lg", name = FishData.A_C_FISHSMALLMOUTHBASS_01_LG[1], texture = FishData.A_C_FISHSMALLMOUTHBASS_01_LG[2] },
    [`A_C_FISHSMALLMOUTHBASS_01_MS`] = { entity = "a_c_fishsmallmouthbass_01_ms", name = FishData.A_C_FISHSMALLMOUTHBASS_01_MS[1], texture = FishData.A_C_FISHSMALLMOUTHBASS_01_MS[2] },
}


local playersFishing = {}

CreateThread(function()
    for _, item in ipairs(Baits) do
        exports.vorp_inventory:registerUsableItem(item, function(data)
            playersFishing[data.source] = true
            exports.vorp_inventory:closeInventory(data.source)
            exports.vorp_inventory:subItemById(data.source, data.item.id)
            TriggerClientEvent("vorp_fishing:UseBait", data.source, item)
        end, GetCurrentResourceName())
    end
end)

RegisterServerEvent('vorp_fishing:stopFishing', function()
    if playersFishing[source] then
        playersFishing[source] = nil
    end
end)

RegisterServerEvent('vorp_fishing:FishToInventory', function(netid, fishModel, fishWeight, status)
    local _source = source
    if not playersFishing[_source] then
        return print("Player is not fishing and tried to give item to inventory", GetPlayerName(_source))
    end

    local entity = NetworkGetEntityFromNetworkId(netid)
    if not DoesEntityExist(entity) then return print("Entity does not exist", netid) end

    local fish = fishEntity[fishModel]
    if not fish then return print("Fish model not found in table fishEntity", fishModel) end
    local fish_name = fish.name
    if not fish_name then return print("Fish name not found in table fishNames", fishModel) end
    local fish_texture = fish.texture
    if not fish_texture then return print("Fish texture not found in table fishTextures", fishModel) end

    local canCarry = exports.vorp_inventory:canCarryItem(_source, fish.entity, 1)
    if not canCarry then
        VORPcore.NotifyObjective(_source, "can't carry more items", 4000)
        return
    end

    if Config.DiscordIntegration then
        TriggerEvent('vorp_fishing:discord', fishModel, fishWeight, status, _source)
    end

    exports.vorp_inventory:addItem(_source, fish.entity, 1)
    VORPcore.NotifyAvanced(_source, T.YourGot .. " " .. fish_name, "inventory_items", fish_texture, "COLOR_PURE_WHITE", 4000)
end)

AddEventHandler("playerDropped", function()
    local _source = source
    if playersFishing[_source] then
        playersFishing[_source] = nil
    end
end)

RegisterNetEvent("vorp_fishing:discord")
AddEventHandler('vorp_fishing:discord', function(fishModel, fishWeight, status, src)
    local _source = src

    local Character = VORPcore.getUser(_source).getUsedCharacter
    local fish = fishEntity[fishModel]
    if not fish then return print("Fish model not found in table fishEntity", fishModel) end

    local fish_name = fish.name
    local fish_weight = string.format("%.2f%%", (fishWeight * 54.25))
    local webhook = "" -- link here for webhook
    local botname = Config.DiscordBotName
    local avatar = Config.DiscordAvatar
    local footerlogo = Config.DiscordFooterLogo
    local color = 4777493
    local CharName = ""
    local _description = ""

    if Character ~= nil then
        if Character.lastname ~= nil then
            CharName = Character.firstname .. ' ' .. Character.lastname
        else
            CharName = Character.firstname
        end
    end

    if status == "keep" then
        _description = T.discord_fishKept
    elseif status == "throw" then
        _description = T.discord_fishThrow
    end

    local title = CharName .. " " .. T.discord_fishCaught
    local description = _description .. "\n" .. T.discord_fieldFishName .. ": " .. fish_name .. "\n" .. T.discord_fieldFishWeight .. ": " .. fish_weight .. "Kg"

    VORPcore.AddWebhook(title, webhook, description, color, botname, footerlogo, avatar)
end)
