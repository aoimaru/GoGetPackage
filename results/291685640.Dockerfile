[app/sources/291685640.Dockerfile]
digraph {
  "sha256:b58bf1cac8280e59e88e20166cabfa3f1b4f89cf113a4b5de455c22666b07903" [label="docker-image://docker.io/library/postgres:10.6-alpine" shape="ellipse"];
  "sha256:300d4baa214f8627e2006643ca72f26e6886f825fcc0a40d2a1b205fcb0dd3ce" [label="/bin/sh -c if [ -e /usr/local/share/postgresql/postgresql.conf.sample ]; then         postgresfile=/usr/local/share/postgresql/postgresql.conf.sample;     else         postgresfile=/usr/share/postgresql/postgresql.conf.sample;     fi &&     echo fsync=off >> $postgresfile &&    echo synchronous_commit=off >> $postgresfile &&    echo full_page_writes=off >> $postgresfile &&    echo bgwriter_lru_maxpages=0 >> $postgresfile" shape="box"];
  "sha256:89a5f4c3f9e3a9114533fce174fda9774b414029c8dd7b0cca1069d810ffdce5" [label="sha256:89a5f4c3f9e3a9114533fce174fda9774b414029c8dd7b0cca1069d810ffdce5" shape="plaintext"];
  "sha256:b58bf1cac8280e59e88e20166cabfa3f1b4f89cf113a4b5de455c22666b07903" -> "sha256:300d4baa214f8627e2006643ca72f26e6886f825fcc0a40d2a1b205fcb0dd3ce" [label=""];
  "sha256:300d4baa214f8627e2006643ca72f26e6886f825fcc0a40d2a1b205fcb0dd3ce" -> "sha256:89a5f4c3f9e3a9114533fce174fda9774b414029c8dd7b0cca1069d810ffdce5" [label=""];
}

