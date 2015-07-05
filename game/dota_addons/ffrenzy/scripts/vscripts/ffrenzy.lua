print ('[FFrenzy] ffrenzy.lua' )

----------------

CORPSE_MODEL = "models/creeps/neutral_creeps/n_creep_troll_skeleton/n_creep_troll_skeleton_fx.vmdl"
CORPSE_DURATION = 88

----------------

-- GameRules Variables
ENABLE_HERO_RESPAWN = true              -- Should the heroes automatically respawn on a timer or stay dead until manually respawned
UNIVERSAL_SHOP_MODE = false             -- Should the main shop contain Secret Shop items as well as regular items
ALLOW_SAME_HERO_SELECTION = true        -- Should we let people select the same hero as each other

HERO_SELECTION_TIME = 1.0              -- How long should we let people select their hero?
PRE_GAME_TIME = 30.0                    -- How long after people select their heroes should the horn blow and the game start?
POST_GAME_TIME = 60.0                   -- How long should we let people look at the scoreboard before closing the server automatically?
TREE_REGROW_TIME = 60.0                 -- How long should it take individual trees to respawn after being cut down/destroyed?

GOLD_PER_TICK = 0                     -- How much gold should players get per tick?
GOLD_TICK_TIME = 0                      -- How long should we wait in seconds between gold ticks?

RECOMMENDED_BUILDS_DISABLED = false     -- Should we disable the recommened builds for heroes (Note: this is not working currently I believe)
CAMERA_DISTANCE_OVERRIDE = 1200.0        -- How far out should we allow the camera to go?  1134 is the default in Dota

MINIMAP_ICON_SIZE = 1                   -- What icon size should we use for our heroes?
MINIMAP_CREEP_ICON_SIZE = 1             -- What icon size should we use for creeps?
MINIMAP_RUNE_ICON_SIZE = 1              -- What icon size should we use for runes?

RUNE_SPAWN_TIME = 120                    -- How long in seconds should we wait between rune spawns?
CUSTOM_BUYBACK_COST_ENABLED = true      -- Should we use a custom buyback cost setting?
CUSTOM_BUYBACK_COOLDOWN_ENABLED = true  -- Should we use a custom buyback time?
BUYBACK_ENABLED = false                 -- Should we allow people to buyback when they die?

DISABLE_FOG_OF_WAR_ENTIRELY = false      -- Should we disable fog of war entirely for both teams?
USE_STANDARD_HERO_GOLD_BOUNTY = true    -- Should we give gold for hero kills the same as in Dota, or allow those values to be changed?

USE_CUSTOM_TOP_BAR_VALUES = true        -- Should we do customized top bar values or use the default kill count per team?
TOP_BAR_VISIBLE = true                  -- Should we display the top bar score/count at all?
SHOW_KILLS_ON_TOPBAR = true             -- Should we display kills only on the top bar? (No denies, suicides, kills by neutrals)  Requires USE_CUSTOM_TOP_BAR_VALUES

ENABLE_TOWER_BACKDOOR_PROTECTION = false  -- Should we enable backdoor protection for our towers?
REMOVE_ILLUSIONS_ON_DEATH = false       -- Should we remove all illusions if the main hero dies?
DISABLE_GOLD_SOUNDS = false             -- Should we disable the gold sound when players get gold?

USE_CUSTOM_HERO_LEVELS = false           -- Should we allow heroes to have custom levels?
MAX_LEVEL = 25                          -- What level should we let heroes get to?
USE_CUSTOM_XP_VALUES = false             -- Should we use custom XP values to level up heroes, or the default Dota numbers?


local team_a_counter = 0
local team_b_counter = 0
local team_c_counter = 0
local team_d_counter = 0

-- Change these at will
local testing = true
local testingUnits = true
local testingLevels = true
local filmmaker = false

-- Making sure the testing values never go to the main client
if not Convars:GetBool("developer") then
    testing = false
    testingUnits = false
    testingLevels = false
	filmmaker = false
end


if GameMode == nil then
    print ( '[FFrenzy] Creating Footmen Frenzy game mode' )
    GameMode = class({})
end

-- This function initializes the game mode and is called before anyone loads into the game
-- It can be used to pre-initialize any values/tables that will be needed later
function GameMode:InitGameMode()
    GameMode = self
    print('[FFrenzy] Starting to load gamemode...')

    -- MultiTeam
    GameRules.TeamColors = {}
    GameRules.TeamColors[DOTA_TEAM_GOODGUYS] = { 61, 210, 150 }    -- Teal - Team #2
    GameRules.TeamColors[DOTA_TEAM_BADGUYS]  = { 243, 201, 9 }     -- Yellow - Team #3
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_1] = { 197, 77, 168 }    -- Pink - Team #6
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_2] = { 255, 108, 0 }     -- Orange - Team #7
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_3] = { 52, 85, 255 }     -- Blue - Team #8
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_4] = { 101, 212, 19 }    -- Green - Team #9
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_5] = { 129, 83, 54 }     -- Brown - Team #10
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_6] = { 27, 192, 216 }    -- Cyan - Team #11
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_7] = { 199, 228, 13 }    -- Olive - Team #12
    GameRules.TeamColors[DOTA_TEAM_CUSTOM_8] = { 140, 42, 244 }    -- Purple - Team #13

    for team = 0, (DOTA_TEAM_COUNT-1) do
        color = GameRules.TeamColors[ team ]
        if color then
            SetTeamCustomHealthbarColor( team, color[1], color[2], color[3] )
        end
    end
    
    self.m_VictoryMessages = {}
    self.m_VictoryMessages[DOTA_TEAM_GOODGUYS] = "#VictoryMessage_GoodGuys"
    self.m_VictoryMessages[DOTA_TEAM_BADGUYS] = "#VictoryMessage_BadGuys"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_1] = "#VictoryMessage_Custom1"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_2] = "#VictoryMessage_Custom2"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_3] = "#VictoryMessage_Custom3"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_4] = "#VictoryMessage_Custom4"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_5] = "#VictoryMessage_Custom5"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_6] = "#VictoryMessage_Custom6"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_7] = "#VictoryMessage_Custom7"
    self.m_VictoryMessages[DOTA_TEAM_CUSTOM_8] = "#VictoryMessage_Custom8"

    self.m_GatheredShuffledTeams = {}
    self.m_PlayerTeamAssignments = {}
    self.m_NumAssignedPlayers = 0

    GameRules.PlayersOnTeam = {}

    GameMode:GatherValidTeams()
    
    
    -----------------------

    -- Setup rules
    GameRules:SetHeroRespawnEnabled( ENABLE_HERO_RESPAWN )
    GameRules:SetUseUniversalShopMode( UNIVERSAL_SHOP_MODE )
    GameRules:SetSameHeroSelectionEnabled( ALLOW_SAME_HERO_SELECTION )
    GameRules:SetHeroSelectionTime( HERO_SELECTION_TIME )
    GameRules:SetPreGameTime( PRE_GAME_TIME)
    GameRules:SetPostGameTime( POST_GAME_TIME )
    GameRules:SetTreeRegrowTime( TREE_REGROW_TIME )
    GameRules:SetUseCustomHeroXPValues ( USE_CUSTOM_XP_VALUES )
    GameRules:SetGoldPerTick(GOLD_PER_TICK)
    GameRules:SetGoldTickTime(GOLD_TICK_TIME)
    GameRules:SetRuneSpawnTime(RUNE_SPAWN_TIME)
    --GameRules:SetUseBaseGoldBountyOnHeroes(USE_STANDARD_HERO_GOLD_BOUNTY)
    GameRules:SetHeroMinimapIconScale( MINIMAP_ICON_SIZE )
    GameRules:SetCreepMinimapIconScale( MINIMAP_CREEP_ICON_SIZE )
    GameRules:SetRuneMinimapIconScale( MINIMAP_RUNE_ICON_SIZE )
    GameRules:GetGameModeEntity():SetLoseGoldOnDeath( false ) 
    print('[FFrenzy] GameRules set')

    -- Listeners - Event Hooks
    -- All of these events can potentially be fired by the game, though only the uncommented ones have had
    -- Functions supplied for them.
    ListenToGameEvent('dota_player_gained_level', Dynamic_Wrap(GameMode, 'OnPlayerLevelUp'), self)
    ListenToGameEvent('dota_ability_channel_finished', Dynamic_Wrap(GameMode, 'OnAbilityChannelFinished'), self)
    ListenToGameEvent('dota_player_learned_ability', Dynamic_Wrap(GameMode, 'OnPlayerLearnedAbility'), self)
    ListenToGameEvent('entity_killed', Dynamic_Wrap(GameMode, 'OnEntityKilled'), self)
    ListenToGameEvent('player_connect_full', Dynamic_Wrap(GameMode, 'OnConnectFull'), self)
    ListenToGameEvent('player_disconnect', Dynamic_Wrap(GameMode, 'OnDisconnect'), self)
    ListenToGameEvent('dota_item_purchased', Dynamic_Wrap(GameMode, 'OnItemPurchased'), self)
    ListenToGameEvent('dota_item_picked_up', Dynamic_Wrap(GameMode, 'OnItemPickedUp'), self)
    ListenToGameEvent('last_hit', Dynamic_Wrap(GameMode, 'OnLastHit'), self)
    ListenToGameEvent('dota_non_player_used_ability', Dynamic_Wrap(GameMode, 'OnNonPlayerUsedAbility'), self)
    ListenToGameEvent('player_changename', Dynamic_Wrap(GameMode, 'OnPlayerChangedName'), self)
    ListenToGameEvent('dota_rune_activated_server', Dynamic_Wrap(GameMode, 'OnRuneActivated'), self)
    ListenToGameEvent('dota_player_take_tower_damage', Dynamic_Wrap(GameMode, 'OnPlayerTakeTowerDamage'), self)
    ListenToGameEvent('tree_cut', Dynamic_Wrap(GameMode, 'OnTreeCut'), self)
    ListenToGameEvent('entity_hurt', Dynamic_Wrap(GameMode, 'OnEntityHurt'), self)
    ListenToGameEvent('player_connect', Dynamic_Wrap(GameMode, 'PlayerConnect'), self)
    ListenToGameEvent('dota_player_used_ability', Dynamic_Wrap(GameMode, 'OnAbilityUsed'), self)
    ListenToGameEvent('game_rules_state_change', Dynamic_Wrap(GameMode, 'OnGameRulesStateChange'), self)
    ListenToGameEvent('npc_spawned', Dynamic_Wrap(GameMode, 'OnNPCSpawned'), self)
    ListenToGameEvent('dota_player_pick_hero', Dynamic_Wrap(GameMode, 'OnPlayerPickHero'), self)
    ListenToGameEvent('dota_team_kill_credit', Dynamic_Wrap(GameMode, 'OnTeamKillCredit'), self)
    ListenToGameEvent("player_reconnected", Dynamic_Wrap(GameMode, 'OnPlayerReconnect'), self)

    -- Filter Execute Order
    GameRules:GetGameModeEntity():SetExecuteOrderFilter( Dynamic_Wrap( GameMode, "FilterExecuteOrder" ), self )

    -- Change random seed
    local timeTxt = string.gsub(string.gsub(GetSystemTime(), ':', ''), '0','')
    math.randomseed(tonumber(timeTxt))

    -- Initialized tables for tracking state
    self.vUserIds = {}
    self.vSteamIds = {}
    self.vBots = {}
    self.vBroadcasters = {}

    self.bSeenWaitForPlayers = false

    GameRules.UnitKV = LoadKeyValues("scripts/npc/npc_units_custom.txt")
    GameRules.HeroKV = LoadKeyValues("scripts/npc/npc_heroes_custom.txt")
	
    -- Commands can be registered for debugging purposes or as functions that can be called by the custom Scaleform UI
    --Convars:RegisterCommand( "command_example", Dynamic_Wrap(dotacraft, 'ExampleConsoleCommand'), "A console command example", 0 )

    print('[FFrenzy] Done loading gamemode!\n\n')
end

mode = nil

-- This function is called 1 to 2 times as the player connects initially but before they
-- have completely connected
function GameMode:PlayerConnect(keys)
    --print('[FFrenzy] PlayerConnect')
    --DeepPrintTable(keys)

    if keys.bot == 1 then
        -- This user is a Bot, so add it to the bots table
        self.vBots[keys.userid] = 1
    end
end

-- This function is called once when the player fully connects and becomes "Ready" during Loading
function GameMode:OnConnectFull(keys)
    --print('[FFrenzy] OnConnectFull')
    --DeepPrintTable(keys)
    GameMode:CaptureGameMode()

    local entIndex = keys.index+1
    -- The Player entity of the joining user
    local ply = EntIndexToHScript(entIndex)

    -- The Player ID of the joining player
    local playerID = ply:GetPlayerID()

    -- Update the user ID table with this user
    self.vUserIds[keys.userid] = ply

    -- Update the Steam ID table
    self.vSteamIds[PlayerResource:GetSteamAccountID(playerID)] = ply

    -- If the player is a broadcaster flag it in the Broadcasters table
    if PlayerResource:IsBroadcaster(playerID) then
        self.vBroadcasters[keys.userid] = 1
        return
    end
end

-- This function is called as the first player loads and sets up the GameMode parameters
function GameMode:CaptureGameMode()
    if mode == nil then
        -- Set GameMode parameters
        mode = GameRules:GetGameModeEntity()
        mode:SetRecommendedItemsDisabled( RECOMMENDED_BUILDS_DISABLED )
        --mode:SetCameraDistanceOverride( CAMERA_DISTANCE_OVERRIDE )
        --mode:SetCustomBuybackCostEnabled( CUSTOM_BUYBACK_COST_ENABLED )
        mode:SetCustomBuybackCooldownEnabled( CUSTOM_BUYBACK_COOLDOWN_ENABLED )
        mode:SetBuybackEnabled( BUYBACK_ENABLED )
        mode:SetTopBarTeamValuesOverride ( USE_CUSTOM_TOP_BAR_VALUES )
        mode:SetTopBarTeamValuesVisible( TOP_BAR_VISIBLE )
        --mode:SetUseCustomHeroLevels ( USE_CUSTOM_HERO_LEVELS )
        --mode:SetCustomHeroMaxLevel ( MAX_LEVEL )
        --mode:SetCustomXPRequiredToReachNextLevel( XP_PER_LEVEL_TABLE )

        --mode:SetBotThinkingEnabled( USE_STANDARD_DOTA_BOT_THINKING )
        mode:SetTowerBackdoorProtectionEnabled( ENABLE_TOWER_BACKDOOR_PROTECTION )

        mode:SetFogOfWarDisabled(DISABLE_FOG_OF_WAR_ENTIRELY)
        mode:SetGoldSoundDisabled( DISABLE_GOLD_SOUNDS )
        mode:SetRemoveIllusionsOnDeath( REMOVE_ILLUSIONS_ON_DEATH )

        self:OnFirstPlayerLoaded()
    end
end

-- This is an example console command
function GameMode:ExampleConsoleCommand()
    print( '******* Example Console Command ***************' )
    local cmdPlayer = Convars:GetCommandClient()
    if cmdPlayer then
        local playerID = cmdPlayer:GetPlayerID()
        if playerID ~= nil and playerID ~= -1 then
            -- Do something here for the player who called this command
            PlayerResource:ReplaceHeroWith(playerID, "npc_dota_hero_viper", 1000, 1000)
        end
    end
    print( '*********************************************' )
end

--[[
  This function should be used to set up Async precache calls at the beginning of the game.  The Precache() function 
  in addon_game_mode.lua used to and may still sometimes have issues with client's appropriately precaching stuff.
  If this occurs it causes the client to never precache things configured in that block.

  In this function, place all of your PrecacheItemByNameAsync and PrecacheUnitByNameAsync.  These calls will be made
  after all players have loaded in, but before they have selected their heroes. PrecacheItemByNameAsync can also
  be used to precache dynamically-added datadriven abilities instead of items.  PrecacheUnitByNameAsync will 
  precache the precache{} block statement of the unit and all precache{} block statements for every Ability# 
  defined on the unit.

  This function should only be called once.  If you want to/need to precache more items/abilities/units at a later
  time, you can call the functions individually (for example if you want to precache units in a new wave of
  holdout).
]]
function GameMode:PostLoadPrecache()
    print("[FFrenzy] Performing Post-Load precache")

    PrecacheUnitByNameAsync("human_base_tier1", function(...) end)
    PrecacheUnitByNameAsync("nightelf_base_tier1", function(...) end)
    PrecacheUnitByNameAsync("orc_base_tier1", function(...) end)
    PrecacheUnitByNameAsync("undead_base_tier1", function(...) end)

    PrecacheUnitByNameAsync("human_base_tier2", function(...) end)
    PrecacheUnitByNameAsync("nightelf_base_tier2", function(...) end)
    PrecacheUnitByNameAsync("orc_base_tier2", function(...) end)
    PrecacheUnitByNameAsync("undead_base_tier2", function(...) end)

    PrecacheUnitByNameAsync("human_base_tier3", function(...) end)
    PrecacheUnitByNameAsync("nightelf_base_tier3", function(...) end)
    PrecacheUnitByNameAsync("orc_base_tier3", function(...) end)
    PrecacheUnitByNameAsync("undead_base_tier3", function(...) end)

    PrecacheUnitByNameAsync("human_base_tier4", function(...) end)
    PrecacheUnitByNameAsync("nightelf_base_tier4", function(...) end)
    PrecacheUnitByNameAsync("orc_base_tier4", function(...) end)
    PrecacheUnitByNameAsync("undead_base_tier4", function(...) end)

    PrecacheUnitByNameAsync("human_base_tier5", function(...) end)
    PrecacheUnitByNameAsync("nightelf_base_tier5", function(...) end)
    PrecacheUnitByNameAsync("orc_base_tier5", function(...) end)
    PrecacheUnitByNameAsync("undead_base_tier5", function(...) end)

    PrecacheUnitByNameAsync("human_guard_tower", function(...) end)
    PrecacheUnitByNameAsync("human_cannon_tower", function(...) end)
    PrecacheUnitByNameAsync("human_arcane_tower", function(...) end)

    PrecacheUnitByNameAsync("human_rifleman", function(...) end)
    PrecacheUnitByNameAsync("human_militia", function(...) end)
    PrecacheUnitByNameAsync("human_spell_breaker", function(...) end)
    PrecacheUnitByNameAsync("human_knight", function(...) end)
    --PrecacheUnitByNameAsync("human_siege_engine", function(...) end)

    PrecacheUnitByNameAsync("nightelf_archer", function(...) end)
    PrecacheUnitByNameAsync("nightelf_huntress", function(...) end)
    PrecacheUnitByNameAsync("nightelf_druid_of_the_talon", function(...) end)
    PrecacheUnitByNameAsync("nightelf_dryad", function(...) end)
    --PrecacheUnitByNameAsync("nightelf_glaive_thrower", function(...) end)

    PrecacheUnitByNameAsync("orc_grunt", function(...) end)
    PrecacheUnitByNameAsync("orc_troll_headhunter", function(...) end)
    PrecacheUnitByNameAsync("orc_raider", function(...) end)
    PrecacheUnitByNameAsync("orc_tauren", function(...) end)
    --PrecacheUnitByNameAsync("orc_kodo_beast", function(...) end)

    PrecacheUnitByNameAsync("undead_ghoul", function(...) end)
    PrecacheUnitByNameAsync("undead_crypt_fiend", function(...) end)
    PrecacheUnitByNameAsync("undead_skeletal_mage", function(...) end)
    PrecacheUnitByNameAsync("undead_abomination", function(...) end)
    --PrecacheUnitByNameAsync("undead_meat_wagon", function(...) end)
	
	PrecacheUnitByNameAsync("npc_durant", function(...) end)
	PrecacheUnitByNameAsync("npc_arphaxad", function(...) end)

end

--[[
  This function is called once and only once as soon as the first player (almost certain to be the server in local lobbies) loads in.
  It can be used to initialize state that isn't initializeable in InitGameMode() but needs to be done before everyone loads in.
]]
function GameMode:OnFirstPlayerLoaded()
    print("[FFrenzy] First Player has loaded")
end

--[[
  This function is called once and only once after all players have loaded into the game, right as the hero selection time begins.
  It can be used to initialize non-hero player state or adjust the hero selection (i.e. force random etc)
]]
function GameMode:OnAllPlayersLoaded()
    print("[FFrenzy] All Players have loaded into the game")
end

--[[
  This function is called once and only once for every player when they spawn into the game for the first time.  It is also called
  if the player's hero is replaced with a new hero for any reason.  This function is useful for initializing heroes, such as adding
  levels, changing the starting gold, removing/adding abilities, adding physics, etc.

  The hero parameter is the hero entity that just spawned in.
]]
function GameMode:OnHeroInGame(hero)
    print("[FFrenzy] Hero spawned in game for first time -- " .. hero:GetUnitName())

    -- Store a reference to the player handle inside this hero handle.
    hero.player = PlayerResource:GetPlayer(hero:GetPlayerID())
    -- Store the player's name inside this hero handle.
    hero.playerName = PlayerResource:GetPlayerName(hero:GetPlayerID())

    -- This line for example will set the starting gold of every hero to 100 unreliable gold
    hero:SetGold(100, false)
    if testing then
        hero:SetGold(99999, false)
    end
    
end

--[[
    This function is called once and only once when the game completely begins (about 0:00 on the clock).  At this point,
    gold will begin to go up in ticks if configured, creeps will spawn, towers will become damageable etc.  This function
    is useful for starting any game logic timers/thinkers, beginning the first round, etc.
]]
function GameMode:OnGameInProgress()
    print("[FFrenzy] The game has officially begun")

    Timers:CreateTimer(30, function() -- Start this timer 30 game-time seconds later
        --print("This function is called 30 seconds after the game begins, and every 30 seconds thereafter")
        return 30.0 -- Rerun this timer every 30 game-time seconds
    end)
end

-- Cleanup a player when they leave
function GameMode:OnDisconnect(keys)
    print('[FFrenzy] Player Disconnected ' .. tostring(keys.userid))
    --DeepPrintTable(keys)

    local name = keys.name
    local networkid = keys.networkid
    local reason = keys.reason
    local userid = keys.userid
end

-- The overall game state has changed
function GameMode:OnGameRulesStateChange(keys)
    print("[FFrenzy] GameRules State Changed")
    --DeepPrintTable(keys)
    
    if nNewState == DOTA_GAMERULES_STATE_CUSTOM_GAME_SETUP then
    
    end

    -- MultiTeam Thinker
    if nNewState == DOTA_GAMERULES_STATE_HERO_SELECTION then
        GameRules:GetGameModeEntity():SetThink( "EnsurePlayersOnCorrectTeam", self, 0 )
        GameRules:GetGameModeEntity():SetThink( "BroadcastPlayerTeamAssignments", self, 1 )
    end
    -----------------------------------

    local newState = GameRules:State_Get()
    if newState == DOTA_GAMERULES_STATE_WAIT_FOR_PLAYERS_TO_LOAD then
        self.bSeenWaitForPlayers = true
    elseif newState == DOTA_GAMERULES_STATE_INIT then
        Timers:RemoveTimer("alljointimer")
    elseif newState == DOTA_GAMERULES_STATE_HERO_SELECTION then
        local et = 6
        if self.bSeenWaitForPlayers then
            et = .01
        end
        Timers:CreateTimer("alljointimer", {
            useGameTime = true,
            endTime = et,
            callback = function()
                if PlayerResource:HaveAllPlayersJoined() then
                    GameMode:PostLoadPrecache()
                    GameMode:OnAllPlayersLoaded()
                    return
                end
                return 0.5
            end})
    elseif newState == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
        GameMode:OnGameInProgress()
    end
end

---------------------------------------------------------------------------
-- MultiTeam Functions
---------------------------------------------------------------------------

---------------------------------------------------------------------------
-- Update player labels and the scoreboard
---------------------------------------------------------------------------
function GameMode:OnThink()
    for nPlayerID = 0, (DOTA_MAX_TEAM_PLAYERS-1) do
        self:MakeLabelForPlayer( nPlayerID )
    end
    
    self:UpdateScoreboard()
        
    return 1
end

---------------------------------------------------------------------------
-- Scan the map to see which teams have spawn points
---------------------------------------------------------------------------
function GameMode:GatherValidTeams()
    print( "GatherValidTeams:" )
   
    local foundTeams = {}
    for _, playerStart in pairs( Entities:FindAllByClassname( "info_player_start_dota" ) ) do
        foundTeams[  playerStart:GetTeam() ] = true
    end

    local numTeams = TableCount(foundTeams)
    print( "GatherValidTeams - Found spawns for a total of " .. numTeams .. " teams" )
    
    local foundTeamsList = {}
    for t, _ in pairs( foundTeams ) do
        table.insert( foundTeamsList, t )
    end

    if numTeams == 0 then
        print( "GatherValidTeams - NO team spawns detected, defaulting to GOOD/BAD" )
        table.insert( foundTeamsList, DOTA_TEAM_GOODGUYS )
        table.insert( foundTeamsList, DOTA_TEAM_BADGUYS )
        numTeams = 2
    end

    local maxPlayersPerValidTeam = math.floor( 10 / numTeams )

    self.m_GatheredShuffledTeams = ShuffledList( foundTeamsList )

    print( "Final shuffled team list:" )
    for _, team in pairs( self.m_GatheredShuffledTeams ) do
        print( " - " .. team .. " ( " .. GetTeamName( team ) .. " )" )
    end

    print( "Setting up teams:" )
    for team = 0, (DOTA_TEAM_COUNT-1) do
        local maxPlayers = 0
        if ( nil ~= TableFindKey( foundTeamsList, team ) ) then
            maxPlayers = maxPlayersPerValidTeam
        end
        print( " - " .. team .. " ( " .. GetTeamName( team ) .. " ) -> max players = " .. tostring(maxPlayers) )
        GameRules:SetCustomGameTeamMaxPlayers( team, maxPlayers )
        GameRules.PlayersOnTeam[team] = 0
    end
    
end





---------------------------------------------------------------------------
-- Get the color associated with a given teamID
---------------------------------------------------------------------------
function GameMode:ColorForTeam( teamID )
    local color = GameRules.TeamColors[ teamID ]
    if color == nil then
        color = { 255, 255, 255 } -- default to white
    end
    return color
end


---------------------------------------------------------------------------
-- Determine a good team assignment for the next player
---------------------------------------------------------------------------
function GameMode:GetTeamReassignmentForPlayer( playerID )
    if #self.m_GatheredShuffledTeams == 0 then
        return nil
    end

    if nil == PlayerResource:GetPlayer( playerID ) then
        return nil -- no player yet
    end
    
    -- see if we've already assigned the player 
    local existingAssignment = self.m_PlayerTeamAssignments[ playerID ]
    if existingAssignment ~= nil then
        if existingAssignment == PlayerResource:GetTeam( playerID ) then
            return nil -- already assigned to this team and they're still on it
        else
            return existingAssignment -- something else pushed them out of the desired team - set it back
        end
    end

    -- haven't assigned this player to a team yet
    print( "m_NumAssignedPlayers = " .. self.m_NumAssignedPlayers )
    
    -- If the number of players per team doesn't divide evenly (ie. 10 players on 4 teams => 2.5 players per team)
    -- Then this floor will round that down to 2 players per team
    -- If you want to limit the number of players per team, you could just set this to eg. 1
    local playersPerTeam = math.floor( DOTA_MAX_TEAM_PLAYERS / #self.m_GatheredShuffledTeams )
    print( "playersPerTeam = " .. playersPerTeam )

    local teamIndexForPlayer = math.floor( self.m_NumAssignedPlayers / playersPerTeam )
    print( "teamIndexForPlayer = " .. teamIndexForPlayer )

    -- Then once we get to the 9th player from the case above, we need to wrap around and start assigning to the first team
    if teamIndexForPlayer >= #self.m_GatheredShuffledTeams then
        teamIndexForPlayer = teamIndexForPlayer - #self.m_GatheredShuffledTeams
        print( "teamIndexForPlayer => " .. teamIndexForPlayer )
    end
    
    teamAssignment = self.m_GatheredShuffledTeams[ 1 + teamIndexForPlayer ]
    print( "teamAssignment = " .. teamAssignment )

    self.m_PlayerTeamAssignments[ playerID ] = teamAssignment

    self.m_NumAssignedPlayers = self.m_NumAssignedPlayers + 1

    return teamAssignment
end


---------------------------------------------------------------------------
-- Put a label over a player's hero so people know who is on what team
---------------------------------------------------------------------------
function GameMode:MakeLabelForPlayer( nPlayerID )
    if not PlayerResource:HasSelectedHero( nPlayerID ) then
        return
    end

    local hero = PlayerResource:GetSelectedHeroEntity( nPlayerID )
    if hero == nil then
        return
    end

    local teamID = PlayerResource:GetTeam( nPlayerID )
    local color = self:ColorForTeam( teamID )
    hero:SetCustomHealthLabel( GetTeamName( teamID ), color[1], color[2], color[3] )
end


---------------------------------------------------------------------------
-- Tell everyone the team assignments during hero selection
---------------------------------------------------------------------------
function GameMode:BroadcastPlayerTeamAssignments()
    print( "BroadcastPlayerTeamAssignments" )
    for nPlayerID = 0, (DOTA_MAX_TEAM_PLAYERS-1) do
        print( "nPlayerID = "..nPlayerID )
        local nTeamID = PlayerResource:GetTeam( nPlayerID )
        if nTeamID ~= DOTA_TEAM_NOTEAM then
            print( "nTeamID = "..nTeamID )
            GameRules:SendCustomMessage( "#TeamAssignmentMessage", nPlayerID, -1 )
        end
    end
end

---------------------------------------------------------------------------
-- Simple scoreboard using debug text
---------------------------------------------------------------------------
function GameMode:UpdateScoreboard()
    local sortedTeams = {}
    for _, team in pairs( self.m_GatheredShuffledTeams ) do
        table.insert( sortedTeams, { teamID = team, teamScore = GetTeamHeroKills( team ) } )
    end

    -- reverse-sort by score
    table.sort( sortedTeams, function(a,b) return ( a.teamScore > b.teamScore ) end )

    UTIL_ResetMessageTextAll()
    UTIL_MessageTextAll( "#ScoreboardTitle", 255, 255, 255, 255 )
    UTIL_MessageTextAll( "#ScoreboardSeparator", 255, 255, 255, 255 )
    for _, t in pairs( sortedTeams ) do
        local clr = self:ColorForTeam( t.teamID )
        UTIL_MessageTextAll_WithContext( "#ScoreboardRow", clr[1], clr[2], clr[3], 255, { team_id = t.teamID, value = t.teamScore } )
    end
end
----------------------------



















-- An NPC has spawned somewhere in game.  This includes heroes
function GameMode:OnNPCSpawned(keys)
    --print("[FFrenzy] NPC Spawned")
    --DeepPrintTable(keys)
    local npc = EntIndexToHScript(keys.entindex)

    if npc:IsRealHero() and npc.bFirstSpawned == nil then
        npc.bFirstSpawned = true
        GameMode:OnHeroInGame(npc)
    end
    
    --if npc:IsRealHero() and npc.bFirstSpawned == true then
        --Spawn_Position(npc)
        --FindClearSpaceForUnit(hero, base_position+RandomVector(300), true)
    --end

    if npc:IsCreature() and not IsCustomBuilding(npc) then
        Timers:CreateTimer(0.05, function()
            --print("Unit Spawned, Applying Upgrades...")
            ApplyUpgrade(npc, "upgrade_weapon")
            ApplyUpgrade(npc, "upgrade_armor")
            -- And then check for the race upgrades
            if StringStartsWith(npc:GetUnitName(), "human") then
                 ApplyUpgrade(npc, "upgrade_human_training")
            elseif StringStartsWith(npc:GetUnitName(), "nightelf") then
                ApplyUpgrade(npc, "upgrade_nightelf_training")
            elseif StringStartsWith(npc:GetUnitName(), "orc") then
                ApplyUpgrade(npc, "upgrade_orc_training")
            elseif StringStartsWith(npc:GetUnitName(), "undead") then
                ApplyUpgrade(npc, "upgrade_undead_training")
            end
        end)
    end
end

-- An entity somewhere has been hurt.  This event fires very often with many units so don't do too many expensive
-- operations here
function GameMode:OnEntityHurt(keys)
    --print("[FFrenzy] Entity Hurt")
    ----DeepPrintTable(keys)
    --local entCause = EntIndexToHScript(keys.entindex_attacker)
    --local entVictim = EntIndexToHScript(keys.entindex_killed)
end

-- An item was picked up off the ground
function GameMode:OnItemPickedUp(keys)
    --print ( '[FFrenzy] OnItemPurchased' )
    --DeepPrintTable(keys)

    local heroEntity = EntIndexToHScript(keys.HeroEntityIndex)
    local itemEntity = EntIndexToHScript(keys.ItemEntityIndex)
    local player = PlayerResource:GetPlayer(keys.PlayerID)
    local itemname = keys.itemname
end

-- A player has reconnected to the game.  This function can be used to repaint Player-based particles or change
-- state as necessary
function GameMode:OnPlayerReconnect(keys)
    --print ( '[FFrenzy] OnPlayerReconnect' )
    --DeepPrintTable(keys)
end

-- An item was purchased by a player
function GameMode:OnItemPurchased( keys )
    --print ( '[FFrenzy] OnItemPurchased' )
    --DeepPrintTable(keys)

    -- The playerID of the hero who is buying something
    local plyID = keys.PlayerID
    if not plyID then return end

    -- The name of the item purchased
    local itemName = keys.itemname

    -- The cost of the item purchased
    local itemcost = keys.itemcost

end

-- An ability was used by a player
function GameMode:OnAbilityUsed(keys)
    --print('[FFrenzy] AbilityUsed')
    --DeepPrintTable(keys)

    local player = EntIndexToHScript(keys.PlayerID)
    local abilityname = keys.abilityname
end

-- A non-player entity (necro-book, chen creep, etc) used an ability
function GameMode:OnNonPlayerUsedAbility(keys)
    --print('[FFrenzy] OnNonPlayerUsedAbility')
    --DeepPrintTable(keys)

    local abilityname=  keys.abilityname
end

-- A player changed their name
function GameMode:OnPlayerChangedName(keys)
    --print('[FFrenzy] OnPlayerChangedName')
    --DeepPrintTable(keys)

    local newName = keys.newname
    local oldName = keys.oldName
end

-- A player leveled up an ability
function GameMode:OnPlayerLearnedAbility( keys)
    --print ('[FFrenzy] OnPlayerLearnedAbility')
    --DeepPrintTable(keys)

    local player = EntIndexToHScript(keys.player)
    local abilityname = keys.abilityname
end

-- A channelled ability finished by either completing or being interrupted
function GameMode:OnAbilityChannelFinished(keys)
    --print ('[FFrenzy] OnAbilityChannelFinished')
    --DeepPrintTable(keys)

    local abilityname = keys.abilityname
    local interrupted = keys.interrupted == 1
end

-- A player leveled up
function GameMode:OnPlayerLevelUp(keys)
    --print ('[FFrenzy] OnPlayerLevelUp')
    --DeepPrintTable(keys)

    local player = EntIndexToHScript(keys.player)
    local level = keys.level
end

-- A player last hit a creep, a tower, or a hero
function GameMode:OnLastHit(keys)
    --print ('[FFrenzy] OnLastHit')
    --DeepPrintTable(keys)

    local isFirstBlood = keys.FirstBlood == 1
    local isHeroKill = keys.HeroKill == 1
    local isTowerKill = keys.TowerKill == 1
    local player = PlayerResource:GetPlayer(keys.PlayerID)
end

-- A tree was cut down by tango, quelling blade, etc
function GameMode:OnTreeCut(keys)
    --print ('[FFrenzy] OnTreeCut')
    --DeepPrintTable(keys)

    local treeX = keys.tree_x
    local treeY = keys.tree_y
end

-- A player took damage from a tower
function GameMode:OnPlayerTakeTowerDamage(keys)
    --print ('[FFrenzy] OnPlayerTakeTowerDamage')
    --DeepPrintTable(keys)

    local player = PlayerResource:GetPlayer(keys.PlayerID)
    local damage = keys.damage
end

-- A player picked a hero
function GameMode:OnPlayerPickHero(keys)
    print ('[FFrenzy] OnPlayerPickHero')
    --DeepPrintTable(keys)
    

    local heroClass = keys.hero
    local hero = EntIndexToHScript(keys.heroindex)
    local player = EntIndexToHScript(keys.player)
    local playerID = hero:GetPlayerID()
    local teamID = PlayerResource:GetTeam(playerID)
    GameRules.PlayersOnTeam[teamID] = GameRules.PlayersOnTeam[teamID] + 1
    local teamPlayerN = GameRules.PlayersOnTeam[teamID]

    -- Player Color = Team Color
    local color = GameMode:ColorForTeam( teamID )
    PlayerResource:SetCustomPlayerColor( playerID, color[1], color[2], color[3] )

	for k, v in pairs(hero:GetChildren()) do 
		if v:GetClassname() == "dota_item_wearable" then
			local model = v:GetModelName()
			--if not string.match(model, "horse") and not string.match(model, "mount") and not string.match(model, "ogre_head") and not string.match(model, "goblin_body") and not string.match(model, "goblin_head") then
				--v:SetRenderColor(GameRules.TeamColors[teamID][1],GameRules.TeamColors[teamID][2],GameRules.TeamColors[teamID][3])
				--print(v:GetModelName())
			--end
			if string.match(model, "undying_helmet") or string.match(model, "undying_armor") then v:RemoveSelf() end
		end 
	end 
    
    -- Initialize Variables for Tracking
    hero.units = {} -- This keeps the handle of all the units of the player army
    hero.upgrades = {} -- This keeps the name of all the upgrades researched, so each unit can check and upgrade itself on spawn
    hero.towers = {} -- Towers (possible to enable building more towers later)

    -- Define where to put the player/team
    -- Find Base Position (name format: team_6_pos_2 for the second player on team custom1)
    local base_position_name = "team_"..teamID.."_pos_"..teamPlayerN
    local base_position_entity = Entities:FindByName(nil, base_position_name)

    -- Find Tower Positions (name format: team_6_tower_pos_2 for the towers of the second player on team custom1)
    local tower_position_name = "team_"..teamID.."_tower_pos_"..teamPlayerN
    local tower_position_entities = Entities:FindAllByName(tower_position_name)

    if base_position_entity then
        local base_position = base_position_entity:GetAbsOrigin()
        local pedestal = Entities:CreateByClassname("prop_dynamic")
        base_position.z = 172
        pedestal:SetAbsOrigin(base_position)
        pedestal:SetModel("models/heroes/pedestal/effigy_pedestal_ti5_dire.vmdl")
        pedestal:SetModelScale(2)

        -- Create the base building
        local building = CreateUnitByName("human_barracks", base_position, true, hero, hero, hero:GetTeamNumber())
        building:RemoveModifierByName("modifier_invulnerable")
        building:SetOwner(hero)
        building:SetControllableByPlayer(playerID, true)
        building:SetAbsOrigin(base_position)

        -- Add the base building to the player handle.
        hero.base = building
        
        --test units
        if testingUnits then
			for i=1,3 do
                CreateUnitByName("human_footman", Vector(-3000, -1700, 100), true, nil, nil, 3)
            end
        end
        if testingLevels then
            for i=1,25 do
                hero:HeroLevelUp(true)
            end
        end
		if filmmaker then
			for i=1,30 do
                CreateUnitByName("human_footman", Vector(400, -400, 100), true, hero, hero, 2)
				CreateUnitByName("human_footman", Vector(400, -200, 100), true, nil, nil, 3)
            end
		end
        
        for _,v in pairs(tower_position_entities) do
            local tower_position = v:GetAbsOrigin()
            local tower = CreateUnitByName("human_scout_tower", tower_position, true, hero, hero, hero:GetTeamNumber())
            tower:RemoveModifierByName("modifier_invulnerable")
            tower:SetOwner(hero)
            tower:SetControllableByPlayer(playerID, true)
            tower:SetAbsOrigin(tower_position)

            table.insert(hero.towers, tower)
        end 

        CreateUnitByName("dummy_vision", Vector(0, 0, 100), false, hero, hero, hero:GetTeamNumber())

        -- Move the hero close by
        Timers:CreateTimer(function()
            --Spawn_Position(hero)
            --FindClearSpaceForUnit(hero, base_position+RandomVector(300), true)
            --PlayerResource:SetCameraTarget(playerID, building)
            --Timers:CreateTimer(1, function() 
                --PlayerResource:SetCameraTarget(playerID, nil)
            --end)
            
            -- Teach the epic spawn_footman ability
            building:AddAbility("spawn_footman")
            local ability = building:FindAbilityByName("spawn_footman")
            ability:SetLevel(1)

        end)
    else
        print("No Base Position found for player "..playerID)   
    end
    
    -- Defeat check for this player
    hero.lost = false
    Timers:CreateTimer(function()
        local base_building = hero.base			
        if not IsValidEntity(base_building) or not base_building:IsAlive() then
            print("base_building ded")
            MakePlayerLose(hero)
            return
        else
            return 1 -- Check again every second
        end
    end)

end

-- Kill all the units and towers of the HERO, set their hero to not respawn and takes care of Team-Loss & Win Condition
function MakePlayerLose( hero )
    for _,unit in pairs(hero.units) do
        if IsValidEntity(unit) and unit:IsAlive() then
            unit:ForceKill(false)
        end
    end

    for _,tower in pairs(hero.towers) do
        if IsValidEntity(tower) and tower:IsAlive() then
            tower:ForceKill(false)
        end
    end

	print("Making Player Lose")
    if hero:IsAlive() then
        hero:ForceKill(true)
        hero:SetRespawnsDisabled(true)
    else
        Timers:CreateTimer(function()
            hero:SetTimeUntilRespawn(0.8)
            return 0.1
        end)
    end
    hero.lost = true
    
    
    -- check for win condition
    local allHeroes = HeroList:GetAllHeroes()

    -- If there are still heroes alive and they belong to different teams, it means there are at least 2 teams "alive"
    local winnerTeamID = nil
    local winConditionFailed = false
    for _,h in pairs(allHeroes) do
        print("Checking ",h:GetPlayerOwnerID())
        if not h.lost then
            if not winConditionFailed then
                print(h:GetPlayerOwnerID()," is still playing, checking others")
                winnerTeamID = h:GetTeamNumber() -- Possible winning team
                for _,otherHero in pairs(allHeroes) do
                    -- If it's a different hero, from a different team, both alive and playing, break
                    if (otherHero ~= h) and (otherHero:GetTeamNumber() ~= h:GetTeamNumber()) and (not otherHero.lost) then
                        print(otherHero:GetPlayerOwnerID()," is still in play and has a different team than ",h:GetPlayerOwnerID())
                        winConditionFailed = true
                        winnerTeamID = nil
                        break                    
                    elseif otherHero.lost then
                        print(otherHero:GetPlayerOwnerID()," lost")
                    end
                end
            else
                print("Win Condition Check Failed - Keep playing")
                break
            end
        else
            print("   This hero lost")
        end
    end
    if winnerTeamID and not winConditionFailed then
        print(winnerTeamID.." is the Winner")
        GameRules:SetGameWinner(winnerTeamID)
    end
    
end


-- A player killed another player in a multi-team context
function GameMode:OnTeamKillCredit(keys)
    print ('[FFrenzy] OnTeamKillCredit')
    --DeepPrintTable(keys)

    local killerPlayer = PlayerResource:GetPlayer(keys.killer_userid)
    local victimPlayer = PlayerResource:GetPlayer(keys.victim_userid)
    local numKills = keys.herokills
    local killerTeamNumber = keys.teamnumber
end

-- An entity died
function GameMode:OnEntityKilled( keys )
    print( '[FFrenzy] OnEntityKilled Called' )
    --DeepPrintTable( keys )

    -- The Unit that was Killed
    local killedUnit = EntIndexToHScript( keys.entindex_killed )
    -- The Killing entity
    local killerEntity = nil

    if keys.entindex_attacker ~= nil then
        killerEntity = EntIndexToHScript( keys.entindex_attacker )
    end

    -- Player owner of the unit
    local player = killedUnit:GetPlayerOwner()

    -- If the unit is supposed to leave a corpse, create a dummy_unit to use abilities on it.
    Timers:CreateTimer(1, function()
    if LeavesCorpse( killedUnit ) then
            -- Create and set model
            local corpse = CreateUnitByName("dummy_unit", killedUnit:GetAbsOrigin(), true, nil, nil, killedUnit:GetTeamNumber())
            corpse:SetModel(CORPSE_MODEL)

            -- Set the corpse invisible until the dota corpse disappears
            corpse:AddNoDraw()
            
            -- Keep a reference to its name and expire time
            corpse.corpse_expiration = GameRules:GetGameTime() + CORPSE_DURATION
            corpse.unit_name = killedUnit:GetUnitName()

            -- Set custom corpse visible
            --Timers:CreateTimer(3, function() corpse:RemoveNoDraw() end)

            -- Remove itself after the corpse duration
            Timers:CreateTimer(CORPSE_DURATION, function()
                if corpse and IsValidEntity(corpse) then
                    --print("removing corpse")
                    corpse:RemoveSelf()
                end
            end)
        end
    end)

    -- Table cleanup
    if player then
        local hero = player:GetAssignedHero()
        local table_units = {}
        for _,unit in pairs(hero.units) do
            if unit and IsValidEntity(unit) and unit:IsAlive() then
                table.insert(table_units, unit)
            end
        end
        hero.units = table_units

        local table_towers = {}
        for _,tower in pairs(hero.towers) do
            if tower and IsValidEntity(tower) and tower:IsAlive() then
                table.insert(table_towers, tower)
            end
        end
        hero.towers = table_towers
    end

    -- Give Experience to heroes based on the level of the killed creature
    --[[if not killedUnit.isBuilding then
        local XPGain = XP_BOUNTY_TABLE[killedUnit:GetLevel()]

        -- Grant XP in AoE
        local heroesNearby = FindUnitsInRadius( killerEntity:GetTeamNumber(), killedUnit:GetOrigin(), nil, 1000, DOTA_UNIT_TARGET_TEAM_FRIENDLY, DOTA_UNIT_TARGET_HERO, DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false)
        --print("There are ",#heroesNearby," nearby the dead unit, base value for this unit is: "..XPGain)
        for _,hero in pairs(heroesNearby) do
            if hero:IsRealHero() and hero:GetTeam() ~= killedUnit:GetTeam() then

                -- Scale XP if neutral
                local xp = XPGain
                if killedUnit:GetTeamNumber() == DOTA_TEAM_NEUTRALS then
                    xp = ( XPGain * XP_NEUTRAL_SCALING[hero:GetLevel()] ) / #heroesNearby
                end

                hero:AddExperience(math.floor(xp), false, false)
                --print("granted "..xp.." to "..hero:GetUnitName())
            end
        end     
    end]]

end

-- Custom Corpse Mechanic
function LeavesCorpse( unit )
    
    -- Heroes don't leave corpses (includes illusions)
    if unit:IsHero() then
        return false

    -- Ignore buildings 
    elseif unit.GetInvulnCount ~= nil then
        return false

    -- Ignore custom buildings
    elseif unit:FindAbilityByName("ability_building") then
        return false

    -- Ignore units that start with dummy keyword   
    elseif string.find(unit:GetUnitName(), "dummy") then
        return false

    -- Ignore units that were specifically set to leave no corpse
    elseif unit.no_corpse then
        return false

    -- Leave corpse
    else
        --print("Leave corpse")
        return true
    end
end