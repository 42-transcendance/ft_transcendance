# ######################################################################################################################
#
#              """          Makefile
#       -\-    _|__
#        |\___/  . \        Created on 13 Aug. 2024 at 14:37
#        \     /(((/        by hmelica
#         \___/)))/         hmelica@student.42.fr
#
# ######################################################################################################################

all:
	docker compose -f srcs/docker-compose.yml up -d --build

debug:
	docker compose -f srcs/docker-compose.yml up --build --watch

start:
	docker compose -f srcs/docker-compose.yml start

stop:
	docker compose -f srcs/docker-compose.yml stop

clean:
	docker compose -f srcs/docker-compose.yml down --rmi all --volumes

fclean: clean

re:
	docker compose -f srcs/docker-compose.yml up -d --force-recreate --build

nuke: fclean
	docker container prune -f
	docker image prune -a -f
	docker volume prune -a -f
	docker system prune -a -f
