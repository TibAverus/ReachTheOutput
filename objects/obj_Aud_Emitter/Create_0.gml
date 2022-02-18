SoundEmitter = audio_emitter_create();

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(SoundEmitter, x, y, 0);
audio_emitter_falloff(SoundEmitter, AudioDropStart, AudioMaxHeardDistance, 1);