[app/sources/374634988.Dockerfile]
digraph {
  "sha256:7f1cb307e171ef04e8ceab40b5369fbbc23ba69905894b0a6ae2dda7b2473c2f" [label="local://context" shape="ellipse"];
  "sha256:54e33794d36bf0b5ee3f60bf42e845ec58745b57424e68dfe11bd58bd2fcee92" [label="docker-image://docker.io/library/bash:latest" shape="ellipse"];
  "sha256:1785251d3590cc01064502a44bdcd3ccd95c9ce3ac6b0ab6cca80051ec5d75a0" [label="/bin/sh -c adduser -D suzen" shape="box"];
  "sha256:ff49fa911acca44e9a668fd19244ffc165944672448f8a3183762f4a3f92f873" [label="copy{src=/folder_builder, dest=/bin/},copy{src=/hello, dest=/bin/}" shape="note"];
  "sha256:3cd92140582ad82554416689de75610b819ee9714406607e7b56215b3ae83ef8" [label="mkdir{path=/home/suzen}" shape="note"];
  "sha256:1ff87188355f13ef97ef878491163510e5cf9e1c898bd07e21f0c0df6026c24e" [label="/bin/sh -c folder_builder -filename diary.txt -str \"$FLAG\" -subdirs_count 1000 &&     cd /sbin && ls | xargs rm && cd /bin && ls | grep -v hello | xargs rm" shape="box"];
  "sha256:d75abe60637e726881d1d4438f6eaf9ccbf5c88c4231683a10b8c0086f240a6b" [label="sha256:d75abe60637e726881d1d4438f6eaf9ccbf5c88c4231683a10b8c0086f240a6b" shape="plaintext"];
  "sha256:54e33794d36bf0b5ee3f60bf42e845ec58745b57424e68dfe11bd58bd2fcee92" -> "sha256:1785251d3590cc01064502a44bdcd3ccd95c9ce3ac6b0ab6cca80051ec5d75a0" [label=""];
  "sha256:1785251d3590cc01064502a44bdcd3ccd95c9ce3ac6b0ab6cca80051ec5d75a0" -> "sha256:ff49fa911acca44e9a668fd19244ffc165944672448f8a3183762f4a3f92f873" [label=""];
  "sha256:7f1cb307e171ef04e8ceab40b5369fbbc23ba69905894b0a6ae2dda7b2473c2f" -> "sha256:ff49fa911acca44e9a668fd19244ffc165944672448f8a3183762f4a3f92f873" [label=""];
  "sha256:ff49fa911acca44e9a668fd19244ffc165944672448f8a3183762f4a3f92f873" -> "sha256:3cd92140582ad82554416689de75610b819ee9714406607e7b56215b3ae83ef8" [label=""];
  "sha256:3cd92140582ad82554416689de75610b819ee9714406607e7b56215b3ae83ef8" -> "sha256:1ff87188355f13ef97ef878491163510e5cf9e1c898bd07e21f0c0df6026c24e" [label=""];
  "sha256:1ff87188355f13ef97ef878491163510e5cf9e1c898bd07e21f0c0df6026c24e" -> "sha256:d75abe60637e726881d1d4438f6eaf9ccbf5c88c4231683a10b8c0086f240a6b" [label=""];
}

