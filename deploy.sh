sudo apt-get update
sudo apt-get install python docker docker-compose docker.io nginx
sudo rm /etc/nginx/nginx.conf
sudo cp nginx.conf /etc/nginx/
python -c "import os; f=open('.ctfd_secret_key', 'a+'); f.write(os.urandom(64)); f.close()"
sudo docker-compose up -d
sudo systemctl restart nginx
