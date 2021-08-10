[app/sources/243132538.Dockerfile]
digraph {
  "sha256:06feb72669ed3d0518c6f45cd8d8c43a3e4fc8548784a411601ee2fac1a7556e" [label="docker-image://docker.io/ppc64le/node:7.5.0" shape="ellipse"];
  "sha256:091ccd6e5d52b323a9fb879130c9a648c972a6b4f6cdfbd8bd3041fcc3d0815c" [label="/bin/sh -c apt-get update         && apt-get install -y git build-essential         && git clone https://github.com/blueimp/jQuery-File-Upload --branch=${JQUERY_FILE_UPLOAD_VERSION}         && cd jQuery-File-Upload && npm install && npm test         && apt-get purge -y git build-essential         && apt-get -y autoremove" shape="box"];
  "sha256:abd0e5973708ba8deeea222538382fe1651142be306483cb25f9c222812e324b" [label="sha256:abd0e5973708ba8deeea222538382fe1651142be306483cb25f9c222812e324b" shape="plaintext"];
  "sha256:06feb72669ed3d0518c6f45cd8d8c43a3e4fc8548784a411601ee2fac1a7556e" -> "sha256:091ccd6e5d52b323a9fb879130c9a648c972a6b4f6cdfbd8bd3041fcc3d0815c" [label=""];
  "sha256:091ccd6e5d52b323a9fb879130c9a648c972a6b4f6cdfbd8bd3041fcc3d0815c" -> "sha256:abd0e5973708ba8deeea222538382fe1651142be306483cb25f9c222812e324b" [label=""];
}

