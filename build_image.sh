wget https://github.com/klitgaard/openfast/archive/master.zip

unzip master.zip

mv openfast-master openfast

sudo docker build . -t openfast:1
