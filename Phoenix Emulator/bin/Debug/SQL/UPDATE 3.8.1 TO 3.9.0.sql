ALTER TABLE `furniture` ADD COLUMN `height_adjustable` varchar(100) NOT NULL DEFAULT '0';

ALTER TABLE `server_settings` 
ADD COLUMN `points`  int(11) NOT NULL DEFAULT 0,
ADD COLUMN `pixels_max`  int(15) NOT NULL DEFAULT 0,
ADD COLUMN `credits_max`  int(15) NOT NULL DEFAULT 0,
ADD COLUMN `points_max`  int(15) NOT NULL DEFAULT 0,
ADD COLUMN `enable_antiddos`  enum('0','1') NOT NULL DEFAULT '1',
ADD COLUMN `MaxPetsPerRoom`  int(2) NOT NULL DEFAULT 15,
ADD COLUMN `MarketPlaceTax`  int(2) NOT NULL DEFAULT 1,
ADD COLUMN `MaxMarketPlacePrice` int(9) NOT NULL DEFAULT 10000;

ALTER TABLE `catalog_items`
ADD COLUMN `achievement`  int(4) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `permissions_ranks` ADD `cmd_empty` enum('1','0') NOT NULL DEFAULT '0';
ALTER TABLE `permissions_users` ADD `cmd_empty` enum('1','0') NOT NULL DEFAULT '0';

-- ----------------------------
-- Table structure for `catalog_marketplace_data`
-- ----------------------------
DROP TABLE IF EXISTS `catalog_marketplace_data`;
CREATE TABLE `catalog_marketplace_data` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `sprite` int(7) NOT NULL,
  `sold` int(7) NOT NULL DEFAULT '0',
  `avgprice` int(9) NOT NULL DEFAULT '0',
  `daysago` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `texts`;
CREATE TABLE `texts` (
  `identifier` varchar(50) NOT NULL,
  `display_text` text NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of texts
-- ----------------------------
INSERT INTO `texts` VALUES ('cmd_about_desc', ':about - Server Information');
INSERT INTO `texts` VALUES ('cmd_about_name', 'info');
INSERT INTO `texts` VALUES ('cmd_alert_desc', ':alert <username> <message> - Alerts the target user with the message provided');
INSERT INTO `texts` VALUES ('cmd_alert_name', 'alert');
INSERT INTO `texts` VALUES ('cmd_award_desc', ':award <username> <achievement id> - The target user unlocks the selected achievement');
INSERT INTO `texts` VALUES ('cmd_award_name', 'award');
INSERT INTO `texts` VALUES ('cmd_ban_desc', ':ban <username> <time in seconds> - Bans the targetted user for the specified time in seconds. Minimum ban length of 10 minutes (600).');
INSERT INTO `texts` VALUES ('cmd_ban_name', 'ban');
INSERT INTO `texts` VALUES ('cmd_buy_desc', ':buy <count> - Modifies the quantity of your next catalogue purchase');
INSERT INTO `texts` VALUES ('cmd_buy_name', 'buy');
INSERT INTO `texts` VALUES ('cmd_coins_desc', ':coins <username> <amount> - Gives the target user the set amount of credits');
INSERT INTO `texts` VALUES ('cmd_coins_name', 'coins');
INSERT INTO `texts` VALUES ('cmd_commands_name', 'commands');
INSERT INTO `texts` VALUES ('cmd_coords_desc', ':coords - Returns your current co-ordinates');
INSERT INTO `texts` VALUES ('cmd_coords_name', 'coords');
INSERT INTO `texts` VALUES ('cmd_disablediagonal_desc', ':disablediagonal - Disable diagonal walking in the room');
INSERT INTO `texts` VALUES ('cmd_disablediagonal_name', 'disablediagonal');
INSERT INTO `texts` VALUES ('cmd_disconnect_name', 'disconnect');
INSERT INTO `texts` VALUES ('cmd_emptyitems_desc', ':emptyitems - Clears your inventory');
INSERT INTO `texts` VALUES ('cmd_emptyitems_name', 'emptyitems');
INSERT INTO `texts` VALUES ('cmd_empty_desc', ':empty <username> - Clears targets inventory');
INSERT INTO `texts` VALUES ('cmd_empty_name', 'empty');
INSERT INTO `texts` VALUES ('cmd_enable_desc', ':enable <effect id> - Applies the provided effect ID to yourself');
INSERT INTO `texts` VALUES ('cmd_enable_name', 'enable');
INSERT INTO `texts` VALUES ('cmd_error_disabled', 'This command has been disabled by the hotel owner, sorry!');
INSERT INTO `texts` VALUES ('cmd_error_permission_vip', 'This command is restricted to VIP members only, for more info on VIP check out the website!');
INSERT INTO `texts` VALUES ('cmd_flagme_desc', ':flagme - Allows you to change your username');
INSERT INTO `texts` VALUES ('cmd_flagme_name', 'flagme');
INSERT INTO `texts` VALUES ('cmd_follow_desc', ':follow <username> - Follows the target whether they\'re a friend or not');
INSERT INTO `texts` VALUES ('cmd_follow_name', 'follow');
INSERT INTO `texts` VALUES ('cmd_freeze_desc', ':freeze <username> - Disables pathfinding for the targetted user, thus freezing them in place');
INSERT INTO `texts` VALUES ('cmd_freeze_name', 'freeze');
INSERT INTO `texts` VALUES ('cmd_givebadge_desc', ':givebadge <username> <badge id> - Gives the targetted user the specified badge');
INSERT INTO `texts` VALUES ('cmd_givebadge_name', 'givebadge');
INSERT INTO `texts` VALUES ('cmd_globalcredits_desc', ':globalcredits <amount> - Gives all users the specified amount of credits, including offline users');
INSERT INTO `texts` VALUES ('cmd_globalcredits_name', 'globalcredits');
INSERT INTO `texts` VALUES ('cmd_globalpixels_desc', ':globalpixels <amount> - Gives all users the specified amount of pixels, including offline users');
INSERT INTO `texts` VALUES ('cmd_globalpixels_name', 'globalpixels');
INSERT INTO `texts` VALUES ('cmd_globalpoints_desc', ':globalpoints <amount> - Gives all users the specified amount of points, including offline users');
INSERT INTO `texts` VALUES ('cmd_globalpoints_name', 'globalpoints');
INSERT INTO `texts` VALUES ('cmd_hal_desc', ':hal <url> <message> - Sends out a hotel-wide alert with the provided message and a link to the provided url');
INSERT INTO `texts` VALUES ('cmd_hal_name', 'hal');
INSERT INTO `texts` VALUES ('cmd_hal_title', 'Notice from Hotel Management:');
INSERT INTO `texts` VALUES ('cmd_ha_desc', ':ha <message> - Sends out a hotel-wide alert with the provided message');
INSERT INTO `texts` VALUES ('cmd_ha_name', 'ha');
INSERT INTO `texts` VALUES ('cmd_ha_title', 'Important Notice from Hotel Management');
INSERT INTO `texts` VALUES ('cmd_invisible_desc', ':invisible - Puts you into spectator mode, you won\'t be visible to anyone else, you\'ll need to reload the hotel to remove this effect');
INSERT INTO `texts` VALUES ('cmd_invisible_name', 'invisible');
INSERT INTO `texts` VALUES ('cmd_ipban_desc', ':ipban <user> - Permanently bans the targetted user and applies an IP ban');
INSERT INTO `texts` VALUES ('cmd_ipban_name', 'ipban');
INSERT INTO `texts` VALUES ('cmd_kick_desc', ':kick <username> <reason> - Kicks the target user from the room with the reason provided');
INSERT INTO `texts` VALUES ('cmd_kick_name', 'kick');
INSERT INTO `texts` VALUES ('cmd_massbadge_desc', ':massbadge <badge id> - Gives all online users the specified badge');
INSERT INTO `texts` VALUES ('cmd_massbadge_name', 'massbadge');
INSERT INTO `texts` VALUES ('cmd_masscredits_desc', ':masscredits <amount> - Gives all online users the specified amount of credits');
INSERT INTO `texts` VALUES ('cmd_masscredits_name', 'masscredits');
INSERT INTO `texts` VALUES ('cmd_masspixels_desc', ':masspixels <amount> - Gives all online users the specified amount of pixels');
INSERT INTO `texts` VALUES ('cmd_masspixels_name', 'masspixels');
INSERT INTO `texts` VALUES ('cmd_masspoints_desc', ':masspoints <amount> - Gives all online users the specified amount of points');
INSERT INTO `texts` VALUES ('cmd_masspoints_name', 'masspoints');
INSERT INTO `texts` VALUES ('cmd_mimic_desc', ':mimic <username> - Copies the target users looks and applies them to yourself');
INSERT INTO `texts` VALUES ('cmd_mimic_name', 'mimic');
INSERT INTO `texts` VALUES ('cmd_moonwalk_desc', ':moonwalk - Toggles the ability to moonwalk');
INSERT INTO `texts` VALUES ('cmd_moonwalk_name', 'moonwalk');
INSERT INTO `texts` VALUES ('cmd_motd_desc', ':motd <username> <message> - Alerts the target user with the message provided');
INSERT INTO `texts` VALUES ('cmd_motd_name', 'motd');
INSERT INTO `texts` VALUES ('cmd_mute_desc', ':mute <username> - Mutes the targetted user');
INSERT INTO `texts` VALUES ('cmd_mute_name', 'mute');
INSERT INTO `texts` VALUES ('cmd_override_desc', ':override - Enables you to ignore pathfinding and walk across/through any surface');
INSERT INTO `texts` VALUES ('cmd_override_name', 'override');
INSERT INTO `texts` VALUES ('cmd_pickall_desc', ':pickall - Pick up all furni');
INSERT INTO `texts` VALUES ('cmd_pickall_name', 'pickall');
INSERT INTO `texts` VALUES ('cmd_pixels_desc', ':pixels <username> <amount> - Gives the target user the set amount of pixels');
INSERT INTO `texts` VALUES ('cmd_pixels_name', 'pixels');
INSERT INTO `texts` VALUES ('cmd_points_desc', ':points <username> <amount> - Gives the target user the set amount of points');
INSERT INTO `texts` VALUES ('cmd_points_name', 'points');
INSERT INTO `texts` VALUES ('cmd_pull_desc', ':pull <username> - Pulls the target user to yourself');
INSERT INTO `texts` VALUES ('cmd_pull_name', 'pull');
INSERT INTO `texts` VALUES ('cmd_push_desc', ':push <username> - Pushes the target user 1 step away from yourself');
INSERT INTO `texts` VALUES ('cmd_push_name', 'push');
INSERT INTO `texts` VALUES ('cmd_redeemcreds_desc', ':redeemcredits - Turns all exchange items in your hand back into coins');
INSERT INTO `texts` VALUES ('cmd_redeemcreds_name', 'convertcredits');
INSERT INTO `texts` VALUES ('cmd_removebadge_desc', ':removebadge <username> <badge id> - Removes the specified badge from the targetted user');
INSERT INTO `texts` VALUES ('cmd_removebadge_name', 'removebadge');
INSERT INTO `texts` VALUES ('cmd_ride_desc', ':ride <horsename> - Allows you to ride a horse');
INSERT INTO `texts` VALUES ('cmd_ride_err_nothorse', 'You cannot ride other users or small animals, sorry! :(');
INSERT INTO `texts` VALUES ('cmd_ride_err_riding', 'You need to :dismount before you can ride another animal!');
INSERT INTO `texts` VALUES ('cmd_ride_err_swimming', 'You cannot ride animals while taking a swim, sorry! :(');
INSERT INTO `texts` VALUES ('cmd_ride_err_toofar', 'You need to get close to ride this animal!');
INSERT INTO `texts` VALUES ('cmd_ride_err_tooslow', 'That animal already has a rider, sorry! :(');
INSERT INTO `texts` VALUES ('cmd_ride_instr_getoff', 'To get off the animal you can use :dismount or :getoff');
INSERT INTO `texts` VALUES ('cmd_ride_name', 'ride');
INSERT INTO `texts` VALUES ('cmd_roomalert_desc', ':roomalert <message> - Alerts everyone in the current room with the message provided');
INSERT INTO `texts` VALUES ('cmd_roomalert_name', 'roomalert');
INSERT INTO `texts` VALUES ('cmd_roombadge_desc', ':roombadge <badge id> - Gives all users in the current room the specified badge');
INSERT INTO `texts` VALUES ('cmd_roombadge_name', 'roombadge');
INSERT INTO `texts` VALUES ('cmd_roominfo_name', 'roominfo');
INSERT INTO `texts` VALUES ('cmd_roomkick_desc', ':roomkick <reason> - Kicks everyone from the current room with the reason provided');
INSERT INTO `texts` VALUES ('cmd_roomkick_name', 'roomkick');
INSERT INTO `texts` VALUES ('cmd_roommute_desc', ':roommute - Enables/Disables a room-wide mute');
INSERT INTO `texts` VALUES ('cmd_roommute_name', 'roommute');
INSERT INTO `texts` VALUES ('cmd_sa_desc', ':sa <message> - Sends a message to other staff members with the receive_sa permission');
INSERT INTO `texts` VALUES ('cmd_sa_name', 'sa');
INSERT INTO `texts` VALUES ('cmd_sa_title', 'Staff Announcement');
INSERT INTO `texts` VALUES ('cmd_setmax_desc', ':setmax <count> Updates maximum allowed users in the room');
INSERT INTO `texts` VALUES ('cmd_setmax_name', 'setmax');
INSERT INTO `texts` VALUES ('cmd_setspeed_desc', ':setspeed <speed> - Changes the speed of rollers in the current room');
INSERT INTO `texts` VALUES ('cmd_setspeed_name', 'setspeed');
INSERT INTO `texts` VALUES ('cmd_shutdown_desc', ':shutdown - Immediately begins a server shutdown');
INSERT INTO `texts` VALUES ('cmd_shutdown_name', 'shutdown');
INSERT INTO `texts` VALUES ('cmd_spull_desc', ':spull <username> - Forces the target user to walk towards you');
INSERT INTO `texts` VALUES ('cmd_spull_name', 'spull');
INSERT INTO `texts` VALUES ('cmd_summon_desc', ':summon <username> - Forces the target user to load your current room');
INSERT INTO `texts` VALUES ('cmd_summon_name', 'summon');
INSERT INTO `texts` VALUES ('cmd_superban_desc', ':superban <username> - Permanently bans the targetted user');
INSERT INTO `texts` VALUES ('cmd_superban_name', 'superban');
INSERT INTO `texts` VALUES ('cmd_teleport_desc', ':teleport - Clicking on a location will teleport you to it - walking is for losers!');
INSERT INTO `texts` VALUES ('cmd_teleport_name', 'teleport');
INSERT INTO `texts` VALUES ('cmd_unload_desc', ':unload - Unloads the room');
INSERT INTO `texts` VALUES ('cmd_unload_name', 'unload');
INSERT INTO `texts` VALUES ('cmd_unmute_desc', ':unmute <username> - Unmutes the targetted user');
INSERT INTO `texts` VALUES ('cmd_unmute_name', 'unmute');
INSERT INTO `texts` VALUES ('cmd_update_achievements_desc', ':update_achievements - Reloads achievements data from the database');
INSERT INTO `texts` VALUES ('cmd_update_achievements_name', 'update_achievements');
INSERT INTO `texts` VALUES ('cmd_update_bans_desc', ':update_bans - Re-applies all active bans from the bans database');
INSERT INTO `texts` VALUES ('cmd_update_bans_name', 'update_bans');
INSERT INTO `texts` VALUES ('cmd_update_bots_desc', ':update_bots - Reloads the bots from the bots table');
INSERT INTO `texts` VALUES ('cmd_update_bots_name', 'update_bots');
INSERT INTO `texts` VALUES ('cmd_update_catalogue_desc', ':update_catalogue - Reloads the catalogue pages and items from the database');
INSERT INTO `texts` VALUES ('cmd_update_catalogue_name', 'update_catalogue');
INSERT INTO `texts` VALUES ('cmd_update_filter_desc', ':update_filter - Reloads the hotel filter from the database');
INSERT INTO `texts` VALUES ('cmd_update_filter_name', 'update_filter');
INSERT INTO `texts` VALUES ('cmd_update_items_desc', ':update_items - Reloads the furniture settings from the furniture table');
INSERT INTO `texts` VALUES ('cmd_update_items_name', 'update_items');
INSERT INTO `texts` VALUES ('cmd_update_navigator_desc', ':update_navigator - Reloads the room models and navigator settings');
INSERT INTO `texts` VALUES ('cmd_update_navigator_name', 'update_navigator');
INSERT INTO `texts` VALUES ('cmd_update_permissions_desc', ':update_permissions - Reloads the permissions settings from the database');
INSERT INTO `texts` VALUES ('cmd_update_permissions_name', 'update_permissions');
INSERT INTO `texts` VALUES ('cmd_update_settings_desc', ':update_settings - Re-applies the settings from the server_settings table');
INSERT INTO `texts` VALUES ('cmd_update_settings_name', 'update_settings');
INSERT INTO `texts` VALUES ('cmd_update_texts_desc', ':update_texts - Updates texts from database');
INSERT INTO `texts` VALUES ('cmd_update_texts_name', 'update_texts');
INSERT INTO `texts` VALUES ('cmd_userinfo_desc', ':userinfo <username> - Returns some information about the target user to you');
INSERT INTO `texts` VALUES ('cmd_userinfo_name', 'userinfo');
INSERT INTO `texts` VALUES ('emu_cleandb', 'Cleaning up database..');
INSERT INTO `texts` VALUES ('emu_connectdb', 'Connecting to database..');
INSERT INTO `texts` VALUES ('emu_loadroles', 'Loading Roles..');
INSERT INTO `texts` VALUES ('emu_loadsettings', 'Loading Settings..');
INSERT INTO `texts` VALUES ('emu_loadtexts', 'Loading Texts..');
INSERT INTO `texts` VALUES ('emu_sso_wrong', 'Login error: Your SSO ticket was incorrect');
INSERT INTO `texts` VALUES ('emu_sso_wrong_secure', ' AND/OR your current IP doesn\'t match our database ');
INSERT INTO `texts` VALUES ('error_maxpets', 'There are too many pets in this room. The maximum number of pets in a room is :');
INSERT INTO `texts` VALUES ('guidebot_welcome1', 'Hello and welcome to Habboon! I am a bot Guide and I\'m here to help you.');
INSERT INTO `texts` VALUES ('guidebot_welcome2', 'I can give you tips and hints on what to do here, just ask me a question :)');
INSERT INTO `texts` VALUES ('mod_error_permission_ban', 'You do not have permission to ban that user.');
INSERT INTO `texts` VALUES ('mod_error_permission_caution', 'You do not have permission to caution that user, sending as a regular message instead.');
INSERT INTO `texts` VALUES ('mod_error_permission_kick', 'You do not have permission to kick that user.');
INSERT INTO `texts` VALUES ('mod_inappropriate_roomdesc', 'Inappropriate to Hotel Managament');
INSERT INTO `texts` VALUES ('mod_inappropriate_roomname', 'Inappropriate to Hotel Managament');
INSERT INTO `texts` VALUES ('mod_tool_category1', 'Room Problems');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem1', 'Door Problem');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem2', 'Final Warning');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem3', 'Persisting Issue');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem4', 'Swearing Issue');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem5', 'Forum Assist');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem6', 'Flooding Room');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem7', 'Room Name');
INSERT INTO `texts` VALUES ('mod_tool_category1_problem8', 'Furni Loading');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution1', 'Please check that there is nothing blocking the doorway. If the problem persists please report it again and we will investigate further.');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution2', 'This is your final warning regarding your actions within Habboon. The next step will be a ban.');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution3', 'We understand that the problem you were having is continuing to occur. Please update us with all the details. ');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution4', 'The language you are using in the room is not acceptable and is insulting other users please stop doing this or you will be kicked, possibly banned from habboon.');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution5', 'Please go to Otaku-Studios.com and submit your problem in the Habboon forums.');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution6', 'Attention, we\'ve noticed you are filling up the chat with mindless and senseless speech. This is what is known as flooding the room. Please stop doing this immeadiately or you will be kicked from the room.');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution7', 'Please change your room name otherwise we will do it.');
INSERT INTO `texts` VALUES ('mod_tool_category1_solution8', 'Furniture not loading in rooms is a rare occurance in Habboon. Please try reloading Habboon, or clearing your internet browsers cache. There are tutorials on how to on our help website. Go to habboon.com/help. ');
INSERT INTO `texts` VALUES ('mod_tool_category2', 'Player Support');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem1', 'Player Bug');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem2', 'Login Problem');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem3', 'Report Bug');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem4', 'CFH Abuse');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem5', 'Private Information');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem6', 'SWF Error');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem7', 'Cache');
INSERT INTO `texts` VALUES ('mod_tool_category2_problem8', 'Temp. Problem');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution1', 'Thank you for contacting us regarding the bug. Please report it to the uservoice. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution2', 'Please use the uservoice forum to report this problem. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution3', 'Please report all bugs to our uservoice forum. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution4', 'Please stop abusing the call for help system. It is only to be used in the event of an EMERGENCY. If you have general questions please seek the advice of an eXpert.');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution5', 'It is unsafe to give out your personal information.');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution6', 'Please report this bug and how to recreate the bug and post it at our uservoice forum. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution7', 'If you are having problems with your comptuer memory, clear your cache.');
INSERT INTO `texts` VALUES ('mod_tool_category2_solution8', 'Delete your temporary history!');
INSERT INTO `texts` VALUES ('mod_tool_category3', 'Users Problems');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem1', 'Scamming');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem2', 'Trading Scam');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem3', 'Disconnection');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem4', 'Room Blocking');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem5', 'Freezing');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem6', 'Job Info');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem7', 'Flooding');
INSERT INTO `texts` VALUES ('mod_tool_category3_problem8', 'Updates');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution1', 'There is no need to report scammers on Habboon. Habboon gives away 50 free coins every 15 minutes (along with Pixels) therefore it is useless to report scammers when our services are free. Please Note: All trading done within Habboon is done at your own risk.');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution2', 'If you have been scammed by trade in Habboon we can only apologise, there is no way of us retreiving the furniture that you have lost. Please note that all trading done on Habboon is done at your own risk, you should be vigilent when trading. ');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution3', 'There are often times when we are updating the hotel or there may be a slight bug within the system that would cause you to disconnect. Disconnections shouldn\'t happen often, if they do please seek help on our forums at Otaku-Studios.com');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution4', 'If there is a user in a room whom is blocking your path, ask the room owner to remove the user from the room. If the room ownwer is not there, please let us know and we will come and assist you.');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution5', 'Can explain us what happens to cause the freezing?');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution6', 'Please do not ask to be Staff in Habboon.Staff members are chosen from the eXpert team. To become a member of hotel staff first you must be an eXpert. To become an eXpert you must be active on the hotel, friendly, buid some good rooms. Please be patient if you do all of these things, we are bound to notice you. ');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution7', 'Attention, we\'ve noticed you\'re flooding or spamming Habboon with text. Please do not continue doing this or you will be kicked and even possibly banned from Habboon. Thank-You.\r\n');
INSERT INTO `texts` VALUES ('mod_tool_category3_solution8', 'Updates are conducted when needed in Habboon to give users the best experience possible we thank you for taking the time to contact us regarding updates on the hotel. If there are new things to add to the hotel you can be sure they are coming in the future.\r\n');
INSERT INTO `texts` VALUES ('mod_tool_category4', 'Debug Problems');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem1', 'Lag');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem2', 'Disconnection');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem3', 'SSO Problem');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem4', 'Char. Filter');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem5', 'System Check');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem6', 'WireEncoding Error');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem7', 'BASE64 Error');
INSERT INTO `texts` VALUES ('mod_tool_category4_problem8', 'Flash Player Problem');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution1', 'Try to leave the room or perhaps reload the hotel to get rid of the lag.');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution2', 'Often times we are updating the hotel or there may be a slight bug within the system that would cause a disconnection. Although it is rare, please bear with us while we update our services.');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution3', 'Please contact us by posting on our uservoice forum. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution4', 'Can you say the username? We\'ll take action if needed.');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution5', 'We already checking everything and debuging stuff');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution6', 'Please contact us by posting on our uservoice forum. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution7', 'Please contact us by posting on our uservoice forum. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category4_solution8', 'Please contact us by posting on our uservoice forum. www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category5', 'System Problems');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem1', 'Version');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem2', 'SWF Build');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem3', 'Freeze');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem4', 'Name Filter');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem5', 'Nickname Filter');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem6', 'Catalogue Issue');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem7', 'Swearing Filter');
INSERT INTO `texts` VALUES ('mod_tool_category5_problem8', 'Update Filter');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution1', 'Habboon is always in the latest possible version.');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution2', 'Currenly We use the same version like Habbo.com');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution3', 'Can explain us what happens to cause the freezing?\"');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution4', 'Can you say the username? We\'ll take action if needed.');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution5', 'Can you say the usersname? We\'ll take action if needed.');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution6', 'What item are you trying to buy and what section is it in? If possible could you report this bug to our uservoice forum? www.habboon.uservoice.com');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution7', 'If possible, leave the room and ignore the user. If their speech is highly inappropriate and is offending other users send another call. We\'ll take care of it.');
INSERT INTO `texts` VALUES ('mod_tool_category5_solution8', 'We will update your words in the filter Thanks for your report.');
INSERT INTO `texts` VALUES ('mod_tool_category6', 'Common Issues');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem1', 'eXpert Info');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem2', 'Moderator Info');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem3', 'Rights Info');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem4', 'Weekly Rare');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem5', 'Coins');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem6', 'Swearing');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem7', 'Inappropriate Actions');
INSERT INTO `texts` VALUES ('mod_tool_category6_problem8', 'Staff Members');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution1', 'Habboon hires eXperts based on many things. Users must be active within Habboon, friendly and stay out of trouble, Users wanting to become eXperts shouldn\'t ask to be. We look for users who have a decent amount of furni filled rooms. Please wait for us to recognize you, do not ask to be an eXpert. It will only lower your chances.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution2', 'Habboon Moderators are promoted from eXperts. Please do not ask to be a Moderator, it is very inappropriate to ask to be staff. If you are caught pestering staff you may be kicked from the room.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution3', 'If you have given users rights to move furniture in your room and they have let you down by trashing your room, this is not something we can govern. It\'s upto you whom you give room rights out to. We suggest you are more careful as to whom you give room rights out to in the future. We apologise we can\'t be of anymore help.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution4', 'The weekly rare listed in the catalouge under limited edition is changed at the beginning or near the end of the week. Please wait till then for a new rare to be released.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution5', 'Coins are distributed every 15 minutes along with pixels. Open the catalouge to find out other easy ways to get coins.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution6', 'Your language has been deemed inappropriate and adverse action may be taken on your account if you do not stop.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution7', 'Your actions have been deemed inappropriate and adverse action may be taken on your account if you do not stop.');
INSERT INTO `texts` VALUES ('mod_tool_category6_solution8', 'If you would like to see which Staff members are currently online. Please go to the habboon homepage, click community then Staff and eXperts. It will say next to the name which are online and offline. ');
INSERT INTO `texts` VALUES ('mus_alert_title', 'Important Notice from Hotel Management');
INSERT INTO `texts` VALUES ('mus_hal_tail', 'Sent from Housekeeping');
INSERT INTO `texts` VALUES ('mus_hal_title', 'Notice from Hotel Management:');
INSERT INTO `texts` VALUES ('mus_ha_title', 'Important Notice from Hotel Management');
INSERT INTO `texts` VALUES ('pet_breeds_0', 'QFHHIHHIIHHJIHHKIHHPAIHHQAIHHRAIHHSAIHHPBIHHQBIHHRBIHHSBIHHPCIHHQCIHHRCIHHSCIHHPDIHHQDIHHRDIHHSDIHHPEIHHQEIHHREIHHSEIHHPFIH');
INSERT INTO `texts` VALUES ('pet_breeds_1', 'QFIHIHIIIHIJIHIKIHIPAIHIQAIHIRAIHISAIHIPBIHIQBIHIRBIHISBIHIPCIHIQCIHIRCIHISCIHIPDIHIQDIHIRDIHISDIHIPEIHIQEIHIREIHISEIHIPFIH');
INSERT INTO `texts` VALUES ('pet_breeds_10', 'IRBHIH');
INSERT INTO `texts` VALUES ('pet_breeds_11', 'RCSBIIHSBJIHSBKIHSBPAIHSBQAIHSBRAIHSBPBHHSBQBIHSBRBIHSBSBIHSBPCIHSBQCIHSBSCIHSBRDIH');
INSERT INTO `texts` VALUES ('pet_breeds_12', 'RAPCHIHPCIIHPCJIHPCKIHPCPAIHPCQAIH');
INSERT INTO `texts` VALUES ('pet_breeds_13', 'KQCRHIHQCRGIHQCKIH');
INSERT INTO `texts` VALUES ('pet_breeds_14', 'PBRCHIHRCIIHRCJIHRCKHIRCPAIHRCQAIHRCRAIHRCSAIH');
INSERT INTO `texts` VALUES ('pet_breeds_16', 'IPDHIH');
INSERT INTO `texts` VALUES ('pet_breeds_17', 'IQDHIH');
INSERT INTO `texts` VALUES ('pet_breeds_18', 'IRDHIH');
INSERT INTO `texts` VALUES ('pet_breeds_19', 'ISDHIH');
INSERT INTO `texts` VALUES ('pet_breeds_2', 'PCJHIHJIIHJJIHJKIHJPAIHJQAIHJRAIHJSAIHJPBIHJQBIHJRBIHJSBIH');
INSERT INTO `texts` VALUES ('pet_breeds_20', 'IPEHIH');
INSERT INTO `texts` VALUES ('pet_breeds_3', 'SAKHIHKIIHKJIHKKIHKPAIHKQAIHKRAIH');
INSERT INTO `texts` VALUES ('pet_breeds_4', 'PAPAHIHPAIIHPAJIHPAKIH');
INSERT INTO `texts` VALUES ('pet_breeds_5', 'SAQAHIHQAIIHQAJIHQAKIHQAQAIHQASAIHQAPBIH');
INSERT INTO `texts` VALUES ('pet_breeds_6', 'QCRAHIHRAIIHRAJIHRAKIHRAPAIHRAQAIHRARAHIRASAHIRAPBHIRAQBHIRARBHIRASBIHRAPCHI');
INSERT INTO `texts` VALUES ('pet_breeds_7', 'PBSAHIHSAIIHSAJIHSAKHISAPAIHSAQAIHSARAIHSASAIH');
INSERT INTO `texts` VALUES ('pet_breeds_8', 'QCPBHIHPBIIHPBJIHPBKIHPBPAIHPBQAIHPBRAIHPBSAIHPBPBIHPBQBIHPBRBIHPBSBIHPBRCIH');
INSERT INTO `texts` VALUES ('pet_breeds_9', 'QBQBHIHQBIIHQBJIHQBKIHQBPAIHQBQAIHQBRAIHQBSAIHQBPBIH');
INSERT INTO `texts` VALUES ('pet_chatter_bear1', 'Rawwwwwr');
INSERT INTO `texts` VALUES ('pet_chatter_bear2', '*roars*');
INSERT INTO `texts` VALUES ('pet_chatter_bear3', 'Grrrr');
INSERT INTO `texts` VALUES ('pet_chatter_bear4', '*sniff sniff*');
INSERT INTO `texts` VALUES ('pet_chatter_bear5', '*yawns*');
INSERT INTO `texts` VALUES ('pet_chatter_cat1', 'Purrrrr');
INSERT INTO `texts` VALUES ('pet_chatter_cat2', 'Meeeeeow!');
INSERT INTO `texts` VALUES ('pet_chatter_cat3', '*yawns*');
INSERT INTO `texts` VALUES ('pet_chatter_cat4', '*purrs*');
INSERT INTO `texts` VALUES ('pet_chatter_cat5', 'meow :3');
INSERT INTO `texts` VALUES ('pet_chatter_chic1', 'tweet tweet');
INSERT INTO `texts` VALUES ('pet_chatter_chic2', '*flaps wings*');
INSERT INTO `texts` VALUES ('pet_chatter_chic3', 'AWK AWK');
INSERT INTO `texts` VALUES ('pet_chatter_chic4', '*pecks*');
INSERT INTO `texts` VALUES ('pet_chatter_chic5', '*runs around pointlessly*');
INSERT INTO `texts` VALUES ('pet_chatter_croc1', '*feels like eating my owner*');
INSERT INTO `texts` VALUES ('pet_chatter_croc2', 'tick, tock, tick, tock');
INSERT INTO `texts` VALUES ('pet_chatter_croc3', '*snaps jaws*');
INSERT INTO `texts` VALUES ('pet_chatter_croc4', 'Rrrr.. Grrrrr');
INSERT INTO `texts` VALUES ('pet_chatter_croc5', '*yawns*');
INSERT INTO `texts` VALUES ('pet_chatter_dog1', 'woof woof woof!!!');
INSERT INTO `texts` VALUES ('pet_chatter_dog2', 'Hooooowl');
INSERT INTO `texts` VALUES ('pet_chatter_dog3', '*wags tail*');
INSERT INTO `texts` VALUES ('pet_chatter_dog4', '*chases tail*');
INSERT INTO `texts` VALUES ('pet_chatter_dog5', '*pants*');
INSERT INTO `texts` VALUES ('pet_chatter_dragon1', '*flies around*');
INSERT INTO `texts` VALUES ('pet_chatter_dragon2', '*thinks about torching things*');
INSERT INTO `texts` VALUES ('pet_chatter_dragon3', '*looks for something to fry*');
INSERT INTO `texts` VALUES ('pet_chatter_dragon4', '*eyes you up*');
INSERT INTO `texts` VALUES ('pet_chatter_dragon5', '*soars down*');
INSERT INTO `texts` VALUES ('pet_chatter_frog1', 'Ribbit..');
INSERT INTO `texts` VALUES ('pet_chatter_frog2', '*bounces around*');
INSERT INTO `texts` VALUES ('pet_chatter_frog3', '*croaks*');
INSERT INTO `texts` VALUES ('pet_chatter_frog4', 'rrrribbit!');
INSERT INTO `texts` VALUES ('pet_chatter_frog5', '*stretches*');
INSERT INTO `texts` VALUES ('pet_chatter_generic1', 'Hmm..');
INSERT INTO `texts` VALUES ('pet_chatter_generic2', '*looks for food*');
INSERT INTO `texts` VALUES ('pet_chatter_generic3', '*Humms*');
INSERT INTO `texts` VALUES ('pet_chatter_generic4', '*looks at*');
INSERT INTO `texts` VALUES ('pet_chatter_generic5', '*looks for water*');
INSERT INTO `texts` VALUES ('pet_chatter_horse1', 'neiiigh');
INSERT INTO `texts` VALUES ('pet_chatter_horse2', '*trots around*');
INSERT INTO `texts` VALUES ('pet_chatter_horse3', 'Neeeigh');
INSERT INTO `texts` VALUES ('pet_chatter_horse4', '*looks at*');
INSERT INTO `texts` VALUES ('pet_chatter_horse5', '*flicks tail*');
INSERT INTO `texts` VALUES ('pet_chatter_lion1', 'Rawwrrrr');
INSERT INTO `texts` VALUES ('pet_chatter_lion2', '*stares*');
INSERT INTO `texts` VALUES ('pet_chatter_lion3', 'Grrrr');
INSERT INTO `texts` VALUES ('pet_chatter_lion4', '*roars*');
INSERT INTO `texts` VALUES ('pet_chatter_lion5', '*looks at*');
INSERT INTO `texts` VALUES ('pet_chatter_monkey1', 'Oo oo oo (I wanna be like you-oo-oo!)');
INSERT INTO `texts` VALUES ('pet_chatter_monkey2', '*swings around*');
INSERT INTO `texts` VALUES ('pet_chatter_monkey3', 'Ooo oo!');
INSERT INTO `texts` VALUES ('pet_chatter_monkey4', '*looks at*');
INSERT INTO `texts` VALUES ('pet_chatter_monkey5', '*grooms myself*');
INSERT INTO `texts` VALUES ('pet_chatter_pig1', 'Oink Oink!');
INSERT INTO `texts` VALUES ('pet_chatter_pig2', '*snorts*');
INSERT INTO `texts` VALUES ('pet_chatter_pig3', '*sniffs around*');
INSERT INTO `texts` VALUES ('pet_chatter_pig4', 'Oink!');
INSERT INTO `texts` VALUES ('pet_chatter_pig5', '*looks for mud*');
INSERT INTO `texts` VALUES ('pet_chatter_rhino1', 'CHARGEEEEE!');
INSERT INTO `texts` VALUES ('pet_chatter_rhino2', '*stomps around*');
INSERT INTO `texts` VALUES ('pet_chatter_rhino3', '*snorts*');
INSERT INTO `texts` VALUES ('pet_chatter_rhino4', '*prepares to charge*');
INSERT INTO `texts` VALUES ('pet_chatter_rhino5', 'ARGHHHHHHHHHH!!');
INSERT INTO `texts` VALUES ('pet_chatter_spider1', '*spins a web*');
INSERT INTO `texts` VALUES ('pet_chatter_spider2', '*crawls around*');
INSERT INTO `texts` VALUES ('pet_chatter_spider3', '*sneaks up on you*');
INSERT INTO `texts` VALUES ('pet_chatter_spider4', '*hangs around*');
INSERT INTO `texts` VALUES ('pet_chatter_spider5', '*looks at*');
INSERT INTO `texts` VALUES ('pet_chatter_turtle1', '*hides in my shell*');
INSERT INTO `texts` VALUES ('pet_chatter_turtle2', '*pokes head out of shell*');
INSERT INTO `texts` VALUES ('pet_chatter_turtle3', '*casually walks along*');
INSERT INTO `texts` VALUES ('pet_chatter_turtle4', '*looks at you*');
INSERT INTO `texts` VALUES ('pet_chatter_turtle5', 'o.O');
INSERT INTO `texts` VALUES ('pet_response_confused1', '*confused*');
INSERT INTO `texts` VALUES ('pet_response_confused2', 'What?');
INSERT INTO `texts` VALUES ('pet_response_confused3', 'Huh?');
INSERT INTO `texts` VALUES ('pet_response_confused4', 'Meh..');
INSERT INTO `texts` VALUES ('pet_response_confused5', 'Hmm..?');
INSERT INTO `texts` VALUES ('pet_response_confused6', '?');
INSERT INTO `texts` VALUES ('pet_response_confused7', ':s');
INSERT INTO `texts` VALUES ('pet_response_refusal1', '*ignores you*');
INSERT INTO `texts` VALUES ('pet_response_refusal2', '*refuses*');
INSERT INTO `texts` VALUES ('pet_response_refusal3', 'No, you do it!');
INSERT INTO `texts` VALUES ('pet_response_refusal4', 'Who do you think I am??');
INSERT INTO `texts` VALUES ('pet_response_refusal5', 'I\'m not your slave!');
INSERT INTO `texts` VALUES ('pet_response_silent', '*shuts up*');
INSERT INTO `texts` VALUES ('pet_response_sleep', 'ZzzZZZzzzzZzz');
INSERT INTO `texts` VALUES ('pet_response_sleeping1', 'ZzZzzzzz');
INSERT INTO `texts` VALUES ('pet_response_sleeping2', 'Tired... *sleeps*');
INSERT INTO `texts` VALUES ('pet_response_sleeping3', '*sleeping*');
INSERT INTO `texts` VALUES ('pet_response_sleeping4', 'ZzZzzZ');
INSERT INTO `texts` VALUES ('pet_response_sleeping5', 'Zzzz Zzzz Zzzz');
INSERT INTO `texts` VALUES ('trade_error_targetdisabled', 'That user has disabled trading.');
INSERT INTO `texts` VALUES ('error_roomunload', 'Oops, something went wrong with the room you were in, sorry!');