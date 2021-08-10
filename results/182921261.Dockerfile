[app/sources/182921261.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e78f81146b1ca26db6d24fbebb049a1dc62337942799a960a2f351ff8f82f46b" [label="/bin/sh -c apt-get update && apt-get install -y firefox ca-certificates xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic xvfb --no-install-recommends && apt-get clean autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e66153460ddee6be101c1b463b974abb9cbd7d69aff154fc192ab976d4cb8a5b" [label="local://context" shape="ellipse"];
  "sha256:618ed24c3f591bf51a16a6743086efad5d915310d94262934d06823cb8f027d0" [label="copy{src=/scripts, dest=/home/root/scripts}" shape="note"];
  "sha256:4654b47e3dc3e17b4c5a7dbbd1eaeada65f5c2b25b3c9f4871c86886a77f8b86" [label="sha256:4654b47e3dc3e17b4c5a7dbbd1eaeada65f5c2b25b3c9f4871c86886a77f8b86" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e78f81146b1ca26db6d24fbebb049a1dc62337942799a960a2f351ff8f82f46b" [label=""];
  "sha256:e78f81146b1ca26db6d24fbebb049a1dc62337942799a960a2f351ff8f82f46b" -> "sha256:618ed24c3f591bf51a16a6743086efad5d915310d94262934d06823cb8f027d0" [label=""];
  "sha256:e66153460ddee6be101c1b463b974abb9cbd7d69aff154fc192ab976d4cb8a5b" -> "sha256:618ed24c3f591bf51a16a6743086efad5d915310d94262934d06823cb8f027d0" [label=""];
  "sha256:618ed24c3f591bf51a16a6743086efad5d915310d94262934d06823cb8f027d0" -> "sha256:4654b47e3dc3e17b4c5a7dbbd1eaeada65f5c2b25b3c9f4871c86886a77f8b86" [label=""];
}

