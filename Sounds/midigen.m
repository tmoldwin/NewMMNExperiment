function [ output_args ] = midigen( MIDI, duration )
%SOUNDTEST Summary of this function goes here
%   Detailed explanation goes here
	
% The duration for which a given vector will play depends on the number of elements in the vector and the sampling rate. For example, a 1000-element vector, when played at 1 kHz, will last 1 second. When played at 500 Hz, it will last 2 seconds. Therefore, the first choice you should make is the sampling rate you want to use. To avoid aliasing, the sampling rate should be twice as large as the largest frequency component of the signal. However, you may want to make it even larger than that to avoid attenuation of frequencies close to the sampling rate.
% 
% Given a sampling rate of 1 kHz, the following example creates a sound vector of a given duration and tone frequency (using the LINSPACE and SIN functions):
for n = 1:length(MIDI)
    note = MIDI(n);
    Fs = 10000;      %# Samples per second
    toneFreq = 440*2^((note-69)/12);  %# Tone frequency, in Hertz
    nSeconds = duration;   %# Duration of the sound
    y = sin(linspace(0, nSeconds*toneFreq*2*pi, nSeconds*Fs));
    % When played at 1 kHz using the SOUND function, this vector will generate
    % a 50 Hz tone for 2 seconds:
    sound(y, Fs);  %# Play sound at sampling rate Fs

    nSecondsSilence = 0.01;
    silence = sin(linspace(0, 0 , nSecondsSilence * Fs));
    sound(silence, Fs);
end
% The vector can then be saved as a wav file using the WAVWRITE function:
