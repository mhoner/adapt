cd ./volumes
git clone https://github.com/govCMS/GovCMS.git
cd GovCMS
docker compose up -d
echo 'host: mariadb'
echo 'database: drupal'
echo 'user: drupal'
echo 'pass: drupal'
