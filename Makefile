NAME = necbaas/tomcat

all: image

image:
	docker image build -t $(NAME) .

rmi:
	docker image rm $(NAME)

bash:
	docker container run -it --rm $(NAME) /bin/bash

start:
	docker container run -d $(PORT_OPTS) $(VOLUME_OPTS) $(NAME)

push:
	docker image push $(NAME)
