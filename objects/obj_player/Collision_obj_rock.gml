effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();

global.score = obj_game.points;
global.highestScore = max(global.highestScore, global.score);

obj_game.alarm[0] = 120;
audio_play_sound(snd_lose, 0, false);
room_goto(rm_lost);
