[app/sources/241319496.Dockerfile]
digraph {
  "sha256:c83cb2cbb7e0b1fee617e15a285c38945a7088132c6fad3009b656608c4ea018" [label="local://context" shape="ellipse"];
  "sha256:d6979c8b580bdef00daee055d8af190ce622fa8a16d36c05e162fdf901f2ba81" [label="docker-image://docker.io/lsiobase/alpine.python:3.8" shape="ellipse"];
  "sha256:2774462ad30496f9ca3885d2a21e610839d4aaee10e3eb09e77d7d368890a7f2" [label="/bin/sh -c apk add --no-cache --virtual=build-dependencies \tg++ \tgcc \tmake &&  apk add --no-cache \tghostscript  \tmesa-gl  \tqt5-qtbase-x11  \txdg-utils && apk add py-html5lib --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ &&  rar_ver=$(apk info unrar | grep unrar- | cut -d \"-\" -f2 | head -1) &&  mkdir -p \t/tmp/unrar &&  curl -o  /tmp/unrar-src.tar.gz -L \t\"http://www.rarlab.com/rar/unrarsrc-${rar_ver}.tar.gz\" &&  tar xf  /tmp/unrar-src.tar.gz -C \t/tmp/unrar --strip-components=1 &&  cd /tmp/unrar &&  make lib &&  make install-lib &&  apk --no-cache --allow-untrusted -X https://apkproxy.herokuapp.com/sgerrand/alpine-pkg-glibc add glibc glibc-bin &&  /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib &&  echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf && wget -O- ${CALIBRE_INSTALLER_SOURCE_CODE_URL} | python -c \"import sys; main=lambda:sys.stderr.write('Download failed\\n'); exec(sys.stdin.read()); main(install_dir='/opt', isolated=True)\" &&  git clone --depth 1 https://gitlab.com/LazyLibrarian/LazyLibrarian.git /app/lazylibrarian &&  apk del --purge \tbuild-dependencies &&  rm -rf \t/tmp/* &&  rm -rf     /tmp/calibre-installer-cache &&  rm -rf    glibc.apk glibc-bin.apk /var/cache/apk/*" shape="box"];
  "sha256:f827e23ce1c86a78e9a12e513a8017e1960737f81eaf459170b8f4fc8c926b48" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:4304437e0c8b8ae07c40e64dac61b8c45f367721357ba9b4557787ddce3422fd" [label="/bin/sh -c pip install apprise" shape="box"];
  "sha256:546d2241aaad2fd4fd1d9bd3250f92058c2c94a20bbb44452e1e466cebeb12fc" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:cd4cbd2f23b7ab4894dc97ea2e30efbb7979088c10c2041485282804459715d5" [label="sha256:cd4cbd2f23b7ab4894dc97ea2e30efbb7979088c10c2041485282804459715d5" shape="plaintext"];
  "sha256:d6979c8b580bdef00daee055d8af190ce622fa8a16d36c05e162fdf901f2ba81" -> "sha256:2774462ad30496f9ca3885d2a21e610839d4aaee10e3eb09e77d7d368890a7f2" [label=""];
  "sha256:2774462ad30496f9ca3885d2a21e610839d4aaee10e3eb09e77d7d368890a7f2" -> "sha256:f827e23ce1c86a78e9a12e513a8017e1960737f81eaf459170b8f4fc8c926b48" [label=""];
  "sha256:f827e23ce1c86a78e9a12e513a8017e1960737f81eaf459170b8f4fc8c926b48" -> "sha256:4304437e0c8b8ae07c40e64dac61b8c45f367721357ba9b4557787ddce3422fd" [label=""];
  "sha256:4304437e0c8b8ae07c40e64dac61b8c45f367721357ba9b4557787ddce3422fd" -> "sha256:546d2241aaad2fd4fd1d9bd3250f92058c2c94a20bbb44452e1e466cebeb12fc" [label=""];
  "sha256:c83cb2cbb7e0b1fee617e15a285c38945a7088132c6fad3009b656608c4ea018" -> "sha256:546d2241aaad2fd4fd1d9bd3250f92058c2c94a20bbb44452e1e466cebeb12fc" [label=""];
  "sha256:546d2241aaad2fd4fd1d9bd3250f92058c2c94a20bbb44452e1e466cebeb12fc" -> "sha256:cd4cbd2f23b7ab4894dc97ea2e30efbb7979088c10c2041485282804459715d5" [label=""];
}

