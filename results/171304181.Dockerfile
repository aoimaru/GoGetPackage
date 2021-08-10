[app/sources/171304181.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e3f39fb75d8d87f36111d20da3bbfbdbff500be37ce31f265741d85b03e1a77b" [label="/bin/sh -c echo \"deb http://get.docker.io/ubuntu docker main \\ndeb http://ppa.launchpad.net/nginx/development/ubuntu trusty main \\n\">> /etc/apt/sources.list" shape="box"];
  "sha256:23dc4500052cbce4bf4ff109841ae6e4164bf711de65c34f52e5bf8b34489693" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9 C300EE8C" shape="box"];
  "sha256:dace161a6e8b8855cbf452c747b587d8ffb27eb62bb6fcab41ecc1f25d7c28de" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends nginx python-pip python-dev lxc-docker build-essential     && apt-get autoclean     && apt-get autoremove" shape="box"];
  "sha256:f2614e43deff11d8fb0db4be16fd3a1990f2892edc58967031267f32fa10ff9c" [label="local://context" shape="ellipse"];
  "sha256:f2bde0515cdeb82891290e194ed5af13814d2a651d9098c1638bb1a538c4dffa" [label="copy{src=/startup.sh, dest=/app/}" shape="note"];
  "sha256:ac47fb14449497b49c03ba2583a488613de8a46a517f80885431ffef78af2a0a" [label="copy{src=/web, dest=/app/web}" shape="note"];
  "sha256:fc48e62bcad3cf43b6255ca5d33b4b6b9c226265b2650939e82b41c2e5fef37a" [label="mkdir{path=/app}" shape="note"];
  "sha256:615ac8e288a7a4edfe89c027f3428bacda9575833499b97f396bba35d2b3f005" [label="/bin/sh -c pip install -r /app/web/requirements.txt" shape="box"];
  "sha256:63531e12976070f6e46f835d63be37091ac660eaa71782cc9ac7f7768affd42e" [label="sha256:63531e12976070f6e46f835d63be37091ac660eaa71782cc9ac7f7768affd42e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e3f39fb75d8d87f36111d20da3bbfbdbff500be37ce31f265741d85b03e1a77b" [label=""];
  "sha256:e3f39fb75d8d87f36111d20da3bbfbdbff500be37ce31f265741d85b03e1a77b" -> "sha256:23dc4500052cbce4bf4ff109841ae6e4164bf711de65c34f52e5bf8b34489693" [label=""];
  "sha256:23dc4500052cbce4bf4ff109841ae6e4164bf711de65c34f52e5bf8b34489693" -> "sha256:dace161a6e8b8855cbf452c747b587d8ffb27eb62bb6fcab41ecc1f25d7c28de" [label=""];
  "sha256:dace161a6e8b8855cbf452c747b587d8ffb27eb62bb6fcab41ecc1f25d7c28de" -> "sha256:f2bde0515cdeb82891290e194ed5af13814d2a651d9098c1638bb1a538c4dffa" [label=""];
  "sha256:f2614e43deff11d8fb0db4be16fd3a1990f2892edc58967031267f32fa10ff9c" -> "sha256:f2bde0515cdeb82891290e194ed5af13814d2a651d9098c1638bb1a538c4dffa" [label=""];
  "sha256:f2bde0515cdeb82891290e194ed5af13814d2a651d9098c1638bb1a538c4dffa" -> "sha256:ac47fb14449497b49c03ba2583a488613de8a46a517f80885431ffef78af2a0a" [label=""];
  "sha256:f2614e43deff11d8fb0db4be16fd3a1990f2892edc58967031267f32fa10ff9c" -> "sha256:ac47fb14449497b49c03ba2583a488613de8a46a517f80885431ffef78af2a0a" [label=""];
  "sha256:ac47fb14449497b49c03ba2583a488613de8a46a517f80885431ffef78af2a0a" -> "sha256:fc48e62bcad3cf43b6255ca5d33b4b6b9c226265b2650939e82b41c2e5fef37a" [label=""];
  "sha256:fc48e62bcad3cf43b6255ca5d33b4b6b9c226265b2650939e82b41c2e5fef37a" -> "sha256:615ac8e288a7a4edfe89c027f3428bacda9575833499b97f396bba35d2b3f005" [label=""];
  "sha256:615ac8e288a7a4edfe89c027f3428bacda9575833499b97f396bba35d2b3f005" -> "sha256:63531e12976070f6e46f835d63be37091ac660eaa71782cc9ac7f7768affd42e" [label=""];
}

