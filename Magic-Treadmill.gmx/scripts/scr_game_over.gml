obj_control.gameOver = true;
obj_control.paused = false;

obj_gui.yScore = -300;

instance_create(room_width / 2, -450, obj_game_over);

instance_create(room_width / 2, -100, obj_retry);
instance_create(room_width / 2, -20, obj_main_menu);

global.highScore = max(global.highScore, score);
if (!obj_control.mute) audio_play_sound(snd_gameover, 0, false);
