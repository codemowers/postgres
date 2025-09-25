FROM almalinux:9.6
RUN dnf -y update && dnf -y install dnf-utils glibc-langpack-en
RUN dnf -y module disable postgresql
RUN dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN groupadd -g 26 postgres && \
    useradd -u 26 -g 26 -s /bin/bash -d /var/lib/postgresql postgres
RUN dnf -y install \
  postgresql17-17.6-1PGDG.rhel9 \
  postgresql17-server-17.6-1PGDG.rhel9 \
  postgresql17-contrib-17.6-1PGDG.rhel9 \
  postgresql17-libs-17.6-1PGDG.rhel9
USER 26
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/pgsql-17/bin
