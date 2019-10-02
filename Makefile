
all: build

build:
	docker build -t rundel/ghclass . 

force:
	docker build --no-cache -t rundel/ghclass . 

push: build
	docker push rundel/ghclass
	