setup:
	python3 -m venv ~/.hellp_cloud9

install:
	pip install  --no-cache-dir --upgrade pip &&\
		pip install  --no-cache-dir -r requirements.txt

lint:
	hadolint Dockerfile 
	pylint --disable=R,C,W1203 app.py
	
all: install lint test
	
	
	