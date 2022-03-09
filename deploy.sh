rm -rf public/
rm public.tar
HUGO_ENV="production" hugo --gc || exit 1
echo OK, now that stuff is built
rsync -azP --delete public/ caddy:/home/opekktar/r0bwk3y.com/
echo OK, now that stuff is uploaded
echo ======================================
echo Done
echo ======================================
