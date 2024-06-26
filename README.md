# avogadro-docker
How to run Avogadro 1.2 under ubuntu 18.04 using a docker container


1. Download this repository

2. Install docker and docker-compose: 

```
sudo apt install docker docker-compose
```

3. Now you need to give your user permission to execute docker commands, otherwise you will need to run everything from now on using `sudo`. For giving those permissions, just run the following command:

```
sudo usermod -aG docker $USER
```

Now you need to restart your computer for all permissions to work. 

If you want to do that later, just run the following commands as a superuser (type `sudo su` to enter root mode or use sudo in front of all docker commands below).

4. Execute the following commands:

```
docker build -t avogadro-docker .
```

```
docker-compose up -d
```

**There you go, your container should be working by now.**

**All files you want to share between your PC and your docker container must be in the 'shared' folder.**

**There is an example file (benzene.xyz) inside the shared folder if you want to open it to check if everything is working.**

5. To open avogadro, just type:

```
docker start avogadro-docker
```

```
docker exec avogadro-docker avogadro
```

6. At the end, if you want to stop your docker container from running, type

```
docker stop avogadro-docker
```

7. Finally, you can add an *alias* to your .bashrc file to make things easier. For that, do the following:

	1. Open your .bashrc using your preferred program (vi, nano, etc)
	2. Add the following line to the document:
	
  	```
   	alias avogadro-docker='docker start avogadro-docker; docker exec avogadro-docker avogadro; docker stop avogadro-docker'
   	```

   	3. Save the document
	4. Type source ~/.bashrc
	5. Just type avogadro-docker in the terminal and the program will open. When you close it, the docker container will also stop automatically.
    
---

# Acknowledgements

I would like to thank my friend Danilo Pinotti (https://github.com/danilopinotti/) for all the help in configuring this container.
