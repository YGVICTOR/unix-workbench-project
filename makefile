all: README.md create_header add_date add_num_lines

README.md:
	touch README.md

create_header:
	echo "# unix-workbench-project" >> README.md

add_date:
	echo `date` >> README.md

add_num_lines:
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 

clean:
	rm README.md
