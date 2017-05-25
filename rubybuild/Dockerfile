FROM builder

RUN rpmdev-setuptree
WORKDIR /root/rpmbuild/SPECS
RUN curl -OLv https://raw.githubusercontent.com/kcrawford/ruby/master/ruby.spec
WORKDIR /root/rpmbuild
CMD spectool -g -R SPECS/ruby.spec && yum-builddep -y SPECS/ruby.spec && rpmbuild -bb SPECS/ruby.spec
