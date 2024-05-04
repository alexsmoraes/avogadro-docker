# avogadro-docker
How to run Avogadro 1.2 under ubuntu 18.04 using a docker container


1. Download this repository

2. Install docker and docker-compose: 

`sudo apt install docker docker-compose`

3. In section "volumes" in the compose.yml file, replace PC_FOLDER by the path of the folder you want to share between your PC and the docker container, and DOCKER_FOLDER by the docker folder in which your files will be saved.
For example, suppose you want to share the folder /home/avogadro-docker/my_files, and you want the files to be in the /home/files_from_pc in the docker container. In this case, the line would be: 
`- /home/avogadro-docker/my_files:/home/files_from_pc`

4. Execute the following commands:

`docker build -t avogadro-docker .`

`docker-compose up -d`

**There you go, your container should be working by now.**

5. To open avogadro, just type:

`docker start avogadro-docker`

`docker exec avogadro-docker avogadro`

6. At the end, if you want to stop your docker container from running, type

`docker stop avogadro-docker`

7. Finally, you can add an *alias* to your .bashrc file to make things easier. For that, do the following:

		1. Open your .bashrc using your preferred program (vi, nano, etc)
		2. Add the following line to the document: alias avogadro-docker='docker start avogadro-docker; docker exec avogadro-docker avogadro' (keep the quotation marks)
		3. Save the document
		4. Type source ~/.bashrc
		5. Just type avogadro-docker in the terminal and the program will open. When you close it, the docker container will also stop automatically.

---

# Acknowledgements

I would like to thank my friend Danilo Pinotti (https://github.com/danilopinotti/) for helping me configure this container.
