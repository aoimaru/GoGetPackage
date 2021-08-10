[app/sources/200952771.Dockerfile]
digraph {
  "sha256:d1549d1ed51d056aa0b2814255c7aaa8eac4b98a8b6286a480fbf7a9572892cf" [label="docker-image://docker.io/library/python:2.7.15-jessie" shape="ellipse"];
  "sha256:b717e7142afb7fdd5965df70d8fd8c63eec2ecb84855ac99f474c2cf07753ea0" [label="/bin/sh -c useradd -m -d /var/lib/odoo -s /bin/false -u 104 -g 33 odoo" shape="box"];
  "sha256:15e5a584b384f6129c8fd047244a806dda8c6d6fe5436bf3bd4b1fa90f797398" [label="/bin/sh -c set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb" shape="box"];
  "sha256:c5d0d3fa2d517a3ecc8a3ada81bae35363ff07d94285cbceea97957ed3239367" [label="/bin/sh -c echo \"deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main 10\" > /etc/apt/sources.list.d/postgresql.list         && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -         && apt-get update         && apt-get upgrade -y postgresql-common         && apt-get upgrade -y postgresql-client" shape="box"];
  "sha256:71bb0a97f2ba4e5761b68d564326dcd054e05df9c158ec4e6c513a8121328cbe" [label="/bin/sh -c apt-get purge -y python.*" shape="box"];
  "sha256:cf30e72e5a3284758e5451d83c39590785dd79e9c2b50f668268c58289e7f228" [label="/bin/sh -c set -x;         apt-get install -y libsasl2-dev libldap2-dev libssl-dev gcc         && curl -o odoo.tar.gz -SL https://nightly.odoo.com/${ODOO_VERSION}/nightly/src/odoo_${ODOO_VERSION}.${ODOO_RELEASE}.tar.gz         && tar xzf odoo.tar.gz         && cd odoo-${ODOO_VERSION}*         && pip install -r ./requirements.txt         && pip install .         && cd .. && rm -rf ./odoo*         && pip install --upgrade             cryptography             watchdog             newrelic             flanker             uszipcode             cachetools             magento             pycrypto         && apt-get purge -y             gcc             libsasl2-dev             libldap2-dev             libssl-dev" shape="box"];
  "sha256:2b99f2163fa977f74abf9ccda617d7c9148cfd65e41510a35f05c8e87e4d60ef" [label="/bin/sh -c set -x;         curl -sL https://deb.nodesource.com/setup_10.x | bash -         && apt-get install -y nodejs         && npm install -g less         ;" shape="box"];
  "sha256:65afc6caaa22881ad1f829aefaf27d9ef840ff1625c7eff017a59a97c1f3850d" [label="local://context" shape="ellipse"];
  "sha256:0382e8b3fa75cda4ba631c7dd1999fdbbfa6f8b4279b554365e2b30e396a5c43" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:f6dfc6ef3e0761dee749044d2056c97aa9565780bf070ab41635f40a1ce62bb1" [label="copy{src=/odoo.conf, dest=/etc/odoo/}" shape="note"];
  "sha256:7634f58154bfe55527d895ec9ac20024fd36cd60bda134bb879193f1d475dec0" [label="/bin/sh -c chown odoo /etc/odoo/odoo.conf" shape="box"];
  "sha256:5719fd4eec8e6c361122fb4c8977be3c9e6a0c1c0e264e0ec1ed97381e5980c7" [label="/bin/sh -c mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons" shape="box"];
  "sha256:ef57b2bb3ccc9d18f878e121b8bf9463f2d58c5e5661fa2fff88bc3c8f5f18e8" [label="sha256:ef57b2bb3ccc9d18f878e121b8bf9463f2d58c5e5661fa2fff88bc3c8f5f18e8" shape="plaintext"];
  "sha256:d1549d1ed51d056aa0b2814255c7aaa8eac4b98a8b6286a480fbf7a9572892cf" -> "sha256:b717e7142afb7fdd5965df70d8fd8c63eec2ecb84855ac99f474c2cf07753ea0" [label=""];
  "sha256:b717e7142afb7fdd5965df70d8fd8c63eec2ecb84855ac99f474c2cf07753ea0" -> "sha256:15e5a584b384f6129c8fd047244a806dda8c6d6fe5436bf3bd4b1fa90f797398" [label=""];
  "sha256:15e5a584b384f6129c8fd047244a806dda8c6d6fe5436bf3bd4b1fa90f797398" -> "sha256:c5d0d3fa2d517a3ecc8a3ada81bae35363ff07d94285cbceea97957ed3239367" [label=""];
  "sha256:c5d0d3fa2d517a3ecc8a3ada81bae35363ff07d94285cbceea97957ed3239367" -> "sha256:71bb0a97f2ba4e5761b68d564326dcd054e05df9c158ec4e6c513a8121328cbe" [label=""];
  "sha256:71bb0a97f2ba4e5761b68d564326dcd054e05df9c158ec4e6c513a8121328cbe" -> "sha256:cf30e72e5a3284758e5451d83c39590785dd79e9c2b50f668268c58289e7f228" [label=""];
  "sha256:cf30e72e5a3284758e5451d83c39590785dd79e9c2b50f668268c58289e7f228" -> "sha256:2b99f2163fa977f74abf9ccda617d7c9148cfd65e41510a35f05c8e87e4d60ef" [label=""];
  "sha256:2b99f2163fa977f74abf9ccda617d7c9148cfd65e41510a35f05c8e87e4d60ef" -> "sha256:0382e8b3fa75cda4ba631c7dd1999fdbbfa6f8b4279b554365e2b30e396a5c43" [label=""];
  "sha256:65afc6caaa22881ad1f829aefaf27d9ef840ff1625c7eff017a59a97c1f3850d" -> "sha256:0382e8b3fa75cda4ba631c7dd1999fdbbfa6f8b4279b554365e2b30e396a5c43" [label=""];
  "sha256:0382e8b3fa75cda4ba631c7dd1999fdbbfa6f8b4279b554365e2b30e396a5c43" -> "sha256:f6dfc6ef3e0761dee749044d2056c97aa9565780bf070ab41635f40a1ce62bb1" [label=""];
  "sha256:65afc6caaa22881ad1f829aefaf27d9ef840ff1625c7eff017a59a97c1f3850d" -> "sha256:f6dfc6ef3e0761dee749044d2056c97aa9565780bf070ab41635f40a1ce62bb1" [label=""];
  "sha256:f6dfc6ef3e0761dee749044d2056c97aa9565780bf070ab41635f40a1ce62bb1" -> "sha256:7634f58154bfe55527d895ec9ac20024fd36cd60bda134bb879193f1d475dec0" [label=""];
  "sha256:7634f58154bfe55527d895ec9ac20024fd36cd60bda134bb879193f1d475dec0" -> "sha256:5719fd4eec8e6c361122fb4c8977be3c9e6a0c1c0e264e0ec1ed97381e5980c7" [label=""];
  "sha256:5719fd4eec8e6c361122fb4c8977be3c9e6a0c1c0e264e0ec1ed97381e5980c7" -> "sha256:ef57b2bb3ccc9d18f878e121b8bf9463f2d58c5e5661fa2fff88bc3c8f5f18e8" [label=""];
}

