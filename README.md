# python_binary_build

Container for python binary building from script

## build

~~
docker login
docker-compose -f docker-compose-build.yml build
docker-compose -f docker-compose-build.yml push
~~

# Example binary build from python script

## pull container

~~~~
docker-compose pull
~~~~

## add test code

~~~~
vim ./code/test.py
~~~~

## build binary

~~~~
docker-compose run python_binary_build bash -c 'cd /code; pyinstaller --onefile test.py'
~~~~

## test builded binary

~~~~
./code/dist/test
~~~~

