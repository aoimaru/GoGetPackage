[app/sources/209529555.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:94c4a493dc963937db19c9198192f7678471d9648ac6aeb0d97e7d67ab50560b" [label="local://context" shape="ellipse"];
  "sha256:264f1753d31ae62942c4f59555961429d931a79280f72aa8bb955d279484287e" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:500c49a1caa25ef7e7fae503c258c670c3f6a1fce67f8bd3eccc35382eb0dba2" [label="mkdir{path=/usr/share/nginx/html}" shape="note"];
  "sha256:784161b96202567cc76fce97e97efa3979d0322cf00a745a0afa88571dfc35e5" [label="copy{src=/dist, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:f7aa9bcca0c953a307e0aeadad293c2a9c96e3c87f71273e9778cae76049bbef" [label="sha256:f7aa9bcca0c953a307e0aeadad293c2a9c96e3c87f71273e9778cae76049bbef" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:264f1753d31ae62942c4f59555961429d931a79280f72aa8bb955d279484287e" [label=""];
  "sha256:94c4a493dc963937db19c9198192f7678471d9648ac6aeb0d97e7d67ab50560b" -> "sha256:264f1753d31ae62942c4f59555961429d931a79280f72aa8bb955d279484287e" [label=""];
  "sha256:264f1753d31ae62942c4f59555961429d931a79280f72aa8bb955d279484287e" -> "sha256:500c49a1caa25ef7e7fae503c258c670c3f6a1fce67f8bd3eccc35382eb0dba2" [label=""];
  "sha256:500c49a1caa25ef7e7fae503c258c670c3f6a1fce67f8bd3eccc35382eb0dba2" -> "sha256:784161b96202567cc76fce97e97efa3979d0322cf00a745a0afa88571dfc35e5" [label=""];
  "sha256:94c4a493dc963937db19c9198192f7678471d9648ac6aeb0d97e7d67ab50560b" -> "sha256:784161b96202567cc76fce97e97efa3979d0322cf00a745a0afa88571dfc35e5" [label=""];
  "sha256:784161b96202567cc76fce97e97efa3979d0322cf00a745a0afa88571dfc35e5" -> "sha256:f7aa9bcca0c953a307e0aeadad293c2a9c96e3c87f71273e9778cae76049bbef" [label=""];
}

