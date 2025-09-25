FROM almalinux:9.6
RUN dnf -y update && dnf -y install dnf-utils
RUN dnf -y module disable postgresql
RUN dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN dnf -y install \
  postgresql17-17.6-1PGDG.rhel9 \
  postgresql17-server-17.6-1PGDG.rhel9 \
  postgresql17-contrib-17.6-1PGDG.rhel9 \
  postgresql17-libs-17.6-1PGDG.rhel9
