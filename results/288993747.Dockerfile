[app/sources/288993747.Dockerfile]
digraph {
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" [label="docker-image://docker.io/tiangolo/uwsgi-nginx-flask:python3.6" shape="ellipse"];
  "sha256:1d376d636968a6b5ae2e9f6ed5e56bb11ab664922c3c001a530f8194b21a2f5e" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:4154aeaccdf05bd92c199bf6707feb2706f9d5e25d9f93a7ef044a9bddcaf311" [label="/bin/sh -c pip install flask flask-cors psycopg2 raven[flask] celery==4.1.0 passlib[bcrypt] SQLAlchemy==1.1.13 flask-apispec flask-jwt-extended alembic" shape="box"];
  "sha256:5dac9c8492455c73023b6632f6b609988b220a29ba9461b8236064f5135e5bcd" [label="/bin/sh -c bash -c \"if [ $env == 'dev' ] ; then pip install jupyter ; fi\"" shape="box"];
  "sha256:bcebccf0bcebe1fc865882463ce864723d9e6d35403a8932b3268a547d627874" [label="local://context" shape="ellipse"];
  "sha256:3eef3a262f34e0664e3f8843844869e11a355b05dc7ab46fad92c78f88c89a92" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:42c94a1395edda2a31bae15f5482993321b70581da097c7fad10c9e38efd7d22" [label="mkdir{path=/app}" shape="note"];
  "sha256:3aaeaf2c69ea5c0e499a43b6be31127cf95c5937e072c28a8475643271e77c19" [label="sha256:3aaeaf2c69ea5c0e499a43b6be31127cf95c5937e072c28a8475643271e77c19" shape="plaintext"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" -> "sha256:1d376d636968a6b5ae2e9f6ed5e56bb11ab664922c3c001a530f8194b21a2f5e" [label=""];
  "sha256:1d376d636968a6b5ae2e9f6ed5e56bb11ab664922c3c001a530f8194b21a2f5e" -> "sha256:4154aeaccdf05bd92c199bf6707feb2706f9d5e25d9f93a7ef044a9bddcaf311" [label=""];
  "sha256:4154aeaccdf05bd92c199bf6707feb2706f9d5e25d9f93a7ef044a9bddcaf311" -> "sha256:5dac9c8492455c73023b6632f6b609988b220a29ba9461b8236064f5135e5bcd" [label=""];
  "sha256:5dac9c8492455c73023b6632f6b609988b220a29ba9461b8236064f5135e5bcd" -> "sha256:3eef3a262f34e0664e3f8843844869e11a355b05dc7ab46fad92c78f88c89a92" [label=""];
  "sha256:bcebccf0bcebe1fc865882463ce864723d9e6d35403a8932b3268a547d627874" -> "sha256:3eef3a262f34e0664e3f8843844869e11a355b05dc7ab46fad92c78f88c89a92" [label=""];
  "sha256:3eef3a262f34e0664e3f8843844869e11a355b05dc7ab46fad92c78f88c89a92" -> "sha256:42c94a1395edda2a31bae15f5482993321b70581da097c7fad10c9e38efd7d22" [label=""];
  "sha256:42c94a1395edda2a31bae15f5482993321b70581da097c7fad10c9e38efd7d22" -> "sha256:3aaeaf2c69ea5c0e499a43b6be31127cf95c5937e072c28a8475643271e77c19" [label=""];
}

