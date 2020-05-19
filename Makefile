all:
	echo "# guessinggame.sh" > README.md
	echo "## " `date` >> README.md
	echo "## Nb of lines of code:" `wc -l guessinggame.sh` "." >> README.md 
clean:
	rm -rf README.md
