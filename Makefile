all : up

up : 
	sudo mkdir -p ${HOME}/data/wordpress ${HOME}/data/database
	sudo cp -rp ./srcs/requirements/nginx/conf/hosts /etc/hosts
	sudo chmod 777 /etc/hosts
	
	sudo docker-compose -f srcs/docker-compose.yml up --build

down : 
	sudo docker-compose -f srcs/docker-compose.yml down

clean : 
	sudo docker-compose -f srcs/docker-compose.yml down -v --rmi all

dclean :
	sudo rm -rf ${HOME}/data /etc/hosts	

fclean : clean
	sudo docker image prune -f
	sudo docker system prune -f
	sudo rm -rf ${HOME}/data /etc/hosts

re : fclean all

.PHONY : all up down clean fclean re

