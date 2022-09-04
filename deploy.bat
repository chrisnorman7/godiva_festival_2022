@echo off
flutter build web --base-href /gf22/ --release & scp -Cr build\web\* root@backstreets.site:/var/www/html/gf22
