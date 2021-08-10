[app/sources/347568389.Dockerfile]
digraph {
  "sha256:6fe19042425e2b2a9752f639ed655b95e39ba497db7ed0636b18ccc293cfb3e7" [label="docker-image://docker.io/mykiwi/symfony-base:7.1-fpm" shape="ellipse"];
  "sha256:87864d952968bf8150420bba6324554551d6ed56619301c13955d1136dbc9916" [label="/bin/sh -c docker-php-ext-install pdo_mysql" shape="box"];
  "sha256:235c3167c3462ff3ea0c7683b3cb6cb80b53c6c34e8334485771e2a3ad0889d3" [label="/bin/sh -c apt-get update &&     apt-get install -y     \tlibpq-dev &&     docker-php-ext-install     \tpdo_pgsql &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:45c5649a93c596910dc241cbbdc96268458018b2c513e0e95c28e0a8b11f9f89" [label="sha256:45c5649a93c596910dc241cbbdc96268458018b2c513e0e95c28e0a8b11f9f89" shape="plaintext"];
  "sha256:6fe19042425e2b2a9752f639ed655b95e39ba497db7ed0636b18ccc293cfb3e7" -> "sha256:87864d952968bf8150420bba6324554551d6ed56619301c13955d1136dbc9916" [label=""];
  "sha256:87864d952968bf8150420bba6324554551d6ed56619301c13955d1136dbc9916" -> "sha256:235c3167c3462ff3ea0c7683b3cb6cb80b53c6c34e8334485771e2a3ad0889d3" [label=""];
  "sha256:235c3167c3462ff3ea0c7683b3cb6cb80b53c6c34e8334485771e2a3ad0889d3" -> "sha256:45c5649a93c596910dc241cbbdc96268458018b2c513e0e95c28e0a8b11f9f89" [label=""];
}

