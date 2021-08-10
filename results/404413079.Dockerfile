[app/sources/404413079.Dockerfile]
digraph {
  "sha256:14b08876ce1c427c3db3cb87cf3be0cf0f976d81550443a778c2b93e06215331" [label="local://context" shape="ellipse"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" [label="docker-image://docker.io/library/debian:testing" shape="ellipse"];
  "sha256:f1b2de73c76259747f89b80c49f98483e9cf9a3c4df52e64310956a99e3eac02" [label="copy{src=/docker/mingw/prepare.sh, dest=/}" shape="note"];
  "sha256:8dfe9ef3e81b9327923a57d71f4ce732e3c641df346e83c1ac367c8886b77f79" [label="/bin/sh -c /bin/bash -c \"source /prepare.sh && dk_prepare\" &&   apt-get clean &&   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /build" shape="box"];
  "sha256:6dacf781e303aea0f33947afd52f8bd10b24d80f585ef845560b3b9b3acfbc70" [label="/bin/sh -c /bin/bash -c \"source /prepare.sh && dk_download\"" shape="box"];
  "sha256:062ddecc28079e5aeda0b32d35586fa12437d035e8d8f26d3edb14a177a2bae8" [label="copy{src=/docker/mingw/deps.sh, dest=/}" shape="note"];
  "sha256:9dfa1f70e83890d8eae2a823e0779144bae1fc66a07d7547340dd2da543ba5ce" [label="/bin/sh -c /bin/bash -c \"source /deps.sh && dk_deps\"" shape="box"];
  "sha256:b40b0594bcd33b07a65fd3064aca37b0ee31cd598936c6e6775c47b909e6ef8e" [label="copy{src=/docker/mingw/build.sh, dest=/}" shape="note"];
  "sha256:57f0994a0b09708f0e8f4ef40246890ef90510700a96a57b688886554f6953e5" [label="copy{src=/, dest=/build/src/proj}" shape="note"];
  "sha256:c515845743bb46f7fd80ee288e0e550ac9fbcb978bad0b42a642a5145eb5e9dc" [label="/bin/sh -c /bin/bash -c \"source /build.sh && dk_build\"" shape="box"];
  "sha256:42dc04eb7319ba1c657add7e78605b29098aef6d035c658728ba6447f9e678b7" [label="/bin/sh -c /bin/bash -c \"source /build.sh && dk_package\"" shape="box"];
  "sha256:36cfa833205a05ec506ed509f0332c7642335a1e411c2ef950cd97a0546a68e9" [label="sha256:36cfa833205a05ec506ed509f0332c7642335a1e411c2ef950cd97a0546a68e9" shape="plaintext"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" -> "sha256:f1b2de73c76259747f89b80c49f98483e9cf9a3c4df52e64310956a99e3eac02" [label=""];
  "sha256:14b08876ce1c427c3db3cb87cf3be0cf0f976d81550443a778c2b93e06215331" -> "sha256:f1b2de73c76259747f89b80c49f98483e9cf9a3c4df52e64310956a99e3eac02" [label=""];
  "sha256:f1b2de73c76259747f89b80c49f98483e9cf9a3c4df52e64310956a99e3eac02" -> "sha256:8dfe9ef3e81b9327923a57d71f4ce732e3c641df346e83c1ac367c8886b77f79" [label=""];
  "sha256:8dfe9ef3e81b9327923a57d71f4ce732e3c641df346e83c1ac367c8886b77f79" -> "sha256:6dacf781e303aea0f33947afd52f8bd10b24d80f585ef845560b3b9b3acfbc70" [label=""];
  "sha256:6dacf781e303aea0f33947afd52f8bd10b24d80f585ef845560b3b9b3acfbc70" -> "sha256:062ddecc28079e5aeda0b32d35586fa12437d035e8d8f26d3edb14a177a2bae8" [label=""];
  "sha256:14b08876ce1c427c3db3cb87cf3be0cf0f976d81550443a778c2b93e06215331" -> "sha256:062ddecc28079e5aeda0b32d35586fa12437d035e8d8f26d3edb14a177a2bae8" [label=""];
  "sha256:062ddecc28079e5aeda0b32d35586fa12437d035e8d8f26d3edb14a177a2bae8" -> "sha256:9dfa1f70e83890d8eae2a823e0779144bae1fc66a07d7547340dd2da543ba5ce" [label=""];
  "sha256:9dfa1f70e83890d8eae2a823e0779144bae1fc66a07d7547340dd2da543ba5ce" -> "sha256:b40b0594bcd33b07a65fd3064aca37b0ee31cd598936c6e6775c47b909e6ef8e" [label=""];
  "sha256:14b08876ce1c427c3db3cb87cf3be0cf0f976d81550443a778c2b93e06215331" -> "sha256:b40b0594bcd33b07a65fd3064aca37b0ee31cd598936c6e6775c47b909e6ef8e" [label=""];
  "sha256:b40b0594bcd33b07a65fd3064aca37b0ee31cd598936c6e6775c47b909e6ef8e" -> "sha256:57f0994a0b09708f0e8f4ef40246890ef90510700a96a57b688886554f6953e5" [label=""];
  "sha256:14b08876ce1c427c3db3cb87cf3be0cf0f976d81550443a778c2b93e06215331" -> "sha256:57f0994a0b09708f0e8f4ef40246890ef90510700a96a57b688886554f6953e5" [label=""];
  "sha256:57f0994a0b09708f0e8f4ef40246890ef90510700a96a57b688886554f6953e5" -> "sha256:c515845743bb46f7fd80ee288e0e550ac9fbcb978bad0b42a642a5145eb5e9dc" [label=""];
  "sha256:c515845743bb46f7fd80ee288e0e550ac9fbcb978bad0b42a642a5145eb5e9dc" -> "sha256:42dc04eb7319ba1c657add7e78605b29098aef6d035c658728ba6447f9e678b7" [label=""];
  "sha256:42dc04eb7319ba1c657add7e78605b29098aef6d035c658728ba6447f9e678b7" -> "sha256:36cfa833205a05ec506ed509f0332c7642335a1e411c2ef950cd97a0546a68e9" [label=""];
}

