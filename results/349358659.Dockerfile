[app/sources/349358659.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d7dfa91f16443d885cd87a5fee700381d58b788d94b8ce21de110ff85ca50e54" [label="/bin/sh -c apt-get update && apt-get install -y vim                                          curl                                          wget                                          unzip                                          netcat" shape="box"];
  "sha256:cff132d1f0ec97b113747931344d22cd01e2ab7b113f5e24ca09fc1e0592dee6" [label="/bin/sh -c mkdir -p /opt/cloudunit/backup &&      mkdir -p /opt/cloudunit/hooks/ &&     mkdir -p /opt/cloudunit/java &&     mkdir -p /opt/cloudunit/shared &&     mkdir -p /opt/cloudunit/scripts &&     mkdir -p /opt/cloudunit/tmp" shape="box"];
  "sha256:64d2318ed83e342246e4ef6c82d95aa34392d3b6396ee6d308df70bcbf76d348" [label="mkdir{path=/opt/cloudunit}" shape="note"];
  "sha256:db34c1c1b7f9b271136f6f31497e39ab913bcc658f6df54b40f418e5d21bf6c8" [label="local://context" shape="ellipse"];
  "sha256:d9c93a6b8b8515b9547b424b5a03e645ac9a4e87e7baf66b629755325762226a" [label="copy{src=/hooks, dest=/opt/cloudunit/hooks}" shape="note"];
  "sha256:b3707b15ee07c5406f5ca3d95b8cc7ddb139453857e1b72da2a925499068f441" [label="/bin/sh -c chmod a+x /opt/cloudunit/hooks/*" shape="box"];
  "sha256:f5181299d5fad92838a4ab8a5a905a94146837f694b11de676ca0a47e34fd4c0" [label="sha256:f5181299d5fad92838a4ab8a5a905a94146837f694b11de676ca0a47e34fd4c0" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d7dfa91f16443d885cd87a5fee700381d58b788d94b8ce21de110ff85ca50e54" [label=""];
  "sha256:d7dfa91f16443d885cd87a5fee700381d58b788d94b8ce21de110ff85ca50e54" -> "sha256:cff132d1f0ec97b113747931344d22cd01e2ab7b113f5e24ca09fc1e0592dee6" [label=""];
  "sha256:cff132d1f0ec97b113747931344d22cd01e2ab7b113f5e24ca09fc1e0592dee6" -> "sha256:64d2318ed83e342246e4ef6c82d95aa34392d3b6396ee6d308df70bcbf76d348" [label=""];
  "sha256:64d2318ed83e342246e4ef6c82d95aa34392d3b6396ee6d308df70bcbf76d348" -> "sha256:d9c93a6b8b8515b9547b424b5a03e645ac9a4e87e7baf66b629755325762226a" [label=""];
  "sha256:db34c1c1b7f9b271136f6f31497e39ab913bcc658f6df54b40f418e5d21bf6c8" -> "sha256:d9c93a6b8b8515b9547b424b5a03e645ac9a4e87e7baf66b629755325762226a" [label=""];
  "sha256:d9c93a6b8b8515b9547b424b5a03e645ac9a4e87e7baf66b629755325762226a" -> "sha256:b3707b15ee07c5406f5ca3d95b8cc7ddb139453857e1b72da2a925499068f441" [label=""];
  "sha256:b3707b15ee07c5406f5ca3d95b8cc7ddb139453857e1b72da2a925499068f441" -> "sha256:f5181299d5fad92838a4ab8a5a905a94146837f694b11de676ca0a47e34fd4c0" [label=""];
}

