echo 'Going into the projects directory'
cd D:/development/projects/go-micro/go-micro/project
echo 'Running make stop'
make stop
echo 'Running make down'
make down
echo 'Building...'
make up_build
echo 'Build Completed!'
sh 'JENKINS_NODE_COOKIE=dontKillMe myProcess'
make start
