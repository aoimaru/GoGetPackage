[app/sources/252780619.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:8abfdf3cf47173c80e372b7b77029174bdf0f4c58d07007bbb223cc71c7757b8" [label="/bin/sh -c apt-get install -y git cmake debhelper libgee-0.8-dev libgtk-3-dev libgranite-dev libsqlite3-dev libxml2 libxml2-dev libnotify-dev valac net-tools nmap traceroute vnstat nethogs curl wireless-tools iproute2 gobject-introspection libgirepository1.0-dev && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:93bb03ba4a8c33eba389524acc02f789b92996e348b19c8179beaf404b5db7a5" [label="/bin/sh -c dpkg -l libgee-0.8-dev; dpkg -l libgranite-dev; dpkg -l libgtk-3-dev; dpkg -l libsqlite3-dev; dpkg -l libxml2-dev; dpkg -l libnotify-dev;" shape="box"];
  "sha256:a4ba3f6a99b8db4a2495209e6a6caf558ebf1c6ae8447048413136fc6ed39ddf" [label="/bin/sh -c mkdir /home/git; cd /home/git; git clone https://github.com/elementary/granite.git -b master; cd granite; mkdir build; cd build; cmake -DCMAKE_INSTALL_PREFIX=/usr ../; make; make install" shape="box"];
  "sha256:7712f5d2af7e84c3ca883d45f8674e73f620ac7a08d7b7671cf80e099c6c6b0f" [label="/bin/sh -c mkdir /home/git; cd /home/git; git clone https://github.com/babluboy/nutty.git -b master; cd nutty; mkdir build; cd build; cmake -DCMAKE_INSTALL_PREFIX=/usr ../; make; make install" shape="box"];
  "sha256:f0291f8e2cacaeb256bb609687774547b1db44f347b8cf08cf5bbeb2834a824d" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:bead5910ea270a9211f794d429dae4c2a82139d2d204f2cab5ad24a8625b4bde" [label="sha256:bead5910ea270a9211f794d429dae4c2a82139d2d204f2cab5ad24a8625b4bde" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:8abfdf3cf47173c80e372b7b77029174bdf0f4c58d07007bbb223cc71c7757b8" [label=""];
  "sha256:8abfdf3cf47173c80e372b7b77029174bdf0f4c58d07007bbb223cc71c7757b8" -> "sha256:93bb03ba4a8c33eba389524acc02f789b92996e348b19c8179beaf404b5db7a5" [label=""];
  "sha256:93bb03ba4a8c33eba389524acc02f789b92996e348b19c8179beaf404b5db7a5" -> "sha256:a4ba3f6a99b8db4a2495209e6a6caf558ebf1c6ae8447048413136fc6ed39ddf" [label=""];
  "sha256:a4ba3f6a99b8db4a2495209e6a6caf558ebf1c6ae8447048413136fc6ed39ddf" -> "sha256:7712f5d2af7e84c3ca883d45f8674e73f620ac7a08d7b7671cf80e099c6c6b0f" [label=""];
  "sha256:7712f5d2af7e84c3ca883d45f8674e73f620ac7a08d7b7671cf80e099c6c6b0f" -> "sha256:f0291f8e2cacaeb256bb609687774547b1db44f347b8cf08cf5bbeb2834a824d" [label=""];
  "sha256:f0291f8e2cacaeb256bb609687774547b1db44f347b8cf08cf5bbeb2834a824d" -> "sha256:bead5910ea270a9211f794d429dae4c2a82139d2d204f2cab5ad24a8625b4bde" [label=""];
}

