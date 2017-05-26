docker build -t builder builder

curl -OLv https://raw.githubusercontent.com/kcrawford/ruby/master/ruby.spec

docker run --cap-add=SYS_ADMIN --volume $PWD:/buildroot --volume $PWD/cache:/var/cache/mock builder ruby.spec
