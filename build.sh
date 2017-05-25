docker build -t builder builder
docker build -t rubybuild rubybuild
docker run --name rubybuild rubybuild
docker cp rubybuild:/root/rpmbuild/RPMS/ .
