ALTER TABLE db_version CHANGE COLUMN required_13995_01_mangos_creature_spawn_entry required_13996_01_mangos_creature_cooldown bit;

DROP TABLE IF EXISTS creature_cooldowns;
CREATE TABLE creature_cooldowns (
  `Entry` mediumint(8) unsigned NOT NULL,
  `SpellId` int(11) unsigned NOT NULL,
  `CooldownMin` int(10) unsigned NOT NULL,
  `CooldownMax` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry`, `SpellId`)
);

