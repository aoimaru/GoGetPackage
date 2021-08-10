[app/sources/355512705.Dockerfile]
digraph {
  "sha256:08491fe6e550a548ac2ed61cb7e9f2f7e1e88bc05def0ed902e55b628f794ab0" [label="docker-image://docker.io/lsiobase/alpine:arm32v7-3.9" shape="ellipse"];
  "sha256:b537f8bfd1b20d27d4629006a0b90bb56748534b99684d1741110790cc7134e5" [label="/bin/sh -c echo \"**** create var lib folder ****\" &&  install -d -o abc -g abc \t/var/lib/syncthing" shape="box"];
  "sha256:402c6bf0d805cf01efe57eea54941074ed57127586eed190efb281f22bd12e2d" [label="/bin/sh -c echo \"**** install build packages ****\" &&  apk add --no-cache \tcurl \tg++ \tgcc \tgit \tgo \ttar" shape="box"];
  "sha256:df03dee1084d4350268cee7ae4defd57f2e580e5b454d332aee70b0092565a60" [label="/bin/sh -c echo \"**** fetch source code ****\" &&  if [ -z ${SYNCTHING_RELEASE+x} ]; then \tSYNCTHING_RELEASE=$(curl -sX GET \"https://api.github.com/repos/syncthing/syncthing/releases/latest\" \t| awk '/tag_name/{print $4;exit}' FS='[\"\"]');  fi &&  mkdir -p \t/tmp/sync &&  curl -o  /tmp/syncthing-src.tar.gz -L \t\"https://github.com/syncthing/syncthing/archive/${SYNCTHING_RELEASE}.tar.gz\" &&  tar xf  /tmp/syncthing-src.tar.gz -C \t/tmp/sync --strip-components=1 &&  echo \"**** compile syncthing  ****\" &&  cd /tmp/sync &&  CGO_ENABLED=0 go run build.go \t-no-upgrade \t-version=${SYNCTHING_RELEASE} \tbuild syncthing" shape="box"];
  "sha256:0c5d9f5b7db2e170dc6b8397fe2b71fc1e35fe6c7d1852f15b29f9ecda4f2759" [label="copy{src=/tmp/sync/syncthing, dest=/usr/bin/}" shape="note"];
  "sha256:23458bf37b1cd08c50c7e80277b54627ed74eb06c2955dfd899129155f833ffa" [label="local://context" shape="ellipse"];
  "sha256:8b40d9f51849411c03f4dba14b1bb1469df10396dbcfc684d5ba3e4c718228da" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:68ee93f7f924b03629020c3b1fee70e5ffeef3b97719d9bc04b11256e4ade041" [label="sha256:68ee93f7f924b03629020c3b1fee70e5ffeef3b97719d9bc04b11256e4ade041" shape="plaintext"];
  "sha256:08491fe6e550a548ac2ed61cb7e9f2f7e1e88bc05def0ed902e55b628f794ab0" -> "sha256:b537f8bfd1b20d27d4629006a0b90bb56748534b99684d1741110790cc7134e5" [label=""];
  "sha256:08491fe6e550a548ac2ed61cb7e9f2f7e1e88bc05def0ed902e55b628f794ab0" -> "sha256:402c6bf0d805cf01efe57eea54941074ed57127586eed190efb281f22bd12e2d" [label=""];
  "sha256:402c6bf0d805cf01efe57eea54941074ed57127586eed190efb281f22bd12e2d" -> "sha256:df03dee1084d4350268cee7ae4defd57f2e580e5b454d332aee70b0092565a60" [label=""];
  "sha256:b537f8bfd1b20d27d4629006a0b90bb56748534b99684d1741110790cc7134e5" -> "sha256:0c5d9f5b7db2e170dc6b8397fe2b71fc1e35fe6c7d1852f15b29f9ecda4f2759" [label=""];
  "sha256:df03dee1084d4350268cee7ae4defd57f2e580e5b454d332aee70b0092565a60" -> "sha256:0c5d9f5b7db2e170dc6b8397fe2b71fc1e35fe6c7d1852f15b29f9ecda4f2759" [label=""];
  "sha256:0c5d9f5b7db2e170dc6b8397fe2b71fc1e35fe6c7d1852f15b29f9ecda4f2759" -> "sha256:8b40d9f51849411c03f4dba14b1bb1469df10396dbcfc684d5ba3e4c718228da" [label=""];
  "sha256:23458bf37b1cd08c50c7e80277b54627ed74eb06c2955dfd899129155f833ffa" -> "sha256:8b40d9f51849411c03f4dba14b1bb1469df10396dbcfc684d5ba3e4c718228da" [label=""];
  "sha256:8b40d9f51849411c03f4dba14b1bb1469df10396dbcfc684d5ba3e4c718228da" -> "sha256:68ee93f7f924b03629020c3b1fee70e5ffeef3b97719d9bc04b11256e4ade041" [label=""];
}

