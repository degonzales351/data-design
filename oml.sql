# INSERT
INSERT INTO profile (profileId,  profileActivationToken, profileAtHandle, profileEmail, profileHash) VALUES ('6a0d15248f72427183ef506c599f4c4e', 'nananananananananananananananana', 'myAtHandle', 'daniel.kitaraDG58@email','*367');
INSERT INTO profile(profileId, profileActivationToken, profileAtHandle, profileEmail, profileHash, profilePhone) VALUES (UNHEX('6a0d15248f72427183ef506c599f4c4e'), 'nananananananananananananananana', 'myAtHandle', 'email@email.com', 'nanananananananananananananananananananananananananananananananananananananananananananananananaa', '505-866-5309');
INSERT INTO 'character'(characterId, characterProfileId, characterAppearance, characterId) VALUES (UNHEX('16'), '16', '140','436');
INSERT INTO 'level'(levelProfileId, levelId, levelDifficulty,) VALUES (UNHEX('16'), '16', '6',);

# INSERT INTO profile(profileId, profileActivationToken, profileAtHandle, profileEmail, profileHash,) VALUES (UNHEX('6a0d15248f72427183ef506c599f4c4e'), 'nananananananananananananananana', 'myAtHandle', 'daniel.kitaraDG58@email.com',
# INSERT INTO character(characterId, characterProfileIdCRE, characterApperance, characterRarity, characterAcquisitionOdds,) VALUES (UNHEX("2435f00e555d455d92fdf34f1dd255e2"),
# UNHEX("6a0d15248f72427183ef506c599f4c4e"),
# UPDATE table SET profile = newValue1, character = newValue2, WHERE primaryKey = uuid;
# UPDATE level SET levelProfileId = UNHEX("4d7342ff55c0483097a0da7b2b6a9d9d"), levelContent="I have the power" WHERE levelId = UNHEX("2435f00e555d455d92fdf34f1dd255e2");
# DELETE FROM table WHERE primayKey = uuid;
# DELETE FROM tweet WHERE levelId = UNHEX("2435f00e555d455d92fdf34f1dd255e2");
# SELECT characterId, characterProfileId, characterApperance, characterRarity, from table WHERE condition = true;
# SELECT characterId, characterProfileId, characterApperance, characterRarity from character WHERE characterProfileId = UNHEX("2435f00e555d455d92fdf34f1dd255e2");
# Statement grabs all characters from user "2435f00e555d455d92fdf34f1dd255e2 SELECT characterId, characterProfileId, characterApperance, characterAcquisitionOdds from profile WHERE characterProfileId LIKE "%Illidan%";
# SELECT profile.levelProfileId, profile.column2, profile.column3, profile.column3 FROM profile INNER JOIN  on profile.primaryKeyA = character.foreignKeyA WHERE profile.column = true
# SELECT level.levelId, level.levelProfileId, level.levelContent, level.levelDate, profile.profileAtHandle FROM character INNER JOIN profile on level.levelProfileId = profile.profileId where level.levelProfileId =
# SELECT level.levelId, level.levelProfileId, level.levelContent, level.levelDate, profile.profileAtHandle FROM 'level' INNER JOIN character ON level.levelProfileId = level.levelProfileId INNER JOIN profile ON profile.profileId = level.levelProfileId WHERE level.levelProfileId = uuid
#