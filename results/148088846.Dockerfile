[app/sources/148088846.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:774ed8e1141c1b81697aff4bd36099b5e7cc89edf6c9e238bb33b8ba34fc79ed" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:38b8311a5c646b227cb7754ccda501eea139a03346e7ca34acab3cc245bce055" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0db29c8b6297671c7fe235285a01930cda7a13d05a30cb9a906a88594f3b03e7" [label="/bin/sh -c npm install express-gateway@$VERSION &&     ./node_modules/.bin/eg gateway create -n gateway -d . -t $TYPE &&     npm cache clean --force" shape="box"];
  "sha256:8fd82f6c6993e9cd230d5860f5221a557a759a75e623c86ddf994bf269f32dc9" [label="sha256:8fd82f6c6993e9cd230d5860f5221a557a759a75e623c86ddf994bf269f32dc9" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:774ed8e1141c1b81697aff4bd36099b5e7cc89edf6c9e238bb33b8ba34fc79ed" [label=""];
  "sha256:774ed8e1141c1b81697aff4bd36099b5e7cc89edf6c9e238bb33b8ba34fc79ed" -> "sha256:38b8311a5c646b227cb7754ccda501eea139a03346e7ca34acab3cc245bce055" [label=""];
  "sha256:38b8311a5c646b227cb7754ccda501eea139a03346e7ca34acab3cc245bce055" -> "sha256:0db29c8b6297671c7fe235285a01930cda7a13d05a30cb9a906a88594f3b03e7" [label=""];
  "sha256:0db29c8b6297671c7fe235285a01930cda7a13d05a30cb9a906a88594f3b03e7" -> "sha256:8fd82f6c6993e9cd230d5860f5221a557a759a75e623c86ddf994bf269f32dc9" [label=""];
}

