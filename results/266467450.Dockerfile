[app/sources/266467450.Dockerfile]
digraph {
  "sha256:ba06c426db15de7bdc95d8c5b6fa033751cd6f418403f33c9828fd3e764325be" [label="docker-image://docker.io/library/aerospike:latest" shape="ellipse"];
  "sha256:cf695e138b5be0a4ba9f44c71bbb14c7ff337db496af3308cccbc8ed6c665382" [label="/bin/sh -c rm /etc/aerospike/aerospike.conf" shape="box"];
  "sha256:898b057c22bea804307ddc072aab291f81d4b3441679ac8f5c93394f6ddc1097" [label="local://context" shape="ellipse"];
  "sha256:ffd4609d7b3abf580adc25056cee11e8bb5612a74e4c8228ff0cfd42c5cc36c2" [label="copy{src=/aerospike.conf, dest=/etc/aerospike/aerospike.conf}" shape="note"];
  "sha256:3f7f09c286b13107a0b138b5c5719ad219c4ed0262c105b3c6419e3d0a8be9e7" [label="sha256:3f7f09c286b13107a0b138b5c5719ad219c4ed0262c105b3c6419e3d0a8be9e7" shape="plaintext"];
  "sha256:ba06c426db15de7bdc95d8c5b6fa033751cd6f418403f33c9828fd3e764325be" -> "sha256:cf695e138b5be0a4ba9f44c71bbb14c7ff337db496af3308cccbc8ed6c665382" [label=""];
  "sha256:cf695e138b5be0a4ba9f44c71bbb14c7ff337db496af3308cccbc8ed6c665382" -> "sha256:ffd4609d7b3abf580adc25056cee11e8bb5612a74e4c8228ff0cfd42c5cc36c2" [label=""];
  "sha256:898b057c22bea804307ddc072aab291f81d4b3441679ac8f5c93394f6ddc1097" -> "sha256:ffd4609d7b3abf580adc25056cee11e8bb5612a74e4c8228ff0cfd42c5cc36c2" [label=""];
  "sha256:ffd4609d7b3abf580adc25056cee11e8bb5612a74e4c8228ff0cfd42c5cc36c2" -> "sha256:3f7f09c286b13107a0b138b5c5719ad219c4ed0262c105b3c6419e3d0a8be9e7" [label=""];
}

