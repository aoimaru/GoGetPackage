[app/sources/291685973.Dockerfile]
digraph {
  "sha256:4b3143f8c21919989d866b32432efea1cf20355e5eeff71eda85ac85597af5ef" [label="docker-image://docker.io/library/postgres:9.6.7-alpine" shape="ellipse"];
  "sha256:4c88df21eb10ecb076c41fb3ca6c6ba090099668c7e61417054aa1d77a2394f8" [label="/bin/sh -c if [ -e /usr/local/share/postgresql/postgresql.conf.sample ]; then         postgresfile=/usr/local/share/postgresql/postgresql.conf.sample;     else         postgresfile=/usr/share/postgresql/postgresql.conf.sample;     fi &&     echo fsync=off >> $postgresfile &&    echo synchronous_commit=off >> $postgresfile &&    echo full_page_writes=off >> $postgresfile &&    echo bgwriter_lru_maxpages=0 >> $postgresfile" shape="box"];
  "sha256:8174e158cb0378e03cf66d65bc695c931eda7dc61b1062b286f2d2c9676ea864" [label="sha256:8174e158cb0378e03cf66d65bc695c931eda7dc61b1062b286f2d2c9676ea864" shape="plaintext"];
  "sha256:4b3143f8c21919989d866b32432efea1cf20355e5eeff71eda85ac85597af5ef" -> "sha256:4c88df21eb10ecb076c41fb3ca6c6ba090099668c7e61417054aa1d77a2394f8" [label=""];
  "sha256:4c88df21eb10ecb076c41fb3ca6c6ba090099668c7e61417054aa1d77a2394f8" -> "sha256:8174e158cb0378e03cf66d65bc695c931eda7dc61b1062b286f2d2c9676ea864" [label=""];
}

