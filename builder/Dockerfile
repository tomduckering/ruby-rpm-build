FROM centos:7

RUN yum -y install epel-release
RUN yum -y install rpm-build rpmdevtools redhat-rpm-config
RUN yum -y install mock
ADD mock_build.sh /mock_build.sh
RUN chmod +x /mock_build.sh
RUN mkdir /buildroot
VOLUME /buildroot
VOLUME /var/cache/mock
ENTRYPOINT ["/mock_build.sh"]
