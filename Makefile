all : up

up : 
	sudo mkdir -p ${HOME}/data/wordpress ${HOME}/data/database
	sudo docker-compose -f srcs/docker-compose.yml up -d --build
	sudo cp -rp ./srcs/requirements/nginx/conf/hosts /etc/hosts
	sudo chmod 777 /etc/hosts

down :
	sudo docker-compose -f srcs/docker-compose.yml down

clean : 
	sudo docker-compose -f src/docker-compose.yml down -v --rmi all

fclean : clean
	sudo docker stop $$(sudo docker ps -a -q)
	sudo docker rm -f $$(sudo docker ps -a -q)
	sudo docker rmi -f $$(sudo docker images -q)
	sudo docker system prune -f
	sudo rm -rf ${HOME}/data /etc/hosts	

re : fclean all

.PHONY : all up down clean fclean re