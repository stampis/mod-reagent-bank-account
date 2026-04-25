
SET
@Entry = 290011,
@Name = "Mowglii";

DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` SET
    `entry` = @Entry,
    `name` = @Name,
    `subname` = 'Reagent Bank',
    `IconName` = NULL,
    `gossip_menu_id` = 0,
    `minlevel` = 6,
    `maxlevel` = 6,
    `exp` = 0,
    `faction` = 35,
    `npcflag` = 1,
    `rank` = 0,
    `dmgschool` = 0,
    `baseattacktime` = 2000,
    `rangeattacktime` = 0,
    `unit_class` = 1,
    `unit_flags` = 0,
    `type` = 7,
    `type_flags` = 138412032,
    `lootid` = 0,
    `pickpocketloot` = 0,
    `skinloot` = 0,
    `AIName` = '',
    `MovementType` = 0,
    `HoverHeight` = 1,
    `RacialLeader` = 0,
    `movementId` = 0,
    `RegenHealth` = 1,
    `CreatureImmunitiesId` = 0,
    `flags_extra` = 2,
    `ScriptName` = 'npc_reagent_banker_account';

DELETE FROM `creature_template_model` WHERE (`CreatureID` = @Entry);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 0, 15965, 1, 1, 0);

-- Reagent Banker - Spawns
DELETE FROM `creature` WHERE (`id1` = @Entry);
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@Entry, 0, 0, 571, 0, 0, 1, 1,0, 5630.46, 676.087, 651.994, 0.455004, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Dalaran (Eventide Bank)
(@Entry, 0, 0, 571, 0, 0, 1, 1, 0, 5977.53, 626.315, 650.627, 3.61449, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Dalaran (Antonidas Bank)
(@Entry, 0, 0, 0, 0, 0, 1, 1, 0, -8918.87, 621.708, 99.523, 0.464504, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Stormwind (Bank)
(@Entry, 0, 0, 0, 0, 0, 1, 1, 0, -8806.92, 672.932, 96.5986, 4.26725, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Stormwind (Auctionhouse)
(@Entry, 0, 0, 0, 0, 0, 1, 1, 0, -4885.07, -989.828, 503.941, 2.87485, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Ironforge (Bank)
(@Entry, 0, 0, 1, 0, 0, 1, 1, 0, 9940.66, 2504.43, 1318, 3.52402, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Darnassus (Bank)
(@Entry, 0, 0, 0, 0, 0, 1, 1, 0, -14424, 510.607, 4.94254, 1.50284, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Bootybay (Auctionhouse)
(@Entry, 0, 0, 1, 0, 0, 1, 1, 0, -7235.01, -3808.31, -1.13622, 0.32184, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Gadgetzan (Auctionhouse)
(@Entry, 0, 0, 530, 0, 0, 1, 1, 0, -2010.2, 5364.5, -9.3506, 6.04988, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Shattrath (Scryer Bank)
(@Entry, 0, 0, 530, 0, 0, 1, 1, 0, -1723.69, 5506.06, -9.79927, 3.98036, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Shattrath (Aldor Bank)
(@Entry, 0, 0, 530, 0, 0, 1, 1, 0, -702.862, 2705.06, 94.6871, 5.09602, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL); -- Honor Hold (Inn)