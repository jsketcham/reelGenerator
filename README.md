    An Octave script that generates short 16 channel .WAV files to demo dtsPlayer, dtsGenerator.
    Copyright (C) 2026  James S. Ketcham jsketcham@earthlink.net

    How to use:
    
    1) create short WAVs, this script generates 5 reels of 4 seconds each, in the ~/dts/1234 
        directory. Serial numbers (the '1234' part of the path) are not used yet, but will 
        distinguish between various shows.
        
    2) run dtsPlayer, select an aggregate device (you may have to create one using 'Audio
        Midi Setup') with a timecode input and an audio output. DtsPlayer will output to
        devices of up to 16 channels. Open the sample WAVs ('Open File'), highlighting them all. 
        Although the test files are named R1.WAV etc, The order of the WAVs in the urls[] array 
        is the reel number, first being reel 1 etc. There are selectors for DTS and SMPTE timecode
        and source selector, choose 'DTS' and 'left' for this test. Press 'Play' to start the player. 
        
    3) run dtsGenerator, select an audio out for dts timecode. I use a USB audio out, and
        loop the output, with a 3.5mm audio cable, to the dtsPlayer timecode input. dtsGenerator
        outputs on L and R. 

    4) Press dtsGenerator 'Play'. you should see DTS timecode incrementing in the player, 
        and audio should play. dtsGenerator, as supplied, generates reels of 101,102,103,104,105
        frames, less than 4 seconds, so you should hear the crossfade when reels change. 

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
