local Sirus = GetItemInfo(100455) ~= nil or false;

if Sirus then

local t4 = 0
if ni.player.hasitemequipped(55848) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(55207) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(55254) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(55784) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(56104) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(100489) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(100485) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(100486) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(100487) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(100490) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(101389) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(101385) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(101386) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(101387) then
    t4 = t4 + 1
end
if ni.player.hasitemequipped(101390) then
    t4 = t4 + 1
end
if t4 > 3 then
local enables = {
    ["target"] = true,
    ["shild"] = true,
    ["gorn"] = true,
    ["pet"] = true,
    ["stoika"] = true,
    ["ik"] = true,
    ["lana"] = true,
    ["nii"] = true,
    ["ss"] = true,
    ["kamen"] = true,
    ["mor"] = true,
    ["mor_aoe"] = true,
    ["kick"] = false,
    ["kick_2"] = false,
    ["kick_3"] = false,
    ["debug"] = false,
}
local values = {
    kamen = 30,
        ss = 20,
        nii = 30,
}
local inputs = {
    kiick = "",
}
local menus = {
}
local function GUICallback(key, item_type, value)
	if item_type == "enabled" then
		enables[key] = value;
	elseif item_type == "value" then
		values[key] = value;
	elseif item_type == "input" then
		inputs[key] = value;
	elseif item_type == "menu" then
		menus[key] = value;
	end
end
local items = {
    settingsfile = "adk_4t4_by_makaren.json",
    callback = GUICallback,
    { type = "title", text = "Adk_4T4 by |c0000CED1Makaren|r" },
	{ type = "separator" },
        { type = "title", text = "|cffFF7C0AProfile version 2.0.0|r" },
        { type = "separator" },
        { type = "page", number = 1, text = "|cffFFFF00Общие настройки|r" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(6603).." Авто таргет", tooltip ="Автоматически выбирает таргет при его отсутствии", enabled = true, key = "target" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(48265).." Авто смена стоек", tooltip ="Автоматически меняет стойки", enabled = true, key = "stoika" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(57623).." Авто Горн", tooltip ="Автоматически используе Горн, при его отсутствии", enabled = true, key = "gorn" },
        { type = "entry", text = ni.spell.icon(49222).." Авто Костяной щит", tooltip ="Автоматически использует Костяной щит, при его отсутствии", enabled = true, key = "shild" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(46584).." Авто призыв Пета", tooltip ="Автоматически призывает пета, при его отсутствии", enabled = true, key = "pet" },
        { type = "separator" },
    { type = "entry", text = ni.spell.icon(24803).." Дебаг в чат", enabled = false, key = "debug" },
        { type = "page", number = 2, text = "|cffFFFF00Доп настройки|r" },
    	{ type = "separator" },	
	{ type = "entry", text = ni.spell.icon(50842).." Авто мор", tooltip ="Автоматически обновляет доты мором", enabled = true, key = "mor" },
        { type = "entry", text = ni.spell.icon(50842).." Авто мор аое", tooltip ="Автоматически разносит доты мором в аое", enabled = true, key = "mor_aoe" },
	{ type = "separator" },
    { type = "entry", text = ni.spell.icon(47528).." Автокик", tooltip ="Прерывает все заклинания", enabled = false, key = "kick" },
    { type = "entry", text = " Всех в радиусе действия", tooltip ="Прерывает всех в радиуе действия(не только таргет)", enabled = false, key = "kick_2" },
    { type = "entry", text = " Конкретный каст", tooltip ="Прерывает конкретный каст по имени", enabled = false, key = "kick_3" },
    {
		type = "input",
		value = inputs["kiick"],
		width = 140,
		height = 15,
		key = "kiick"
	},
        { type = "page", number = 3, text = "|cffFFFF00Умная зеленка|r" },
        { type = "entry", text = ni.spell.icon(48707)},
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(300996).." Пламя легиона", tooltip ="|cFF00FFFFИк/Ивк(Джараксус)|r", enabled = true, key = "ik" },
        { type = "entry", text = ni.spell.icon(71264).." Роящиеся тени", tooltip ="|cFF00FFFFЦлк(Лана'тель)|r", enabled = true, key = "lana" },
        { type = "page", number = 4, text = "|cffFFFF00Авто сейвы|r" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(48792).." Незыблемость льда", tooltip ="Использует Незыблемость льда при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 40, min = 1, max = 100, step = 1, key = "nii" },
        { type = "entry", text = ni.spell.icon(48743).." Смертельный союз", tooltip ="Использует Смертельный союз при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 20, min = 1, max = 100, step = 1, key = "ss" },
        { type = "entry", text = ni.spell.icon(11729).." Камень здоровья", tooltip ="Использует Огурец при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 30, min = 1, max = 100, step = 1, key = "kamen" },
    
    };
local function OnLoad()
	ni.GUI.AddFrame("adk_4t4_by_makaren", items);
end;
local function OnUnLoad()  
	ni.GUI.DestroyFrame("adk_4t4_by_makaren");
end;
local cache = {
    sindra = false,
    PlayerCombat = false,
    aoe = false,
    info = true,
    dots = false,
    dots_obnov = false,
    pet = true,
    control = false,
    };
local spells = {
    gorn = GetSpellInfo(57623),
    shild = GetSpellInfo(49222),
    pet = GetSpellInfo(46584),
    oznob = GetSpellInfo(49909),
    chuma = GetSpellInfo(49921),
    plet = GetSpellInfo(55271),
    luza = GetSpellInfo(49938),
    garga = GetSpellInfo(49206),
    lik = GetSpellInfo(49895),
    krov_udar = GetSpellInfo(49930),
    mor = GetSpellInfo(50842),
    char_rass = GetSpellInfo(316432),
    usilenie = GetSpellInfo(47568),
    stoika_b = GetSpellInfo(48266),
    stoika_a = GetSpellInfo(48265),
    krovootvod = GetSpellInfo(45529),
    zelenka = GetSpellInfo(48707),
    ni = GetSpellInfo(48792),
    ss = GetSpellInfo(48743),
    kick = GetSpellInfo(47528),

    };
local ddebuffs ={
    sindra = GetSpellInfo(69766),
    sindra_metka = GetSpellInfo(70126),
    }
local queue = {
    "info",
    "cache",
    "pause",
    "auto-target",
    "kick",
    "cd",
    "stoika_a",
    "save",
    "zelenka",
    "mor",
    "mor_aoe",
    "buff",
    "oznob",
    "chuma",
    "krov_udar",
    "plet",
    "char_rass",
    "lik_buf",
    "garga",
    "usilenie",
    "stoika_b",
    "lik",
};
local abilities = {
    -----------------------------------
    ["info"] = function()
        if cache.info == true
        and not ni.vars.coin then
            cache.info = false
            print("|cFFFF0000  =========================|r\
|cFFFFFFFFАнхоли Дк|r\
|cFFFF5A00Приватный профиль by Makaren|r\
|cFF00FFFFФанпей https://funpay.com/users/7303789/|r\
|cFF00FFFFДс https://discord.com/users/785141640087207966|r\
|cFF00FFFFДс Группы https://discord.gg/eQzcDHbVfm|r\
|cFFFF0000=========================|r")
        end
    end,
    ------------------------
    ["cache"] = function()
        cache.PlayerCombat = UnitAffectingCombat("player") or false;
        cache.sindra = ni.unit.debuffstacks("player", "Пронизывающая стужа") <= 7;
        if ni.unit.debuff("target", 55078, "player")
        and ni.unit.debuff("target", 55095, "player") then
            cache.dots = true
        else
            cache.dots = false
        end
        if ni.unit.debuffremaining("target", 55095, "player") < 2
        or ni.unit.debuffremaining("target", 55078, "player") < 2 then
            cache.dots_obnov = true
        else
            cache.dots_obnov = false
        end
        if ni.unit.debuff("target", "Сглаз") 
        or ni.unit.debuff("target", "Устрашающий крик") 
        or ni.unit.debuff("target", "Гнев деревьев") 
        or ni.unit.debuff("target", "Смерч") 
        or ni.unit.debuff("target", "Превращение") 
        or ni.unit.debuff("target", "Замораживающая ловушка") 
        or ni.unit.debuff("target", "Покаяние") 
        or ni.unit.debuff("target", "Ослепление") 
        or ni.unit.debuff("target", "Ошеломление") 
        or ni.unit.debuff("target", "Вой ужаса") 
        or ni.unit.debuff("target", "Изгнание") 
        or ni.unit.debuff("target", "Страх") 
        or ni.unit.debuff("target", "Спячка") 
        or ni.unit.debuff("target", "Отпугивание зверя") 
        or ni.unit.debuff("target", "Ментальный крик") then
            cache.control = true
        else
            cache.control = false
        end
        if enables["debug"] then
            ni.vars.debug = true
        else
            ni.vars.debug = false
        end
    end,
    ------------------------
    ["pause"] = function()
        if IsMounted()
		or UnitInVehicle("player")
		or UnitIsDeadOrGhost("player")
		or UnitChannelInfo("player")
		or UnitCastingInfo("player")
		or ni.player.islooting()
        or not cache.sindra then
			return true;
		end
    end,
    -----------------------------------
    ["auto-target"] = function()
        local target_ = ni.objects["target"];
        local target__ = target_.guid
        if enables["target"]
        and cache.PlayerCombat then
            if target__ == 0 then
                ni.player.runtext("/startattack")
            end
            if ni.objectmanager.contains("Король-лич") then
                local lich = ni.objectmanager.objectGUID("Король-лич")
                local spell, _, _, _, _, endTime = UnitChannelInfo(lich)
                if spell == ("Беспощадность зимы") then
                    ni.player.runtext("/petfollow")
                elseif cache.pet == true then
                    ni.player.runtext("/petattack")
                    cache.pet = false
                end
            elseif cache.control then
                ni.player.runtext("/petfollow")
            elseif cache.pet == true then
                ni.player.runtext("/petattack")
                cache.pet = false
            end
        end
    end,
    -----------------------------------
    ["kick"] = function()
        if enables["kick_3"] then
            if enables["kick"] then
                if enables["kick_2"] then
                    local enemies = ni.unit.enemiesinrange("player", 25)
                    for i = 1, #enemies do
                        local target = enemies[i].guid
                        if ni.unit.iscasting(target)
                        or ni.unit.ischanneling(target) then
                            local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(target)
                            if inputs.kiick == ""
                            or inputs.kiick == spell then
                                if ni.spell.available(spells.kick)
                            and interrupt == false
                            and ni.spell.valid(target, spells.kick, false, true, true) then
                                ni.spell.cast(spells.kick, target)
                            end
                            end
                        end
                    end 
                elseif ni.unit.iscasting("target")
                or ni.unit.ischanneling("target") then
                    local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("target")
                    if ni.spell.available(spells.kick)
                    and interrupt == false
                    and ni.spell.valid("target", spells.kick, false, true, true) then
                        ni.spell.cast(spells.kick)
                    end
                end
            end
        else
            if enables["kick"] then
                if enables["kick_2"] then
                    local enemies = ni.unit.enemiesinrange("player", 25)
                    for i = 1, #enemies do
                        local target = enemies[i].guid
                        if ni.unit.iscasting(target)
                        or ni.unit.ischanneling(target) then
                            local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(target)
                            if ni.spell.available(spells.kick)
                            and interrupt == false
                            and ni.spell.valid(target, spells.kick, false, true, true) then
                                ni.spell.cast(spells.kick, target)
                            end
                        end
                    end 
                elseif ni.unit.iscasting("target")
                or ni.unit.ischanneling("target") then
                    local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("target")
                    if ni.spell.available(spells.kick)
                    and interrupt == false
                    and ni.spell.valid("target", spells.kick, false, true, true) then
                        ni.spell.cast(spells.kick)
                    end
                end
            end
        end
    end,
    --------------------------
    ["cd"] = function()
        if cache.PlayerCombat then
            count = GetItemCount("Фрагмент души")
            if ni.spell.available(316466)
            and not ni.unit.buff("player", 316466) then
                if count > 1 
                or ni.unit.hp("target") < 10 then
                    ni.spell.cast(316466)
                end
            end
            if ni.spell.available(316419)
            and ni.power.currentraw("player") < 40 then
                ni.spell.cast(316419)
            end
            if ni.spell.available(316422) then
                ni.spell.cast(316422)
            end
            if ni.spell.available(316445) then
                ni.spell.cast(316445)
            end
            if ni.spell.available(316295) then
                ni.spell.cast(316295)
            end
            if ni.unit.buff("player", 316440)
            and cache.PlayerCombat
            and ni.player.hasitem(50085) then
                ni.player.useitem(50085)
            end
            if ni.player.slotcastable(10)
            and ni.player.slotcd(10) == 0 then
                ni.player.useinventoryitem(10)
            end
            if ni.player.slotcastable(13)
            and ni.player.slotcd(13) == 0 then
                ni.player.useinventoryitem(13)
            end
            if ni.player.slotcastable(14)
            and  ni.player.slotcd(14) == 0 then
                ni.player.useinventoryitem(14)
            end
            if ni.spell.available(319326) then
                ni.spell.cast(319326)
            end
            if ni.spell.available(316396)
            and ni.spell.valid("target", 316396, false, true, true) then
                ni.spell.cast(316396)
            end
        end
    end,
    --------------------------
    ["stoika_a"] = function()
        if enables["stoika"]
        and not cache.PlayerCombat
        and not ni.player.buff(48265) then
            if ni.spell.available(spells.stoika_a) then
                ni.spell.cast(spells.stoika_a)
                cache.pet = true
            end
        end
    end,
    --------------------------
    ["save"] = function()
        if cache.PlayerCombat then
            if enables["nii"]
            and ni.unit.hp("player") <= values.nii then
                if ni.unit.ttd("player") < 3
                and ni.spell.available(spells.ni) then
                    ni.spell.cast(spells.ni)
                end
            end
            if enables["ss"]
            and ni.unit.hp("player") <= values.ss then
                local creator = ni.unit.creator("playerpet")
                if ni.unit.ttd("player") < 2
                and creator ~= nil
                and ni.spell.available(spells.ss) then
                    ni.spell.cast(spells.ss)
                end
            end
            local startTime, duration, enable = GetItemCooldown(36892)
            local startTime_, duration, enable = GetItemCooldown(36893)
            local startTime__, duration, enable = GetItemCooldown(36894)
            if enables["kamen"] then
                if startTime == 0
                and startTime_ == 0
                and startTime__ == 0 then
                    if ni.player.hasitem(36892)
                    or ni.player.hasitem(36893)
                    or ni.player.hasitem(36894) then
                        if ni.unit.hp("player") <= values.kamen then
                            if ni.unit.ttd("player") < 2 then
                                ni.player.useitem(36892)
                                ni.player.useitem(36893)
                                ni.player.useitem(36894)
                            end
                        end
                    end
                end
            end
        end
    end,
    --------------------------
    ["zelenka"] = function()
        if cache.PlayerCombat
        and enables["ik"]
        and ni.player.debuff("Пламя Легиона") then
            if ni.spell.available(spells.zelenka) then
                ni.spell.cast(spells.zelenka)
            end
        end
        if cache.PlayerCombat
        and enables["lana"]
        and ni.player.debuff("Роящиеся тени") then
            if ni.spell.available(spells.zelenka) then
                ni.spell.cast(spells.zelenka)
            end
        end
    end,
    --------------------------
    ["mor"] = function()
        if enables["mor"]
        and not cache.control
        and cache.PlayerCombat
        and cache.dots == true
        and cache.dots_obnov then
            local offcd, oncd = ni.rune.bloodrunecd()
            if offcd == 2
            and ni.spell.available(spells.krovootvod) then
                ni.spell.cast(spells.krovootvod)
                cache.pet = true
            end
            if ni.spell.available(spells.mor)
            and ni.spell.valid("target", spells.mor, false, true, true) then
                ni.spell.cast(spells.mor, "target")
                cache.pet = true
            end
        end
    end,
    --------------------------
    ["mor_aoe"] = function()
        if enables["mor_aoe"]
        and not cache.control
        and cache.PlayerCombat
        and cache.dots == true then
            local enemies = ni.unit.enemiesinrange("player", 10)
            for i = 1, #enemies do
                local target = enemies[i].guid
                if ni.unit.hpraw(target) > 100000
                and not ni.unit.debuff(target, 55078, "player")
                or not ni.unit.debuff(target, 55095, "player") then
                    if ni.spell.available(spells.mor)
                    and ni.spell.valid("target", spells.mor, false, true, true) then
                    ni.spell.cast(spells.mor, "target")
                    cache.pet = true
                    end
                end
            end
        end
    end,
    -----------------------------------
    ["buff"] = function()
        if enables["gorn"]
        and not ni.player.buff(spells.gorn)
        and ni.spell.available(spells.gorn) then
            ni.spell.cast(spells.gorn)
        end
        if enables["shild"]
        and not ni.player.buff(spells.shild)
        and ni.spell.available(spells.shild) then
            ni.spell.cast(spells.shild)
        end
        if enables["pet"] then
            local creator = ni.unit.creator("playerpet")
            if creator == nil
            and ni.spell.available(spells.pet) then
                ni.spell.cast(spells.pet)
            end
        end
    end,
    --------------------------
    ["oznob"] = function()
        if cache.PlayerCombat
        and not cache.control
        and not ni.unit.debuff("target", 55095, "player")
        and ni.spell.valid("target", spells.oznob, false, true, true)
        and ni.spell.available(spells.oznob) then
            ni.spell.cast(spells.oznob, "target")
            cache.pet = true
        end
    end,
    --------------------------
    ["chuma"] = function()
        if not cache.control
        and cache.PlayerCombat
        and not ni.unit.debuff("target", 55078, "player")
        and ni.spell.valid("target", spells.chuma, false, true, true)
        and ni.spell.available(spells.chuma) then
            ni.spell.cast(spells.chuma, "target")
            cache.pet = true
        end
    end,
    --------------------------
    ["krov_udar"] = function()
        if cache.PlayerCombat
        and not cache.control
        and cache.dots == true
        and ni.unit.buffremaining("player", 66803) < 1
        and ni.spell.valid("target", spells.krov_udar, false, true, true)
        and ni.spell.available(spells.krov_udar) then
            ni.spell.cast(spells.krov_udar, "target")
            cache.pet = true
        end
    end,
    --------------------------
    ["plet"] = function()
        if cache.PlayerCombat
        and not cache.control
        and cache.dots == true
        and ni.unit.buffremaining("player", 304806) < 1
        and ni.spell.valid("target", spells.plet, false, true, true)
        and ni.spell.available(spells.plet) then
            ni.spell.cast(spells.plet, "target")
            cache.pet = true
        end
    end,
    --------------------------
    ["char_rass"] = function()
        if cache.PlayerCombat
        and not cache.control
        and cache.dots == true
        and ni.spell.available(spells.char_rass) then
            ni.spell.cast(spells.char_rass, "player")
            cache.pet = true
          end
    end,
    --------------------------
    ["lik_buf"] = function()
        if cache.PlayerCombat
        and not cache.control
        and cache.dots == true
        and not ni.player.buff(304809)
        and ni.spell.valid("target", spells.lik, false, true, true)
        and ni.spell.available(spells.lik) then
            ni.spell.cast(spells.lik, "target")
            cache.pet = true
        end
    end,
    --------------------------
    ["garga"] = function()
        if cache.PlayerCombat
        and not cache.control
        and cache.dots == true then
            if ni.unit.isboss("target")
            or ni.vars.combat.cd then
                if ni.spell.valid("target", spells.garga, false, true, true)
                and ni.spell.available(spells.garga) then
                    ni.spell.cast(spells.garga, "target")
                    cache.pet = true
                end
            end
        end
    end,
    --------------------------
    ["usilenie"] = function()
        if cache.PlayerCombat
        and not cache.control
        and cache.dots == true
        and ni.power.current("player") < 80 then
            if ni.unit.isboss("target")
            or ni.vars.combat.cd then
                if ni.spell.available(spells.usilenie) then
                    ni.spell.cast(spells.usilenie)
                    cache.pet = true
                end
            end
        end
    end,
    --------------------------
    ["stoika_b"] = function()
        if enables["stoika"]
        and cache.PlayerCombat
        and cache.dots == true
        and not ni.player.buff(48266) then
            local offcd, oncd = ni.rune.bloodrunecd()
            if offcd == 2
            and ni.spell.available(spells.krovootvod) then
                ni.spell.cast(spells.krovootvod)
                cache.pet = true
            end
            if ni.spell.available(spells.stoika_b) then
                ni.spell.cast(spells.stoika_b)
                cache.pet = true
            end
        end
    end,
    --------------------------
    ["lik"] = function()
        if cache.PlayerCombat
        and not cache.control
        and ni.spell.valid("target", spells.lik, false, true, true)
        and ni.spell.available(spells.lik) then
            ni.spell.cast(spells.lik, "target")
            cache.pet = true
        end
    end,
    --------------------------
};
ni.bootstrap.profile("adk_by_makaren_wrath", queue, abilities, OnLoad, OnUnLoad);
elseif t4 > 1 then
    local enables = {
        ["target"] = true,
        ["shild"] = true,
        ["gorn"] = true,
        ["pet"] = true,
        ["stoika"] = true,
        ["ik"] = true,
        ["lana"] = true,
        ["nii"] = true,
        ["ss"] = true,
        ["kamen"] = true,
        ["mor"] = true,
    ["mor_aoe"] = true,
    ["kick"] = false,
    ["kick_2"] = false,
    ["kick_3"] = false,
    ["debug"] = false,
    }
    local values = {
        kamen = 30,
        ss = 20,
        nii = 30,
    }
    local inputs = {
        kiick = "",
    }
    local menus = {
    }
    local function GUICallback(key, item_type, value)
        if item_type == "enabled" then
            enables[key] = value;
        elseif item_type == "value" then
            values[key] = value;
        elseif item_type == "input" then
            inputs[key] = value;
        elseif item_type == "menu" then
            menus[key] = value;
        end
    end
    local items = {
        settingsfile = "adk_2t4_by_makaren.json",
        callback = GUICallback,
        { type = "title", text = "Adk_2T4 by |c0000CED1Makaren|r" },
        { type = "separator" },
        { type = "title", text = "|cffFF7C0AProfile version 2.0.0|r" },
        { type = "separator" },
        { type = "page", number = 1, text = "|cffFFFF00Общие настройки|r" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(6603).." Авто таргет", tooltip ="Автоматически выбирает таргет при его отсутствии", enabled = true, key = "target" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(48265).." Авто смена стоек", tooltip ="Автоматически меняет стойки", enabled = true, key = "stoika" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(57623).." Авто Горн", tooltip ="Автоматически используе Горн, при его отсутствии", enabled = true, key = "gorn" },
        { type = "entry", text = ni.spell.icon(49222).." Авто Костяной щит", tooltip ="Автоматически использует Костяной щит, при его отсутствии", enabled = true, key = "shild" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(46584).." Авто призыв Пета", tooltip ="Автоматически призывает пета, при его отсутствии", enabled = true, key = "pet" },
        { type = "separator" },
    { type = "entry", text = ni.spell.icon(24803).." Дебаг в чат", enabled = false, key = "debug" },
        { type = "page", number = 2, text = "|cffFFFF00Доп настройки|r" },
    	{ type = "separator" },		
	{ type = "entry", text = ni.spell.icon(50842).." Авто мор", tooltip ="Автоматически обновляет доты мором", enabled = true, key = "mor" },
        { type = "entry", text = ni.spell.icon(50842).." Авто мор аое", tooltip ="Автоматически разносит доты мором в аое", enabled = true, key = "mor_aoe" },
	{ type = "separator" },
    { type = "entry", text = ni.spell.icon(47528).." Автокик", tooltip ="Прерывает все заклинания", enabled = false, key = "kick" },
    { type = "entry", text = " Всех в радиусе действия", tooltip ="Прерывает всех в радиуе действия(не только таргет)", enabled = false, key = "kick_2" },
    { type = "entry", text = " Конкретный каст", tooltip ="Прерывает конкретный каст по имени", enabled = false, key = "kick_3" },
    {
		type = "input",
		value = inputs["kiick"],
		width = 140,
		height = 15,
		key = "kiick"
	},
        { type = "page", number = 3, text = "|cffFFFF00Умная зеленка|r" },
        { type = "entry", text = ni.spell.icon(48707)},
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(300996).." Пламя легиона", tooltip ="|cFF00FFFFИк/Ивк(Джараксус)|r", enabled = true, key = "ik" },
        { type = "entry", text = ni.spell.icon(71264).." Роящиеся тени", tooltip ="|cFF00FFFFЦлк(Лана'тель)|r", enabled = true, key = "lana" },
        { type = "page", number = 4, text = "|cffFFFF00Авто сейвы|r" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(48792).." Незыблемость льда", tooltip ="Использует Незыблемость льда при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 40, min = 1, max = 100, step = 1, key = "nii" },
        { type = "entry", text = ni.spell.icon(48743).." Смертельный союз", tooltip ="Использует Смертельный союз при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 20, min = 1, max = 100, step = 1, key = "ss" },
        { type = "entry", text = ni.spell.icon(11729).." Камень здоровья", tooltip ="Использует Огурец при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 30, min = 1, max = 100, step = 1, key = "kamen" },
    
    };
    local function OnLoad()
        ni.GUI.AddFrame("adk_2t4_by_makaren", items);
    end;
    local function OnUnLoad()  
        ni.GUI.DestroyFrame("adk_2t4_by_makaren");
    end;
    local cache = {
        sindra = false,
        PlayerCombat = false,
        aoe = false,
        info = true,
        dots = false,
        dots_obnov = false,
        pet = true,
        control = false,
        };
    local spells = {
        gorn = GetSpellInfo(57623),
        shild = GetSpellInfo(49222),
        pet = GetSpellInfo(46584),
        oznob = GetSpellInfo(49909),
        chuma = GetSpellInfo(49921),
        plet = GetSpellInfo(55271),
        luza = GetSpellInfo(49938),
        garga = GetSpellInfo(49206),
        lik = GetSpellInfo(49895),
        krov_udar = GetSpellInfo(49930),
        mor = GetSpellInfo(50842),
        char_rass = GetSpellInfo(316432),
        usilenie = GetSpellInfo(47568),
        stoika_b = GetSpellInfo(48266),
        stoika_a = GetSpellInfo(48265),
        krovootvod = GetSpellInfo(45529),
        zelenka = GetSpellInfo(48707),
        kick = GetSpellInfo(47528),
    
        };
    local ddebuffs ={
        sindra = GetSpellInfo(69766),
        sindra_metka = GetSpellInfo(70126),
        }
    local queue = {
        "info",
        "cache",
        "pause",
        "auto-target",
        "kick",
        "cd",
        "stoika_a",
        "save",
        "zelenka",
        "mor",
        "mor_aoe",
        "buff",
        "oznob",
        "chuma",
        "krov_udar",
        "plet",
        "char_rass",
        "lik_buf",
        "garga",
        "usilenie",
        "stoika_b",
        "lik",
    };
    local abilities = {
        -----------------------------------
        ["info"] = function()
            if cache.info == true
            and not ni.vars.coin then
                cache.info = false
                print("|cFFFF0000  =========================|r\
|cFFFFFFFFАнхоли Дк|r\
|cFFFF5A00Приватный профиль by Makaren|r\
|cFF00FFFFФанпей https://funpay.com/users/7303789/|r\
|cFF00FFFFДс https://discord.com/users/785141640087207966|r\
|cFF00FFFFДс Группы https://discord.gg/eQzcDHbVfm|r\
|cFFFF0000=========================|r")
            end
        end,
        ------------------------
        ["cache"] = function()
            cache.PlayerCombat = UnitAffectingCombat("player") or false;
            cache.sindra = ni.unit.debuffstacks("player", "Пронизывающая стужа") <= 7;
            if ni.unit.debuff("target", 55078, "player")
            and ni.unit.debuff("target", 55095, "player") then
                cache.dots = true
            else
                cache.dots = false
            end
            if ni.unit.debuffremaining("target", 55095, "player") < 2
            or ni.unit.debuffremaining("target", 55078, "player") < 2 then
                cache.dots_obnov = true
            else
                cache.dots_obnov = false
            end
            if ni.unit.debuff("target", "Сглаз") 
        or ni.unit.debuff("target", "Устрашающий крик") 
        or ni.unit.debuff("target", "Гнев деревьев") 
        or ni.unit.debuff("target", "Смерч") 
        or ni.unit.debuff("target", "Превращение") 
        or ni.unit.debuff("target", "Замораживающая ловушка") 
        or ni.unit.debuff("target", "Покаяние") 
        or ni.unit.debuff("target", "Ослепление") 
        or ni.unit.debuff("target", "Ошеломление") 
        or ni.unit.debuff("target", "Вой ужаса") 
        or ni.unit.debuff("target", "Изгнание") 
        or ni.unit.debuff("target", "Страх") 
        or ni.unit.debuff("target", "Спячка") 
        or ni.unit.debuff("target", "Отпугивание зверя") 
        or ni.unit.debuff("target", "Ментальный крик") then
            cache.control = true
        else
            cache.control = false
        end
        if enables["debug"] then
            ni.vars.debug = true
        else
            ni.vars.debug = false
        end
        end,
        ------------------------
    ["pause"] = function()
        if IsMounted()
		or UnitInVehicle("player")
		or UnitIsDeadOrGhost("player")
		or UnitChannelInfo("player")
		or UnitCastingInfo("player")
		or ni.player.islooting()
        or not cache.sindra then
			return true;
		end
    end,
        -----------------------------------
        ["auto-target"] = function()
            local target_ = ni.objects["target"];
            local target__ = target_.guid
            if enables["target"]
            and cache.PlayerCombat then
                if target__ == 0 then
                    ni.player.runtext("/startattack")
                end
                if ni.objectmanager.contains("Король-лич") then
                    local lich = ni.objectmanager.objectGUID("Король-лич")
                    local spell, _, _, _, _, endTime = UnitChannelInfo(lich)
                    if spell == ("Беспощадность зимы") then
                        ni.player.runtext("/petfollow")
                    elseif cache.pet == true then
                        ni.player.runtext("/petattack")
                        cache.pet = false
                    end
                elseif cache.pet == true then
                    ni.player.runtext("/petattack")
                    cache.pet = false
                end
            end
        end,
        -----------------------------------
        ["kick"] = function()
            if enables["kick_3"] then
                if enables["kick"] then
                    if enables["kick_2"] then
                        local enemies = ni.unit.enemiesinrange("player", 25)
                        for i = 1, #enemies do
                            local target = enemies[i].guid
                            if ni.unit.iscasting(target)
                            or ni.unit.ischanneling(target) then
                                local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(target)
                                if inputs.kiick == ""
                                or inputs.kiick == spell then
                                    if ni.spell.available(spells.kick)
                                and interrupt == false
                                and ni.spell.valid(target, spells.kick, false, true, true) then
                                    ni.spell.cast(spells.kick, target)
                                end
                                end
                            end
                        end 
                    elseif ni.unit.iscasting("target")
                    or ni.unit.ischanneling("target") then
                        local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("target")
                        if ni.spell.available(spells.kick)
                        and interrupt == false
                        and ni.spell.valid("target", spells.kick, false, true, true) then
                            ni.spell.cast(spells.kick)
                        end
                    end
                end
            else
                if enables["kick"] then
                    if enables["kick_2"] then
                        local enemies = ni.unit.enemiesinrange("player", 25)
                        for i = 1, #enemies do
                            local target = enemies[i].guid
                            if ni.unit.iscasting(target)
                            or ni.unit.ischanneling(target) then
                                local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(target)
                                if ni.spell.available(spells.kick)
                                and interrupt == false
                                and ni.spell.valid(target, spells.kick, false, true, true) then
                                    ni.spell.cast(spells.kick, target)
                                end
                            end
                        end 
                    elseif ni.unit.iscasting("target")
                    or ni.unit.ischanneling("target") then
                        local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("target")
                        if ni.spell.available(spells.kick)
                        and interrupt == false
                        and ni.spell.valid("target", spells.kick, false, true, true) then
                            ni.spell.cast(spells.kick)
                        end
                    end
                end
            end
        end,
        --------------------------
        ["cd"] = function()
            if cache.PlayerCombat then
                count = GetItemCount("Фрагмент души")
            if ni.spell.available(316466)
            and not ni.unit.buff("player", 316466) then
                if count > 1 
                or ni.unit.hp("target") < 10 then
                    ni.spell.cast(316466)
                end
            end
                if ni.spell.available(316422) then
                ni.spell.cast(316422)
            end
                if ni.spell.available(316445) then
                    ni.spell.cast(316445)
                end
                if ni.spell.available(316295) then
                    ni.spell.cast(316295)
                end
                if ni.unit.buff("player", 316440)
                and cache.PlayerCombat
                and ni.player.hasitem(50085) then
                    ni.player.useitem(50085)
                end
                if ni.player.slotcastable(10)
                and ni.player.slotcd(10) == 0 then
                    ni.player.useinventoryitem(10)
                end
                if ni.player.slotcastable(13)
                and ni.player.slotcd(13) == 0 then
                    ni.player.useinventoryitem(13)
                end
                if ni.player.slotcastable(14)
                and ni.player.slotcd(14) == 0 then
                    ni.player.useinventoryitem(14)
                end
                if ni.spell.available(319326) then
                    ni.spell.cast(319326)
                end
                if ni.spell.available(316396)
            and ni.spell.valid("target", 316396, false, true, true) then
                ni.spell.cast(316396)
            end
            end
        end,
        --------------------------
        ["stoika_a"] = function()
            if enables["stoika"]
            and not cache.PlayerCombat
            and not ni.player.buff(48265) then
                if ni.spell.available(spells.stoika_a) then
                    ni.spell.cast(spells.stoika_a)
                end
            end
        end,
        --------------------------
        ["save"] = function()
            if cache.PlayerCombat then
                if enables["nii"]
                and ni.unit.hp("player") <= values.nii then
                    if ni.unit.ttd("player") < 3
                    and ni.spell.available(spells.ni) then
                        ni.spell.cast(spells.ni)
                    end
                end
                if enables["ss"]
                and ni.unit.hp("player") <= values.ss then
                    local creator = ni.unit.creator("playerpet")
                    if ni.unit.ttd("player") < 2
                    and creator ~= nil
                    and ni.spell.available(spells.ss) then
                        ni.spell.cast(spells.ss)
                    end
                end
                local startTime, duration, enable = GetItemCooldown(36892)
                local startTime_, duration, enable = GetItemCooldown(36893)
                local startTime__, duration, enable = GetItemCooldown(36894)
                if enables["kamen"] then
                    if startTime == 0
                    and startTime_ == 0
                    and startTime__ == 0 then
                        if ni.player.hasitem(36892)
                        or ni.player.hasitem(36893)
                        or ni.player.hasitem(36894) then
                            if ni.unit.hp("player") <= values.kamen then
                                if ni.unit.ttd("player") < 2 then
                                    ni.player.useitem(36892)
                                    ni.player.useitem(36893)
                                    ni.player.useitem(36894)
                                end
                            end
                        end
                    end
                end
            end
        end,
        --------------------------
        ["zelenka"] = function()
            if cache.PlayerCombat
            and enables["ik"]
            and ni.player.debuff("Пламя Легиона") then
                if ni.spell.available(spells.zelenka) then
                    ni.spell.cast(spells.zelenka)
                end
            end
            if cache.PlayerCombat
            and enables["lana"]
            and ni.player.debuff("Роящиеся тени") then
                if ni.spell.available(spells.zelenka) then
                    ni.spell.cast(spells.zelenka)
                end
            end
        end,
        --------------------------
        ["mor"] = function()
            if enables["mor"]
            and not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and cache.dots_obnov then
                local offcd, oncd = ni.rune.bloodrunecd()
                if offcd == 2
                and ni.spell.available(spells.krovootvod) then
                    ni.spell.cast(spells.krovootvod)
                    cache.pet = true
                end
                if ni.spell.available(spells.mor)
                and ni.spell.valid("target", spells.mor, false, true, true) then
                    ni.spell.cast(spells.mor, "target")
                    cache.pet = true
                end
            end
        end,
        --------------------------
        ["mor_aoe"] = function()
            if enables["mor_aoe"]
            and not cache.control
            and cache.PlayerCombat
            and cache.dots == true then
                local enemies = ni.unit.enemiesinrange("player", 10)
                for i = 1, #enemies do
                    local target = enemies[i].guid
                    if ni.unit.hpraw(target) > 100000
                    and not ni.unit.debuff(target, 55078, "player")
                    or not ni.unit.debuff(target, 55095, "player") then
                        if ni.spell.available(spells.mor)
                        and ni.spell.valid("target", spells.mor, false, true, true) then
                        ni.spell.cast(spells.mor, "target")
                        cache.pet = true
                        end
                    end
                end
            end
        end,
        -----------------------------------
        ["buff"] = function()
            if enables["gorn"]
            and not ni.player.buff(spells.gorn)
            and ni.spell.available(spells.gorn) then
                ni.spell.cast(spells.gorn)
            end
            if enables["shild"]
            and not ni.player.buff(spells.shild)
            and ni.spell.available(spells.shild) then
                ni.spell.cast(spells.shild)
            end
            if enables["pet"] then
                local creator = ni.unit.creator("playerpet")
                if creator == nil
                and ni.spell.available(spells.pet) then
                    ni.spell.cast(spells.pet)
                end
            end
        end,
        --------------------------
        ["oznob"] = function()
            if not cache.control
            and cache.PlayerCombat
            and not ni.unit.debuff("target", 55095, "player")
            and ni.spell.valid("target", spells.oznob, false, true, true)
            and ni.spell.available(spells.oznob) then
                ni.spell.cast(spells.oznob, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["chuma"] = function()
            if not cache.control
            and cache.PlayerCombat
            and not ni.unit.debuff("target", 55078, "player")
            and ni.spell.valid("target", spells.chuma, false, true, true)
            and ni.spell.available(spells.chuma) then
                ni.spell.cast(spells.chuma, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["krov_udar"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.unit.buffremaining("player", 66803) < 1
            and ni.spell.valid("target", spells.krov_udar, false, true, true)
            and ni.spell.available(spells.krov_udar) then
                ni.spell.cast(spells.krov_udar, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["plet"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.unit.buffremaining("player", 304806) < 1
            and ni.spell.valid("target", spells.plet, false, true, true)
            and ni.spell.available(spells.plet) then
                ni.spell.cast(spells.plet, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["char_rass"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.spell.available(spells.char_rass) then
                ni.spell.cast(spells.char_rass, "player")
                cache.pet = true
              end
        end,
        --------------------------
        ["lik_buf"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and not ni.player.buff(304809)
            and ni.spell.valid("target", spells.lik, false, true, true)
            and ni.spell.available(spells.lik) then
                ni.spell.cast(spells.lik, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["garga"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true then
                if ni.unit.isboss("target")
                or ni.vars.combat.cd then
                    if ni.spell.valid("target", spells.garga, false, true, true)
                    and ni.spell.available(spells.garga) then
                        ni.spell.cast(spells.garga, "target")
                        cache.pet = true
                    end
                end
            end
        end,
        --------------------------
        ["usilenie"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.power.current("player") < 80 then
                if ni.unit.isboss("target")
                or ni.vars.combat.cd then
                    if ni.spell.available(spells.usilenie) then
                        ni.spell.cast(spells.usilenie)
                        cache.pet = true
                    end
                end
            end
        end,
        --------------------------
        ["stoika_b"] = function()
            if enables["stoika"]
            and cache.PlayerCombat
            and cache.dots == true
            and not ni.player.buff(48266) then
                local offcd, oncd = ni.rune.bloodrunecd()
                if offcd == 2
                and ni.spell.available(spells.krovootvod) then
                    ni.spell.cast(spells.krovootvod)
                    cache.pet = true
                end
                if ni.spell.available(spells.stoika_b) then
                    ni.spell.cast(spells.stoika_b)
                    cache.pet = true
                end
            end
        end,
        --------------------------
        ["lik"] = function()
            if not cache.control
            and cache.PlayerCombat
            and ni.spell.valid("target", spells.lik, false, true, true)
            and ni.spell.available(spells.lik) then
                ni.spell.cast(spells.lik, "target")
                cache.pet = true
            end
        end,
        --------------------------
    };
    ni.bootstrap.profile("adk_by_makaren_wrath", queue, abilities, OnLoad, OnUnLoad);
else
    local enables = {
        ["target"] = true,
        ["shild"] = true,
        ["gorn"] = true,
        ["pet"] = true,
        ["stoika"] = true,
        ["ik"] = true,
        ["lana"] = true,
        ["nii"] = true,
        ["ss"] = true,
        ["kamen"] = true,
        ["mor"] = true,
    ["mor_aoe"] = true,
    ["kick"] = false,
    ["kick_2"] = false,
    ["kick_3"] = false,
    ["debug"] = false,
    }
    local values = {
        kamen = 30,
        ss = 20,
        nii = 30,
    }
    local inputs = {
        kiick = "",
    }
    local menus = {
    }
    local function GUICallback(key, item_type, value)
        if item_type == "enabled" then
            enables[key] = value;
        elseif item_type == "value" then
            values[key] = value;
        elseif item_type == "input" then
            inputs[key] = value;
        elseif item_type == "menu" then
            menus[key] = value;
        end
    end
    local items = {
        settingsfile = "adk_by_makaren_wrath.json",
        callback = GUICallback,
        { type = "title", text = "Adk by |c0000CED1Makaren|r" },
        { type = "separator" },
        { type = "title", text = "|cffFF7C0AProfile version 2.0.0|r" },
        { type = "separator" },
        { type = "page", number = 1, text = "|cffFFFF00Общие настройки|r" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(6603).." Авто таргет", tooltip ="Автоматически выбирает таргет при его отсутствии", enabled = true, key = "target" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(48265).." Авто смена стоек", tooltip ="Автоматически меняет стойки", enabled = true, key = "stoika" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(57623).." Авто Горн", tooltip ="Автоматически используе Горн, при его отсутствии", enabled = true, key = "gorn" },
        { type = "entry", text = ni.spell.icon(49222).." Авто Костяной щит", tooltip ="Автоматически использует Костяной щит, при его отсутствии", enabled = true, key = "shild" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(46584).." Авто призыв Пета", tooltip ="Автоматически призывает пета, при его отсутствии", enabled = true, key = "pet" },
        { type = "separator" },
    { type = "entry", text = ni.spell.icon(24803).." Дебаг в чат", enabled = false, key = "debug" },
        { type = "page", number = 2, text = "|cffFFFF00Доп настройки|r" },
    	{ type = "separator" },	
	{ type = "entry", text = ni.spell.icon(50842).." Авто мор", tooltip ="Автоматически обновляет доты мором", enabled = true, key = "mor" },
        { type = "entry", text = ni.spell.icon(50842).." Авто мор аое", tooltip ="Автоматически разносит доты мором в аое", enabled = true, key = "mor_aoe" },
	{ type = "separator" },
    { type = "entry", text = ni.spell.icon(47528).." Автокик", tooltip ="Прерывает все заклинания", enabled = false, key = "kick" },
    { type = "entry", text = " Всех в радиусе действия", tooltip ="Прерывает всех в радиуе действия(не только таргет)", enabled = false, key = "kick_2" },
    { type = "entry", text = " Конкретный каст", tooltip ="Прерывает конкретный каст по имени", enabled = false, key = "kick_3" },
    {
		type = "input",
		value = inputs["kiick"],
		width = 140,
		height = 15,
		key = "kiick"
	},
        { type = "page", number = 3, text = "|cffFFFF00Умная зеленка|r" },
        { type = "entry", text = ni.spell.icon(48707)},
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(300996).." Пламя легиона", tooltip ="|cFF00FFFFИк/Ивк(Джараксус)|r", enabled = true, key = "ik" },
        { type = "entry", text = ni.spell.icon(71264).." Роящиеся тени", tooltip ="|cFF00FFFFЦлк(Лана'тель)|r", enabled = true, key = "lana" },
        { type = "page", number = 4, text = "|cffFFFF00Авто сейвы|r" },
        { type = "separator" },
        { type = "entry", text = ni.spell.icon(48792).." Незыблемость льда", tooltip ="Использует Незыблемость льда при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 40, min = 1, max = 100, step = 1, key = "nii" },
        { type = "entry", text = ni.spell.icon(48743).." Смертельный союз", tooltip ="Использует Смертельный союз при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 20, min = 1, max = 100, step = 1, key = "ss" },
        { type = "entry", text = ni.spell.icon(11729).." Камень здоровья", tooltip ="Использует Огурец при |cFF00FF00Hp <|r\
Работает в связке с функцией TTD(Time To Die)", enabled = true, value = 30, min = 1, max = 100, step = 1, key = "kamen" },
    
    };
    local function OnLoad()
        ni.GUI.AddFrame("adk_by_makaren_wrath", items);
    end;
    local function OnUnLoad()  
        ni.GUI.DestroyFrame("adk_by_makaren_wrath");
    end;
    local cache = {
        sindra = false,
        PlayerCombat = false,
        aoe = false,
        info = true,
        offcd = false,
        dots = false,
        dots_obnov = false,
        pet = true,
        control = false,
        };
    local spells = {
        gorn = GetSpellInfo(57623),
        shild = GetSpellInfo(49222),
        pet = GetSpellInfo(46584),
        oznob = GetSpellInfo(49909),
        chuma = GetSpellInfo(49921),
        plet = GetSpellInfo(55271),
        luza = GetSpellInfo(49938),
        garga = GetSpellInfo(49206),
        lik = GetSpellInfo(49895),
        krov_udar = GetSpellInfo(49930),
        mor = GetSpellInfo(50842),
        char_rass = GetSpellInfo(316432),
        usilenie = GetSpellInfo(47568),
        stoika_b = GetSpellInfo(48266),
        stoika_a = GetSpellInfo(48265),
        krovootvod = GetSpellInfo(45529),
        zelenka = GetSpellInfo(48707),
        kick = GetSpellInfo(47528),
    
        };
    local ddebuffs ={
        sindra = GetSpellInfo(69766),
        sindra_metka = GetSpellInfo(70126),
        }
    local queue = {
        "info",
        "cache",
        "pause",
        "auto-target",
        "kick",
        "cd",
        "stoika_a",
        "save",
        "zelenka",
        "mor",
        "mor_aoe",
        "buff",
        "oznob",
        "chuma",
        "krov_udar",
        "plet",
        "char_rass",
        "garga",
        "usilenie",
        "stoika_b",
        "lik",
    };
    local abilities = {
        -----------------------------------
        ["info"] = function()
            if cache.info == true
            and not ni.vars.coin then
                cache.info = false
                print("|cFFFF0000  =========================|r\
|cFFFFFFFFАнхоли Дк|r\
|cFFFF5A00Приватный профиль by Makaren|r\
|cFF00FFFFФанпей https://funpay.com/users/7303789/|r\
|cFF00FFFFДс https://discord.com/users/785141640087207966|r\
|cFF00FFFFДс Группы https://discord.gg/eQzcDHbVfm|r\
|cFFFF0000=========================|r")
            end
        end,
        ------------------------
        ["cache"] = function()
            local offcd, oncd = ni.rune.bloodrunecd()
            cache.offcd = offcd
            cache.PlayerCombat = UnitAffectingCombat("player") or false;
            cache.sindra = ni.unit.debuffstacks("player", "Пронизывающая стужа") <= 7;
            if ni.unit.debuff("target", 55078, "player")
            and ni.unit.debuff("target", 55095, "player") then
                cache.dots = true
            else
                cache.dots = false
            end
            if ni.unit.debuffremaining("target", 55095, "player") < 2
            or ni.unit.debuffremaining("target", 55078, "player") < 2 then
                cache.dots_obnov = true
            else
                cache.dots_obnov = false
            end
            if ni.unit.debuff("target", "Сглаз") 
        or ni.unit.debuff("target", "Устрашающий крик") 
        or ni.unit.debuff("target", "Гнев деревьев") 
        or ni.unit.debuff("target", "Смерч") 
        or ni.unit.debuff("target", "Превращение") 
        or ni.unit.debuff("target", "Замораживающая ловушка") 
        or ni.unit.debuff("target", "Покаяние") 
        or ni.unit.debuff("target", "Ослепление") 
        or ni.unit.debuff("target", "Ошеломление") 
        or ni.unit.debuff("target", "Вой ужаса") 
        or ni.unit.debuff("target", "Изгнание") 
        or ni.unit.debuff("target", "Страх") 
        or ni.unit.debuff("target", "Спячка") 
        or ni.unit.debuff("target", "Отпугивание зверя") 
        or ni.unit.debuff("target", "Ментальный крик") then
            cache.control = true
        else
            cache.control = false
        end
        if enables["debug"] then
            ni.vars.debug = true
        else
            ni.vars.debug = false
        end
        end,
        ------------------------
    ["pause"] = function()
        if IsMounted()
		or UnitInVehicle("player")
		or UnitIsDeadOrGhost("player")
		or UnitChannelInfo("player")
		or UnitCastingInfo("player")
		or ni.player.islooting()
        or not cache.sindra then
			return true;
		end
    end,
        -----------------------------------
        ["auto-target"] = function()
            local target_ = ni.objects["target"];
            local target__ = target_.guid
            if enables["target"]
            and cache.PlayerCombat then
                if target__ == 0 then
                    ni.player.runtext("/startattack")
                end
                if ni.objectmanager.contains("Король-лич") then
                    local lich = ni.objectmanager.objectGUID("Король-лич")
                    local spell, _, _, _, _, endTime = UnitChannelInfo(lich)
                    if spell == ("Беспощадность зимы") then
                        ni.player.runtext("/petfollow")
                    elseif cache.pet == true then
                        ni.player.runtext("/petattack")
                        cache.pet = false
                    end
                elseif cache.pet == true then
                    ni.player.runtext("/petattack")
                    cache.pet = false
                end
            end
        end,
        -----------------------------------
        ["kick"] = function()
            if enables["kick_3"] then
                if enables["kick"] then
                    if enables["kick_2"] then
                        local enemies = ni.unit.enemiesinrange("player", 25)
                        for i = 1, #enemies do
                            local target = enemies[i].guid
                            if ni.unit.iscasting(target)
                            or ni.unit.ischanneling(target) then
                                local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(target)
                                if inputs.kiick == ""
                                or inputs.kiick == spell then
                                    if ni.spell.available(spells.kick)
                                and interrupt == false
                                and ni.spell.valid(target, spells.kick, false, true, true) then
                                    ni.spell.cast(spells.kick, target)
                                end
                                end
                            end
                        end 
                    elseif ni.unit.iscasting("target")
                    or ni.unit.ischanneling("target") then
                        local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("target")
                        if ni.spell.available(spells.kick)
                        and interrupt == false
                        and ni.spell.valid("target", spells.kick, false, true, true) then
                            ni.spell.cast(spells.kick)
                        end
                    end
                end
            else
                if enables["kick"] then
                    if enables["kick_2"] then
                        local enemies = ni.unit.enemiesinrange("player", 25)
                        for i = 1, #enemies do
                            local target = enemies[i].guid
                            if ni.unit.iscasting(target)
                            or ni.unit.ischanneling(target) then
                                local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(target)
                                if ni.spell.available(spells.kick)
                                and interrupt == false
                                and ni.spell.valid(target, spells.kick, false, true, true) then
                                    ni.spell.cast(spells.kick, target)
                                end
                            end
                        end 
                    elseif ni.unit.iscasting("target")
                    or ni.unit.ischanneling("target") then
                        local spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("target")
                        if ni.spell.available(spells.kick)
                        and interrupt == false
                        and ni.spell.valid("target", spells.kick, false, true, true) then
                            ni.spell.cast(spells.kick)
                        end
                    end
                end
            end
        end,
        --------------------------
        ["cd"] = function()
            if cache.PlayerCombat then
                count = GetItemCount("Фрагмент души")
            if ni.spell.available(316466)
            and not ni.unit.buff("player", 316466) then
                if count > 1 
                or ni.unit.hp("target") < 10 then
                    ni.spell.cast(316466)
                end
            end
                if ni.spell.available(316422) then
                ni.spell.cast(316422)
            end
                if ni.spell.available(316445) then
                    ni.spell.cast(316445)
                end
                if ni.spell.available(316295) then
                    ni.spell.cast(316295)
                end
                if ni.unit.buff("player", 316440)
                and cache.PlayerCombat
                and ni.player.hasitem(50085) then
                    ni.player.useitem(50085)
                end
                if ni.player.slotcastable(10)
                and ni.player.slotcd(10) == 0 then
                    ni.player.useinventoryitem(10)
                end
                if ni.player.slotcastable(13)
                and ni.player.slotcd(13) == 0 then
                    ni.player.useinventoryitem(13)
                end
                if ni.player.slotcastable(14)
                and ni.player.slotcd(14) == 0 then
                    ni.player.useinventoryitem(14)
                end
                if ni.spell.available(319326) then
                    ni.spell.cast(319326)
                end
                if ni.spell.available(316396)
            and ni.spell.valid("target", 316396, false, true, true) then
                ni.spell.cast(316396)
            end
            end
        end,
        --------------------------
        ["stoika_a"] = function()
            if enables["stoika"]
            and not cache.PlayerCombat
            and not ni.player.buff(48265) then
                if ni.spell.available(spells.stoika_a) then
                    ni.spell.cast(spells.stoika_a)
                end
            end
        end,
        --------------------------
        ["save"] = function()
            if cache.PlayerCombat then
                if enables["nii"]
                and ni.unit.hp("player") <= values.nii then
                    if ni.unit.ttd("player") < 3
                    and ni.spell.available(spells.ni) then
                        ni.spell.cast(spells.ni)
                    end
                end
                if enables["ss"]
                and ni.unit.hp("player") <= values.ss then
                    local creator = ni.unit.creator("playerpet")
                    if ni.unit.ttd("player") < 2
                    and creator ~= nil
                    and ni.spell.available(spells.ss) then
                        ni.spell.cast(spells.ss)
                    end
                end
                local startTime, duration, enable = GetItemCooldown(36892)
                local startTime_, duration, enable = GetItemCooldown(36893)
                local startTime__, duration, enable = GetItemCooldown(36894)
                if enables["kamen"] then
                    if startTime == 0
                    and startTime_ == 0
                    and startTime__ == 0 then
                        if ni.player.hasitem(36892)
                        or ni.player.hasitem(36893)
                        or ni.player.hasitem(36894) then
                            if ni.unit.hp("player") <= values.kamen then
                                if ni.unit.ttd("player") < 2 then
                                    ni.player.useitem(36892)
                                    ni.player.useitem(36893)
                                    ni.player.useitem(36894)
                                end
                            end
                        end
                    end
                end
            end
        end,
        --------------------------
        ["zelenka"] = function()
            if cache.PlayerCombat
            and enables["ik"]
            and ni.player.debuff("Пламя Легиона") then
                if ni.spell.available(spells.zelenka) then
                    ni.spell.cast(spells.zelenka)
                end
            end
            if cache.PlayerCombat
            and enables["lana"]
            and ni.player.debuff("Роящиеся тени") then
                if ni.spell.available(spells.zelenka) then
                    ni.spell.cast(spells.zelenka)
                end
            end
        end,
        --------------------------
        ["mor"] = function()
            if enables["mor"]
            and not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and cache.dots_obnov then
                local offcd, oncd = ni.rune.bloodrunecd()
                if offcd == 2
                and ni.spell.available(spells.krovootvod) then
                    ni.spell.cast(spells.krovootvod)
                    cache.pet = true
                end
                if ni.spell.available(spells.mor)
                and ni.spell.valid("target", spells.mor, false, true, true) then
                    ni.spell.cast(spells.mor, "target")
                    cache.pet = true
                end
            end
        end,
        --------------------------
        ["mor_aoe"] = function()
            if enables["mor_aoe"]
            and not cache.control
            and cache.PlayerCombat
            and cache.dots == true then
                local enemies = ni.unit.enemiesinrange("player", 10)
                for i = 1, #enemies do
                    local target = enemies[i].guid
                    if ni.unit.hpraw(target) > 100000
                    and not ni.unit.debuff(target, 55078, "player")
                    or not ni.unit.debuff(target, 55095, "player") then
                        if ni.spell.available(spells.mor)
                        and ni.spell.valid("target", spells.mor, false, true, true) then
                        ni.spell.cast(spells.mor, "target")
                        cache.pet = true
                        end
                    end
                end
            end
        end,
        -----------------------------------
        ["buff"] = function()
            if enables["gorn"]
            and not ni.player.buff(58646)
            and not ni.player.buff(spells.gorn)
            and ni.spell.available(spells.gorn) then
                ni.spell.cast(spells.gorn)
            end
            if enables["shild"]
            and not ni.player.buff(spells.shild)
            and ni.spell.available(spells.shild) then
                ni.spell.cast(spells.shild)
            end
            if enables["pet"] then
                local creator = ni.unit.creator("playerpet")
                if creator == nil
                and ni.spell.available(spells.pet) then
                    ni.spell.cast(spells.pet)
                end
            end
        end,
        --------------------------
        ["oznob"] = function()
            if not cache.control
            and cache.PlayerCombat
            and not ni.unit.debuff("target", 55095, "player")
            and ni.spell.valid("target", spells.oznob, false, true, true)
            and ni.spell.available(spells.oznob) then
                ni.spell.cast(spells.oznob, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["chuma"] = function()
            if not cache.control
            and cache.PlayerCombat
            and not ni.unit.debuff("target", 55078, "player")
            and ni.spell.valid("target", spells.chuma, false, true, true)
            and ni.spell.available(spells.chuma) then
                ni.spell.cast(spells.chuma, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["krov_udar"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true then
                if ni.unit.buffremaining("player", 66803) < 1
                or cache.offcd == 0 then
                    if ni.spell.valid("target", spells.krov_udar, false, true, true)
                    and ni.spell.available(spells.krov_udar) then
                        ni.spell.cast(spells.krov_udar, "target")
                        cache.pet = true
                    end
                end
            end
        end,
        --------------------------
        ["plet"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.spell.valid("target", spells.plet, false, true, true)
            and ni.spell.available(spells.plet) then
                ni.spell.cast(spells.plet, "target")
                cache.pet = true
            end
        end,
        --------------------------
        ["char_rass"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.spell.available(spells.char_rass) then
                ni.spell.cast(spells.char_rass, "player")
              end
        end,
        --------------------------
        ["garga"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true then
                if ni.unit.isboss("target")
                or ni.vars.combat.cd then
                    if ni.spell.valid("target", spells.garga, false, true, true)
                    and ni.spell.available(spells.garga) then
                        ni.spell.cast(spells.garga, "target")
                        cache.pet = true
                    end
                end
            end
        end,
        --------------------------
        ["usilenie"] = function()
            if not cache.control
            and cache.PlayerCombat
            and cache.dots == true
            and ni.power.current("player") < 80 then
                if ni.unit.isboss("target")
                or ni.vars.combat.cd then
                    if ni.spell.available(spells.usilenie) then
                        ni.spell.cast(spells.usilenie)
                        cache.pet = true
                    end
                end
            end
        end,
        --------------------------
        ["stoika_b"] = function()
            if enables["stoika"]
            and cache.PlayerCombat
            and cache.dots == true
            and not ni.player.buff(48266) then
                local offcd, oncd = ni.rune.bloodrunecd()
                if offcd == 2
                and ni.spell.available(spells.krovootvod) then
                    ni.spell.cast(spells.krovootvod)
                    cache.pet = true
                end
                if ni.spell.available(spells.stoika_b) then
                    ni.spell.cast(spells.stoika_b)
                    cache.pet = true
                end
            end
        end,
        --------------------------
        ["lik"] = function()
            if not cache.control
            and cache.PlayerCombat
            and ni.spell.valid("target", spells.lik, false, true, true)
            and ni.spell.available(spells.lik) then
                ni.spell.cast(spells.lik, "target")
                cache.pet = true
            end
        end,
        --------------------------
    };
		ni.bootstrap.profile("adk_by_makaren_wrath", queue, abilities, OnLoad, OnUnLoad);
	end
else
	local queue = {
        "Error",
    };
    local abilities = {
        ["Error"] = function()
            ni.vars.profiles.enabled = false;
			if not Sirus then
				ni.frames.floatingtext:message("Only for SIRUS.SU")
			end
        end,
    };
    ni.bootstrap.profile("adk_by_makaren_wrath", queue, abilities);
end;