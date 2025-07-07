wsl --list --verbose
wsl --install
wsl --list --verbose
wsl --install
ls
mkdir teste
cd teste
lsa
ls
touch teste1
ls
code .
ls
mkdir teste
cd teste/
touch index.js
code .
ls
cd teste/
ls
code .
wsl --list --verbose
sudo apt update && sudo apt upgrade -y
cd .
cd ..
ls
sudo apt install -y     ca-certificates     curl     gnupg     lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |     sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER
docker run hello-world
sudo dockerd
sudo nohup dockerd > /dev/null 2>&1 &
echo \ "deb [arch=$(dpkg --print-architecture) \ signed-by=/etc/apt/keyrings/docker.gpg] \ https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" | \ sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
su
sudo su
usermod -aG sudo felipe
sudo su
wsl --shutdowsd
wsl --shutdows
ls
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |   sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
docker version
sudo nano /etc/wsl.conf
docker --status
docker --help
docker --version
docker run
docker run -d
code .
ls
cd teste
ls
code .
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |   sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
bash
npm install
npm run serve
php artisan serve
npm install 
cd ~
ls
mv ~/blastmail ~/php/blastmail
cd ~/php/blastmail
rm -rf node_modules package-lock.json
npm install
cd ~/php/blastmail
php artisan serve
docker ps -a
php -v
sudo apt update && sudo apt install curl unzip php-cli php-mbstring php-xml php-bcmath php-curl php-mysql php-tokenizer composer git -y
composer -v
cd ~
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === trim(file_get_contents('https://composer.github.io/installer.sig'))) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer -v
composer --version
composer global require laravel/installer
echo 'export PATH="$HOME/.config/composer/vendor/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
laravel -V
laravel new blastmail
git config --global user.email "genistrettifelipe@gmail.com"
git config --global user.name "Felipe Genistretti Rodrigues"
cd blastmail
code .
rm -rf teste/index.js 
rm -rf teste
ls
mkdir php
cd php/
code .
sudo apt update
sudo apt install php php-cli php-mbstring php-xml php-curl php-mysql unzip curl -y
php -v
cls
clear
cd ~/php/blastmail
rm -rf node_modules package-lock.json
node -v
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install --lts
node -v
npm -v
npm install
npm install -g npm@11.4.2
npm run dev
cd ~/php/blastmail
code .
touch database/database.sqlite
cd ~/php/blastmail/database
pwd
wsl -l -v
cd ..
sudo apt update
sudo apt install php8.1-sqlite3
php -m | grep sqlite
php artisan migrate
docker compose up --build
ls
mkdir -p docker/nginx
ls
mkdir -p docker/nginx
ls
cat > docker/nginx/default.conf << 'EOF'
server {
    listen 80;
    index index.php index.html;
    root /var/www/public;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        fastcgi_pass app:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME /var/www/public$fastcgi_script_name;
        include fastcgi_params;
    }

    location ~ /\.ht {
        deny all;
    }
}
EOF

cat > docker/nginx/default.conf << 'EOF'
server {
    listen 80;
    index index.php index.html;
    root /var/www/public;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        fastcgi_pass app:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME /var/www/public$fastcgi_script_name;
        include fastcgi_params;
    }

    location ~ /\.ht {
        deny all;
    }
}
EOF

docker compose up --build
docker compose down
docker compose up --build
cd ~/php/blastmail
php artisan serve
~$ cd ~/php/blastmail
cd ~/php/blastmail
sudo chown -R $(whoami):www-data storage bootstrap/cache
sudo chmod -R 775 storage bootstrap/cache
docker exec -it laravel_app bash
docker images
docker exec -it laravel_app php artisan config:clear
docker exec -it laravel_app php artisan cache:clear
docker exec -it laravel_app php artisan migrate
docker exec -it laravel_app php artisan config:clear
docker exec -it laravel_app php artisan migrate
sudo chown -R $USER:www-data database
sudo chmod -R 775 database
docker exec -it laravel_app bash
ls
cd php
ls
cd ..
ls
cd php
ls
cd ..
mkdir dockerbase
ls
cd dockerbase
git clone https://github.com/sistemastecnol/docker-base.git
git clone git@github.com:sistemastecnol/docker-base.git
git clone https://github.com/sistemastecnol/docker-base.git
ssh-keygen -t ed25519 -C "genistrettifelipe@gmail.com"
ls
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git@github.com:sistemastecnol/docker-base.git
git clone git@github.com:sistemastecnol/docker-base.git
ls
cd docker-base
code .
php artisan serve
npm run dev
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan serve
php artisan make:controller
a:make view
php artisan make:view
git init
git config --global user.email genistrettifelipe@gmail.com
git config --global user.name "Felipe Genistretti"
git add .
git commit -m "inicializando projeto"
git branch -M main
git remote add origin https://github.com/FelipeGenistretti/blastmail.git
git push -u origin main
ls
cd php
ls
cd blastmail
code .
docker-compose up -d
echo $WSL_DISTRO_NAME
docker-compose up -d
docker pull php:8.1-fpm
docker login
docker logout
docker login -u felipegenistrettir
docker pull php:8.1-fpm
docker-compose up -d
code .
cd ~/php/blastmail
sudo chown -R $USER:www-data storage bootstrap/cache
sudo chmod -R 775 storage bootstrap/cache
ls -l /var/www/database/database.sqlite
ls
php artisan config:clear
chmod 664 database/database.sqlite
sudo chown felipe:felipe database/database.sqlite
chmod 664 database/database.sqlite
php artisan migrate
ls -l database/database.sqlite
docker exec -it seu-container bash
docker ps
docker exec -it laravel_app bash
realpath database/database.sqlite
php artisan migrate
docker exec -it laravel_app bash
echo $DB_DATABASE
docker exec -it laravel_app bash
docker compose down
docker compose up -d --build
docker exec -it laravel_app bash
docker exec -it laravel_app php artisan config:clear
docker exec -it laravel_app php artisan migrate
docker ps
ls
cd php
ls
cd blastmail
code .
cd docker-base
make up
cd www
make up
cd ..
make up
sudo apt install make
make up
ping google.com
sudo nano /etc/docker/daemon.json
sudo nano /etc/docker/daemon.json
docker pull ubuntu:22.04
make up
cd docker-base
make up
docker login
make up
apt-get update && apt-get install -y
RUN apt-get update && apt-get install -y     software-properties-common     curl     wget     gnupg
apt-get update && apt-get install -y     software-properties-common     curl     wget     gnupg
sudo chmod -R +r .docker/mongodb
sudo chmod -R 755 .docker/mongodb
sudo apt-get update && sudo apt-get install -y software-properties-common curl wget gnupg
make up
wsl -l -v
docker version
docker compose version
ls
cd php
ls
cd blastmail
docker compose up -d --build
chmod 666 database/database.sqlite
docker compose exec app bash
cd database
readlink database.sqlite
readlink -f database.sqlite
realpath database/database.sqlite
cd ..
cd..
cd ..
ls
cd dockerbase
code .
clear
cd www
ls
cd docker-base
ls
cd www
git clone git@github.com:sistemastecnol/safedataanalytics-api.git
php artisan serve
wget https://github.com/mailpit/mailpit/releases/latest/download/mailpit-linux-amd64
wget https://github.com/axllent/mailpit/releases/download/v1.10.7/mailpit-linux-amd64.tar.gz
cat storage/logs/laravel.log
rm storage/logs/laravel.log
cat storage/logs/laravel.log
php artisan make:controller
ls
cd php
ls
cd blastmail
ls
code .
docker ps
cd ..
docker ps
docker ps -a
cd blastmail
cd database
ls
readlink -f database.sqlite
cd ..
chmod 666 /home/felipe/php/blastmail/database/database.sqlite
chmod 755 /home/felipe/php/blastmail/database
chmod 755 /home/felipe/php/blastmail
chmod 755 /home/felipe/php
chmod 755 /home/felipe
cp /home/felipe/php/blastmail/database/database.sqlite /mnt/c/Users/Felipe/Documents/
ls /mnt/c/Users/
cp /home/felipe/php/blastmail/database/database.sqlite /mnt/c/Users/felipe.rodrigues/Documents/
ls -l database/database.sqlite
docker exec -it NOME_DO_CONTAINER bash
docker ps
vim storage/logs/laravel.log
php artisan migrate
touch database/database.sqlite
chmod 666 database/database.sqlite
php artisan migrate
php artisan serve
php artisan make:view
php artisan view:clear 
php artisan cache:clear
php artisan config:clear
php artisan route:clear 
php artisan config:cache 
php artisan serve
php artisan migrate
ls database/migrations | grep lista
php artisan make:migration create_listas_table
php artisan migrate
sqlite3 database/database.sqlite ".tables"
sudo apt install sqlite3
sqlite3 database/database.sqlite ".tables"
la
ls
cd php
cd blastmail
ls
cd database
ls
rm -rf database.sqlite
ls
cd ..
touch database/database.sqlite
cat .env | grep DB_DATABASE
cd /home/felipe/php/blastmail/database
pwd
cd ..
lsof | grep database.sqlite
ls -l /home/felipe/php/blastmail/database/database.sqlite
rm /home/felipe/php/blastmail/database/database.sqlite
touch /home/felipe/php/blastmail/database/database.sqlite
chmod 664 /home/felipe/php/blastmail/database/database.sqlite
php artisan migrate
chmod 664 /home/felipe/php/blastmail/database/database.sqlite
chmod 775 /home/felipe/php/blastmail/database
sqlite3 /home/felipe/php/blastmail/database/database.sqlite
sudo apt update
cd ~php/blastmail
php artisan config:clear
php artisan cache:clear
ps aux | grep php
kill -9 5606
ps aux | grep sqlite
cd ..
cd downloads
ls
cd php
cd blastmail
sudo apt update
sudo apt install sqlite3
sqlite3 /home/felipe/php/blastmail/database/database.sqlite
cd ..
ls
cd ..
ls
cd dockerbase
ls
cd docker-base
code .
ls
cd www
ls
cd safedataanalytics-api
ls
cd src
ls
cd storage
ls
cd ..
chmod 777 storage
sudo chmod -r 777 storage
sudo chmod -R 777 storage
ls -l
ls -l storage
cd /mnt/c/Users/felipe.rodrigues/dockerbase/docker-base
docker info | grep -i "Operating System"
sudo apt update
sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
docker run hello-world
sudo service docker start
sudo dockerd
ps aux | grep dockerd
docker ps
cd /home/felipe/dockerbase/docker-base
docker compose up -d
sudo usermod -aG docker $USER
exec $SHELL
sudo kill -9 $(pidof dockerd)
sudo dockerd &
sudo docker compose up -d
sudo lsof -i -P -n | grep LISTEN | grep -E '(:6379|:1433|:27017|:80)'
sudo service apache2 stop
docker compose up -d
sudo service apache2 stop
sudo systemctl stop mongod
sudo systemctl stop redis
sudo systemctl stop mssql-server
netstat -aon | findstr :1433
netstat -aon | findstr :27017
netstat -aon | findstr :6379
netstat -aon | findstr :8081
docker compose down -v
docker compose up -d --build
docker compose down -v
docker compose up -d --build
docker compose down -v
docker compose up -d --build
docker compose down -v
cd ~/dockerbase/docker-base
docker compose --file docker-compose-db.yaml --project-name docker-base start
docker compose -f docker-compose.yaml -p docker-base up -d
docker compose -p docker-base logs node_16_alpine_container_name
docker compose -p docker-base logs mssql-server
sudo chmod -R 777 ./.docker/mssql/data
docker compose -p docker-base up -d mssql-server
docker logs docker-base
docker logs node:16-apline
docker logs node:16-alpine
docker ps -a
docker logs docker-base-tecnohub-front-1
cd /mnt/c/Users/Felipe/dockerbase/docker-base
ls /mnt/c/Users
cd /mnt/c/Users/felipe.rodrigues/dockerbase/docker-base
ls /mnt/c/Users/felipe.rodrigues
ls /mnt/c/Users/felipe.rodrigues/Documents
ls /mnt/c/Users/felipe.rodrigues/testeLaravel
git init
git config --global user.email genistrettifelipe@gmail.com
git config --global user.name "Felipe Genistretti Rodrigues"
git add .
git commit -m "inicializando projeto"
git branch -M main
git remote add origin https://github.com/FelipeGenistretti/blastmailteste.git
git push -u origin main
ls
cd php
cd blastmail
ls
code .
