echo 'Going into the projects directory'
cd home/luis/go-micro/go-micro
echo 'Running make stop'
make stop
echo 'Running make down'
make down
echo 'Building...'
make up_build
echo 'Build Completed!'
