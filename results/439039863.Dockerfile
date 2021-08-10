[app/sources/439039863.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:9072a2d5b1564c42efecee1a2b37359d0f5068f0e90daa83e2bc4dabc92ccd18" [label="/bin/sh -c apt-get update -qy && apt-get upgrade -qy  && apt-get install -qy devscripts     make     libpq-dev     libsqlite3-dev     postgresql-client     python     python-all     python-docutils     python-pip     python-dev  && pip --no-input install envtpl  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d4f09638f2a3678a9e6edc59778b744211f519c8b9e7e9a7e2e79098e8df631c" [label="local://context" shape="ellipse"];
  "sha256:1830d9252d5eacb7e14a8b15bf17dbf1723f676e897cc8ab5450a150254ed78c" [label="copy{src=/nipap, dest=/nipap}" shape="note"];
  "sha256:ab297cbc20145ecc24ec85d3cbb65ddf396b615359b85727488ae3100ddaea3d" [label="mkdir{path=/nipap}" shape="note"];
  "sha256:2c24bd7a399f57d70130f3cb2c52514a47b74300bd4c54a0848f2c4049167a93" [label="/bin/sh -c pip --no-input install -r requirements.txt  && python setup.py install" shape="box"];
  "sha256:e2a83ff058418c8f07b975fa0b0bd7f623267481bb28775aaf9d18d78b0253e7" [label="sha256:e2a83ff058418c8f07b975fa0b0bd7f623267481bb28775aaf9d18d78b0253e7" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:9072a2d5b1564c42efecee1a2b37359d0f5068f0e90daa83e2bc4dabc92ccd18" [label=""];
  "sha256:9072a2d5b1564c42efecee1a2b37359d0f5068f0e90daa83e2bc4dabc92ccd18" -> "sha256:1830d9252d5eacb7e14a8b15bf17dbf1723f676e897cc8ab5450a150254ed78c" [label=""];
  "sha256:d4f09638f2a3678a9e6edc59778b744211f519c8b9e7e9a7e2e79098e8df631c" -> "sha256:1830d9252d5eacb7e14a8b15bf17dbf1723f676e897cc8ab5450a150254ed78c" [label=""];
  "sha256:1830d9252d5eacb7e14a8b15bf17dbf1723f676e897cc8ab5450a150254ed78c" -> "sha256:ab297cbc20145ecc24ec85d3cbb65ddf396b615359b85727488ae3100ddaea3d" [label=""];
  "sha256:ab297cbc20145ecc24ec85d3cbb65ddf396b615359b85727488ae3100ddaea3d" -> "sha256:2c24bd7a399f57d70130f3cb2c52514a47b74300bd4c54a0848f2c4049167a93" [label=""];
  "sha256:2c24bd7a399f57d70130f3cb2c52514a47b74300bd4c54a0848f2c4049167a93" -> "sha256:e2a83ff058418c8f07b975fa0b0bd7f623267481bb28775aaf9d18d78b0253e7" [label=""];
}

