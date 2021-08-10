[app/sources/333631114.Dockerfile]
digraph {
  "sha256:2390f12187c2d7e92b49225551efc077ba0e479d4bef78ec41ee646ed98f5839" [label="local://context" shape="ellipse"];
  "sha256:eed1eb29bc4e13eb29a89036a51daa2892313af69b1e49f8dc96126c9a3d975e" [label="docker-image://docker.io/library/python:3.6.8" shape="ellipse"];
  "sha256:a240bc7aea224da685833d37ef5fc14103c778b6f2da3845e75b3771a8084de1" [label="/bin/sh -c apt-get update && apt-get install -y     g++     gcc     libxslt-dev     libssl-dev     libffi-dev     bash     ncurses-dev     curl     libncurses5-dev     libncursesw5-dev     && curl -sL https://deb.nodesource.com/setup_10.x | bash -     && apt-get install -y nodejs     && npm install -g npm typescript" shape="box"];
  "sha256:f7d6adce3c525ccef229dbf4dbfadbe415a9c4081abb5dff6e8bba4dc3b4005c" [label="/bin/sh -c mkdir -p /opt/beagle/beagle/web/static" shape="box"];
  "sha256:e0af9ad858ee870b5cfc52e9d5035edd60a2a8780c110fe866f7d5fc2c462e04" [label="mkdir{path=/opt/beagle}" shape="note"];
  "sha256:e1e868af25c466ceedc7df9b238b32d98cb8cc830b41c2ee89d0ded25badad87" [label="copy{src=/beagle/web/static/package.json, dest=/opt/beagle/beagle/web/static/},copy{src=/beagle/web/static/package-lock.json, dest=/opt/beagle/beagle/web/static/}" shape="note"];
  "sha256:fcabd9dca8579449ec5ff22d365e3d0d3eecefdf45512deb00c482ccac623754" [label="mkdir{path=/opt/beagle/beagle/web/static}" shape="note"];
  "sha256:5545bf26242e745ff421b5c5c440e2e1deb7d1c9b9b7dfff251acabfc30c8237" [label="/bin/sh -c npm install  && npm audit fix" shape="box"];
  "sha256:485ba8fd621dc7660f35328e67cc3980bf2c3259308f9f95fe374c5b4e91814c" [label="copy{src=/, dest=/opt/beagle}" shape="note"];
  "sha256:b8f5cc8cdc31c23b57c7d4febab16257380189f2e9a90bd07334e30645aecdce" [label="mkdir{path=/opt/beagle/beagle/web/static}" shape="note"];
  "sha256:b537c709391024ce475ebb94d47dcf0ef26d71cf2b4b850a6c6025e36a1c7221" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:7e1abd9a544ebfc5347074ce3927e76302b801ff726594152715195fcc94592c" [label="mkdir{path=/opt/beagle}" shape="note"];
  "sha256:0c9d7a8474def91d9f1fd1ba8709045531ffdd517010ccd275518730071f9445" [label="/bin/sh -c pip install \".[rekall]\"" shape="box"];
  "sha256:54bb1c8b8a685073b549e606e5561635420367aea98ca8989db897f39abdcea7" [label="/bin/sh -c mkdir -p /data/beagle" shape="box"];
  "sha256:ab70795c0378719379a8634d803e724507b9e1ab30d6595e3a6f34a1fde326c0" [label="sha256:ab70795c0378719379a8634d803e724507b9e1ab30d6595e3a6f34a1fde326c0" shape="plaintext"];
  "sha256:eed1eb29bc4e13eb29a89036a51daa2892313af69b1e49f8dc96126c9a3d975e" -> "sha256:a240bc7aea224da685833d37ef5fc14103c778b6f2da3845e75b3771a8084de1" [label=""];
  "sha256:a240bc7aea224da685833d37ef5fc14103c778b6f2da3845e75b3771a8084de1" -> "sha256:f7d6adce3c525ccef229dbf4dbfadbe415a9c4081abb5dff6e8bba4dc3b4005c" [label=""];
  "sha256:f7d6adce3c525ccef229dbf4dbfadbe415a9c4081abb5dff6e8bba4dc3b4005c" -> "sha256:e0af9ad858ee870b5cfc52e9d5035edd60a2a8780c110fe866f7d5fc2c462e04" [label=""];
  "sha256:e0af9ad858ee870b5cfc52e9d5035edd60a2a8780c110fe866f7d5fc2c462e04" -> "sha256:e1e868af25c466ceedc7df9b238b32d98cb8cc830b41c2ee89d0ded25badad87" [label=""];
  "sha256:2390f12187c2d7e92b49225551efc077ba0e479d4bef78ec41ee646ed98f5839" -> "sha256:e1e868af25c466ceedc7df9b238b32d98cb8cc830b41c2ee89d0ded25badad87" [label=""];
  "sha256:e1e868af25c466ceedc7df9b238b32d98cb8cc830b41c2ee89d0ded25badad87" -> "sha256:fcabd9dca8579449ec5ff22d365e3d0d3eecefdf45512deb00c482ccac623754" [label=""];
  "sha256:fcabd9dca8579449ec5ff22d365e3d0d3eecefdf45512deb00c482ccac623754" -> "sha256:5545bf26242e745ff421b5c5c440e2e1deb7d1c9b9b7dfff251acabfc30c8237" [label=""];
  "sha256:5545bf26242e745ff421b5c5c440e2e1deb7d1c9b9b7dfff251acabfc30c8237" -> "sha256:485ba8fd621dc7660f35328e67cc3980bf2c3259308f9f95fe374c5b4e91814c" [label=""];
  "sha256:2390f12187c2d7e92b49225551efc077ba0e479d4bef78ec41ee646ed98f5839" -> "sha256:485ba8fd621dc7660f35328e67cc3980bf2c3259308f9f95fe374c5b4e91814c" [label=""];
  "sha256:485ba8fd621dc7660f35328e67cc3980bf2c3259308f9f95fe374c5b4e91814c" -> "sha256:b8f5cc8cdc31c23b57c7d4febab16257380189f2e9a90bd07334e30645aecdce" [label=""];
  "sha256:b8f5cc8cdc31c23b57c7d4febab16257380189f2e9a90bd07334e30645aecdce" -> "sha256:b537c709391024ce475ebb94d47dcf0ef26d71cf2b4b850a6c6025e36a1c7221" [label=""];
  "sha256:b537c709391024ce475ebb94d47dcf0ef26d71cf2b4b850a6c6025e36a1c7221" -> "sha256:7e1abd9a544ebfc5347074ce3927e76302b801ff726594152715195fcc94592c" [label=""];
  "sha256:7e1abd9a544ebfc5347074ce3927e76302b801ff726594152715195fcc94592c" -> "sha256:0c9d7a8474def91d9f1fd1ba8709045531ffdd517010ccd275518730071f9445" [label=""];
  "sha256:0c9d7a8474def91d9f1fd1ba8709045531ffdd517010ccd275518730071f9445" -> "sha256:54bb1c8b8a685073b549e606e5561635420367aea98ca8989db897f39abdcea7" [label=""];
  "sha256:54bb1c8b8a685073b549e606e5561635420367aea98ca8989db897f39abdcea7" -> "sha256:ab70795c0378719379a8634d803e724507b9e1ab30d6595e3a6f34a1fde326c0" [label=""];
}

