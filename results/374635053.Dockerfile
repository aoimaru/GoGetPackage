[app/sources/374635053.Dockerfile]
digraph {
  "sha256:54e33794d36bf0b5ee3f60bf42e845ec58745b57424e68dfe11bd58bd2fcee92" [label="docker-image://docker.io/library/bash:latest" shape="ellipse"];
  "sha256:1785251d3590cc01064502a44bdcd3ccd95c9ce3ac6b0ab6cca80051ec5d75a0" [label="/bin/sh -c adduser -D suzen" shape="box"];
  "sha256:20c44c680345207936f6ff8d6084221b992d7ec7aa34dafe5112591e31e3eee8" [label="local://context" shape="ellipse"];
  "sha256:5ee0c021ffb3fc2a8db18147379cf30fdee0188e407b14adb0f3a46d2d3e1dbe" [label="copy{src=/hello, dest=/bin/hello}" shape="note"];
  "sha256:9c884be66aeb93f859e11ce224cb7b88e3e248f0fdbd0ca86f635e6b11692165" [label="copy{src=/normies_files, dest=/home/suzen/normies_files}" shape="note"];
  "sha256:4dd7ae4e477ee47a8589898956a4ca7fae1351f4a6da6b21df776fe0870c24b6" [label="mkdir{path=/home/suzen}" shape="note"];
  "sha256:dec9a6bf6f0c0ec3a97eb31538476421aff562a84b6de0a9635d9ec439c38e9c" [label="/bin/sh -c split -l 1 -a 4 normies_files && rm normies_files && for f in *; do mv $f $(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 15 | head -n 1); done" shape="box"];
  "sha256:e3ec1f9114fd7cbf3f080418b88493eff972878f894604bf5d20eb4f0f1110ac" [label="copy{src=/chads_files, dest=/home/suzen/chads_files}" shape="note"];
  "sha256:bc19fb142aa5b0a8458cdb38051c0df143e79b1be7f9e71b10a2b9781bebf51a" [label="/bin/sh -c split -l 1 chads_files && rm chads_files && i=0;for f in ???; do mv $f \"${FLAG:i:15}\"; key_by_parts=$key_by_parts\" ${FLAG:i:15}_$((i/15+1))\"; i=$(($i+15)); done; key_parts_sequence=$(echo $key_by_parts | xargs -n1 | sort -r | sed 's/^.\\{16\\}//' | xargs) && sed -i \"s/INSERT_SEQ_HERE/${key_parts_sequence}/g\" /bin/hello" shape="box"];
  "sha256:86b90a9478fc77c2dcf51c4e5ee68bc4a98b2f56cdfdaa25ac07379e0dc7c4bb" [label="sha256:86b90a9478fc77c2dcf51c4e5ee68bc4a98b2f56cdfdaa25ac07379e0dc7c4bb" shape="plaintext"];
  "sha256:54e33794d36bf0b5ee3f60bf42e845ec58745b57424e68dfe11bd58bd2fcee92" -> "sha256:1785251d3590cc01064502a44bdcd3ccd95c9ce3ac6b0ab6cca80051ec5d75a0" [label=""];
  "sha256:1785251d3590cc01064502a44bdcd3ccd95c9ce3ac6b0ab6cca80051ec5d75a0" -> "sha256:5ee0c021ffb3fc2a8db18147379cf30fdee0188e407b14adb0f3a46d2d3e1dbe" [label=""];
  "sha256:20c44c680345207936f6ff8d6084221b992d7ec7aa34dafe5112591e31e3eee8" -> "sha256:5ee0c021ffb3fc2a8db18147379cf30fdee0188e407b14adb0f3a46d2d3e1dbe" [label=""];
  "sha256:5ee0c021ffb3fc2a8db18147379cf30fdee0188e407b14adb0f3a46d2d3e1dbe" -> "sha256:9c884be66aeb93f859e11ce224cb7b88e3e248f0fdbd0ca86f635e6b11692165" [label=""];
  "sha256:20c44c680345207936f6ff8d6084221b992d7ec7aa34dafe5112591e31e3eee8" -> "sha256:9c884be66aeb93f859e11ce224cb7b88e3e248f0fdbd0ca86f635e6b11692165" [label=""];
  "sha256:9c884be66aeb93f859e11ce224cb7b88e3e248f0fdbd0ca86f635e6b11692165" -> "sha256:4dd7ae4e477ee47a8589898956a4ca7fae1351f4a6da6b21df776fe0870c24b6" [label=""];
  "sha256:4dd7ae4e477ee47a8589898956a4ca7fae1351f4a6da6b21df776fe0870c24b6" -> "sha256:dec9a6bf6f0c0ec3a97eb31538476421aff562a84b6de0a9635d9ec439c38e9c" [label=""];
  "sha256:dec9a6bf6f0c0ec3a97eb31538476421aff562a84b6de0a9635d9ec439c38e9c" -> "sha256:e3ec1f9114fd7cbf3f080418b88493eff972878f894604bf5d20eb4f0f1110ac" [label=""];
  "sha256:20c44c680345207936f6ff8d6084221b992d7ec7aa34dafe5112591e31e3eee8" -> "sha256:e3ec1f9114fd7cbf3f080418b88493eff972878f894604bf5d20eb4f0f1110ac" [label=""];
  "sha256:e3ec1f9114fd7cbf3f080418b88493eff972878f894604bf5d20eb4f0f1110ac" -> "sha256:bc19fb142aa5b0a8458cdb38051c0df143e79b1be7f9e71b10a2b9781bebf51a" [label=""];
  "sha256:bc19fb142aa5b0a8458cdb38051c0df143e79b1be7f9e71b10a2b9781bebf51a" -> "sha256:86b90a9478fc77c2dcf51c4e5ee68bc4a98b2f56cdfdaa25ac07379e0dc7c4bb" [label=""];
}

