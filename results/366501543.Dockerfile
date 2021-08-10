[app/sources/366501543.Dockerfile]
digraph {
  "sha256:0bc70885d9bccefa43faac509ab677affaa8c436cc25c539c380291323048ca8" [label="docker-image://docker.io/sago007/docker_blockattack:latest" shape="ellipse"];
  "sha256:4f02cb6e2ef22a58c1a59e869fa0e336af4ad5394a1deb7cbfd69d37d5d5b404" [label="/bin/sh -c mkdir -p /staging/blockattack-game" shape="box"];
  "sha256:16c0e89b98d8a8802b9d0cbcb14ed35a56bbee5e2ad3aeec10045322a4181c45" [label="/bin/sh -c mkdir -p /staging/package/" shape="box"];
  "sha256:f9e9c581301cc6db513d99401aea8b584d8abf26ec685f6016d3516747de26ce" [label="/bin/sh -c mkdir -p /output" shape="box"];
  "sha256:d756e63637025f6b41d369b8825233504754b99283f7e12dfeb9e0079d08d6f5" [label="local://context" shape="ellipse"];
  "sha256:b597a5ffd6fa829e906aa6ec01591e10543663bfecccaab91a9cb49afb7a8fba" [label="copy{src=/, dest=/staging/blockattack-game}" shape="note"];
  "sha256:fef6e56144cf68b42247ba4462071759dbd03d1bffe6ef58c233367792ab07ef" [label="/bin/sh -c cd /staging/blockattack-game && ./packdata.sh && cp source/misc/travis_help/utf8_v2_3_4/source/utf8.h source/code/Libs/include/ && cp -r source/misc/travis_help/utf8_v2_3_4/source/utf8 source/code/Libs/include/ && i686-w64-mingw32.static-cmake . && make && cd windows\\ installer/ && makensis install_script.nsi && mv Setup.exe /output/blockattack-installer-${BLOCKATTACK_VERSION}.exe && mkdir /staging/package/blockattack-${BLOCKATTACK_VERSION} && cd /staging/package/blockattack-${BLOCKATTACK_VERSION} && cp /staging/blockattack-game/Game/blockattack.data ./ && cp /staging/blockattack-game/Game/blockattack.exe ./ && cp /staging/blockattack-game/COPYING ./COPYING.txt && cp -r /staging/blockattack-game/source/misc/translation/locale ./ && echo \"[InternetShortcut]\" > \"Block Attack - Rise Of the Blocks.url\" && echo \"URL=https://blockattack.net\" >> \"Block Attack - Rise Of the Blocks.url\" && cd /staging/package/ && zip -r /output/blockattack-${BLOCKATTACK_VERSION}-windows-no-installer.zip \"blockattack-${BLOCKATTACK_VERSION}\" && cd /output && chown nobody * && chmod 666 * && ls -lh" shape="box"];
  "sha256:107f02db6e58a686de419a423fc1b0eac615c5b424be88dda6166ec25dc436db" [label="sha256:107f02db6e58a686de419a423fc1b0eac615c5b424be88dda6166ec25dc436db" shape="plaintext"];
  "sha256:0bc70885d9bccefa43faac509ab677affaa8c436cc25c539c380291323048ca8" -> "sha256:4f02cb6e2ef22a58c1a59e869fa0e336af4ad5394a1deb7cbfd69d37d5d5b404" [label=""];
  "sha256:4f02cb6e2ef22a58c1a59e869fa0e336af4ad5394a1deb7cbfd69d37d5d5b404" -> "sha256:16c0e89b98d8a8802b9d0cbcb14ed35a56bbee5e2ad3aeec10045322a4181c45" [label=""];
  "sha256:16c0e89b98d8a8802b9d0cbcb14ed35a56bbee5e2ad3aeec10045322a4181c45" -> "sha256:f9e9c581301cc6db513d99401aea8b584d8abf26ec685f6016d3516747de26ce" [label=""];
  "sha256:f9e9c581301cc6db513d99401aea8b584d8abf26ec685f6016d3516747de26ce" -> "sha256:b597a5ffd6fa829e906aa6ec01591e10543663bfecccaab91a9cb49afb7a8fba" [label=""];
  "sha256:d756e63637025f6b41d369b8825233504754b99283f7e12dfeb9e0079d08d6f5" -> "sha256:b597a5ffd6fa829e906aa6ec01591e10543663bfecccaab91a9cb49afb7a8fba" [label=""];
  "sha256:b597a5ffd6fa829e906aa6ec01591e10543663bfecccaab91a9cb49afb7a8fba" -> "sha256:fef6e56144cf68b42247ba4462071759dbd03d1bffe6ef58c233367792ab07ef" [label=""];
  "sha256:fef6e56144cf68b42247ba4462071759dbd03d1bffe6ef58c233367792ab07ef" -> "sha256:107f02db6e58a686de419a423fc1b0eac615c5b424be88dda6166ec25dc436db" [label=""];
}

