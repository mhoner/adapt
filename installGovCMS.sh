cd ./volumes
git clone https://github.com/govCMS/GovCMS.git
cd GovCMS
# Change container volumes to ensure persistance
sed -i '' 's.- /var/www/html/sites.- $PWD/sites:/app/web/sites.g' docker-compose.yml
sed -i '' 's.- /var/lib/mysql.- \.\./mariadb:/var/lib/mysql.g' docker-compose.yml
# Start Docker stack using compose in detached mode
docker compose up -d
echo '*** Initial database setup settings ***'
echo 'host: mariadb'
echo 'database: drupal'
echo 'user: drupal'
echo 'pass: drupal'
echo '*** Access drush cli, run: *******'
echo 'docker exec -it <container-hash> sh'