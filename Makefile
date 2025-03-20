#Makefile
install:
	pip install -r requirements/test_requirements.txt
format:
	
lint:

build: 	
	python3 bikeshare_model/train_pipeline.py

test:
	pytest 

package:
	pip install --upgrade build
	python3 -m build
	
all:install build test package