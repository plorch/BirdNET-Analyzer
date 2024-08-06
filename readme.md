# README.MD

This repo represents our attempt to develop a standardized analysis workflow for analyzing audio recordings using Cornell Lab of Ornithology's BirdNET-Analyzer.

We adopt best practices from the CDFW workflow:

* https://storymaps.arcgis.com/collections/a074c5321dd64ca2902ba72c7012ae64?item=3

and the workflow developed under contract to the National Park System:

https://github.com/nationalparkservice/NSNSDAcoustics?tab=readme-ov-file#installing-nsnsdacoustics

## Download and install BirdNET-Analyzer

Follow these steps:

https://github.com/nationalparkservice/NSNSDAcoustics?tab=readme-ov-file#1-step-1-download-the-fully-packaged-birdnet-analyzer-for-windows-and-follow-the-directions

***Note:***  We assume you will change the install directory to your directory (the one you created if you used this github repo to start).  In other words, you set up a local version of the repo first.  Then in the project folder you created when you installed it, you install BirdNET-Analyzer, so there is a folder in the project folder called BirdNET-Analyzer. If you do not do this, you just need to change the birdnet.path to indicate where you installed BirdNET-Analyzer.exe.

There are detailed instructions on how to

1. rename files (so location information gets added to the filename)
2. run BirdNET-Analyzer on your sound files
3. verify the classifications in the selection table it outputs

We assume you have .wav audio files in folders with a location name (and possibly a time period covered by recordings, if you have multiple periods per location).  For example we designate our "Frog Spring 1" location FR1, but since we downloaded data over a long period, we add the download date to the folder name (e.g., FR1_20230907).  Our RenameFiles code adds this enclosing folder name to the .wav files name.  AudioMoths don't record location information in the file names, so each recorder programmed the same will produce identical filenames.  This can lead to confusion down the road.

