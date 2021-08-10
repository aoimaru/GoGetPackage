[app/sources/162824149.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:22e0b900cc6888c0b30a0e15941fad9177ed34a0a342f4b53ac655f97cf8339d" [label="/bin/sh -c apt-get -y update   && apt-get install -y                     scons cmake automake autoconf ghostscript                     clang valgrind                     git wget xz-utils dnsutils   && apt-get clean -qq   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:048ab2330d66ed2c3c5042526e03a4faa198f0a87b25dc660ab6c31ee96551f7" [label="sha256:048ab2330d66ed2c3c5042526e03a4faa198f0a87b25dc660ab6c31ee96551f7" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:22e0b900cc6888c0b30a0e15941fad9177ed34a0a342f4b53ac655f97cf8339d" [label=""];
  "sha256:22e0b900cc6888c0b30a0e15941fad9177ed34a0a342f4b53ac655f97cf8339d" -> "sha256:048ab2330d66ed2c3c5042526e03a4faa198f0a87b25dc660ab6c31ee96551f7" [label=""];
}

