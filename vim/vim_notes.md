:browse oldfiles
:wall # write all

REPLACING IN SEVERAL FILES

Suppose you want to replace a word in more than one file.  You could edit each
file and type the command manually.  It's a lot faster to use record and
playback.
   Let's assume you have a directory with C++ files, all ending in ".cpp".
There is a function called "GetResp" that you want to rename to "GetAnswer".

	vim *.cpp		Start Vim, defining the argument list to
				contain all the C++ files.  You are now in the
				first file.
	qq			Start recording into the q register
	:%s/\<GetResp\>/GetAnswer/g
				Do the replacements in the first file.
	:wnext			Write this file and move to the next one.
	q			Stop recording.
	@q			Execute the q register.  This will replay the
				substitution and ":wnext".  You can verify
				that this doesn't produce an error message.
	999@q			Execute the q register on the remaining files.

At the last file you will get an error message, because ":wnext" cannot move
to the next file.  This stops the execution, and everything is done.

	Note:
	When playing back a recorded sequence, an error stops the execution.
	Therefore, make sure you don't get an error message when recording.

There is one catch: If one of the .cpp files does not contain the word
"GetResp", you will get an error and replacing will stop.  To avoid this, add
the "e" flag to the substitute command: >

	:%s/\<GetResp\>/GetAnswer/ge

The "e" flag tells ":substitute" that not finding a match is not an error.

*12.5*	Count words

Sometimes you have to write a text with a maximum number of words.  Vim can
count the words for you.
   When the whole file is what you want to count the words in, use this
command: >

	g CTRL-G
