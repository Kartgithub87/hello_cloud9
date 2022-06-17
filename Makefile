setup:
	python3 -m venv ~/.hellp_cloud9

install:
	pip install  --no-cache-dir --upgrade pip &&\
		pip install  --no-cache-dir -r requirements.txt
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
	sudo chmod +x /bin/hadolint

lint:
	hadolint Dockerfile 
	pylint --disable=R,C,W1203 app.py
	
all: install lint test
	
	
	