[app/sources/345394424.Dockerfile]
digraph {
  "sha256:f3aec456e45d35743505be8f1b13d0b5063cff40e7c07bb34decba97ae3423c1" [label="docker-image://registry.rhc4tp.openshift.com/bitnami/rhel-extras-base-7:latest" shape="ellipse"];
  "sha256:237a3f9ffc41e7ad7ffd7427ee20f4bc014ed437ec9fd65bd9c7a1690b8ceea7" [label="/bin/sh -c install_packages bzip2-libs ca-certificates cyrus-sasl-lib freetype glibc gmp keyutils-libs krb5-libs libcom_err libcurl libgcc libgcrypt libgpg-error libicu libidn libjpeg-turbo libmemcached libpng libselinux libssh2 libstdc++ libxml2 libxslt ncurses-libs nspr nss nss-softokn-freebl nss-util openldap openssl-libs pcre postgresql-libs readline wget xz-libs zlib" shape="box"];
  "sha256:a1fc6693a4a512993e40edd4058e95e602f3dc32dcb40480ab663950c9c9f1be" [label="/bin/sh -c wget -nc -P /tmp/bitnami/pkg/cache/ https://downloads.bitnami.com/files/stacksmith/php-5.6.40-5-linux-x86_64-rhel-7.tar.gz &&     echo \"fa2df6949292002e3d613700951ab2ef6d715fc9007558958a9641fc0188540b  /tmp/bitnami/pkg/cache/php-5.6.40-5-linux-x86_64-rhel-7.tar.gz\" | sha256sum -c - &&     tar -zxf /tmp/bitnami/pkg/cache/php-5.6.40-5-linux-x86_64-rhel-7.tar.gz -P --transform 's|^[^/]*/files|/opt/bitnami|' --wildcards '*/files' &&     rm -rf /tmp/bitnami/pkg/cache/php-5.6.40-5-linux-x86_64-rhel-7.tar.gz" shape="box"];
  "sha256:d1f9eab6b5672b9f2bafe83f16158f7a7de5ab6e9d1b389b65a414ad74ced1c2" [label="/bin/sh -c mkdir -p /bitnami && ln -sf /bitnami/php /bitnami/php-fpm" shape="box"];
  "sha256:77305e39777884080bcf56539848e7761c271f2f17b723658d3b4661ca881988" [label="/bin/sh -c mkdir /opt/bitnami/php/logs && touch /opt/bitnami/php/logs/php-fpm.log" shape="box"];
  "sha256:57741a48ddec4bf3501c8ad77c333cced678b62fa4af856160f86f369b877c23" [label="/bin/sh -c chown -R 1001:root /opt/bitnami/php/logs" shape="box"];
  "sha256:4771666285004678fa70c016ad6c5766ac11d365aa585aa3fa22beef87efa73d" [label="mkdir{path=/app}" shape="note"];
  "sha256:c11719d4b7995b0cc7a341b45435030934f6ccd10e49876f99c0232427424554" [label="sha256:c11719d4b7995b0cc7a341b45435030934f6ccd10e49876f99c0232427424554" shape="plaintext"];
  "sha256:f3aec456e45d35743505be8f1b13d0b5063cff40e7c07bb34decba97ae3423c1" -> "sha256:237a3f9ffc41e7ad7ffd7427ee20f4bc014ed437ec9fd65bd9c7a1690b8ceea7" [label=""];
  "sha256:237a3f9ffc41e7ad7ffd7427ee20f4bc014ed437ec9fd65bd9c7a1690b8ceea7" -> "sha256:a1fc6693a4a512993e40edd4058e95e602f3dc32dcb40480ab663950c9c9f1be" [label=""];
  "sha256:a1fc6693a4a512993e40edd4058e95e602f3dc32dcb40480ab663950c9c9f1be" -> "sha256:d1f9eab6b5672b9f2bafe83f16158f7a7de5ab6e9d1b389b65a414ad74ced1c2" [label=""];
  "sha256:d1f9eab6b5672b9f2bafe83f16158f7a7de5ab6e9d1b389b65a414ad74ced1c2" -> "sha256:77305e39777884080bcf56539848e7761c271f2f17b723658d3b4661ca881988" [label=""];
  "sha256:77305e39777884080bcf56539848e7761c271f2f17b723658d3b4661ca881988" -> "sha256:57741a48ddec4bf3501c8ad77c333cced678b62fa4af856160f86f369b877c23" [label=""];
  "sha256:57741a48ddec4bf3501c8ad77c333cced678b62fa4af856160f86f369b877c23" -> "sha256:4771666285004678fa70c016ad6c5766ac11d365aa585aa3fa22beef87efa73d" [label=""];
  "sha256:4771666285004678fa70c016ad6c5766ac11d365aa585aa3fa22beef87efa73d" -> "sha256:c11719d4b7995b0cc7a341b45435030934f6ccd10e49876f99c0232427424554" [label=""];
}

