#Makefile
install:
	pip install -r requirements/test_requirements.txt
format:
	
lint:

clean:
	pip uninstall bikeshare_model
	
build: 	
	python3 bikeshare_model/train_pipeline.py

test:
	pytest 

package:
	pip install --upgrade build
	python3 -m build
	
all:install clean build test package 