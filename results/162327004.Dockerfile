[app/sources/162327004.Dockerfile]
digraph {
  "sha256:a0eb2464015f9503e0248a96c2d0bc07f267286f62d25b8f223f74b0267370d2" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:92b69a154dcb1078460038b5d3fad47bc7137c2dc7e5b232a08175eca0455c61" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:eca5a089ee1ca3e687c1fc36c813d773f1b50c2fba71963bb1ccfa91f8513dcf" [label="copy{src=/testMain, dest=/app/}" shape="note"];
  "sha256:f664215eddfa52d649d1decbaafa544675d71829fa55aaa04052740bba4acf76" [label="mkdir{path=/app}" shape="note"];
  "sha256:517e7d4468c455f0d88aa26faf8ada77d3db2a1b0b231f5a833ab5ca023c4673" [label="sha256:517e7d4468c455f0d88aa26faf8ada77d3db2a1b0b231f5a833ab5ca023c4673" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:92b69a154dcb1078460038b5d3fad47bc7137c2dc7e5b232a08175eca0455c61" [label=""];
  "sha256:92b69a154dcb1078460038b5d3fad47bc7137c2dc7e5b232a08175eca0455c61" -> "sha256:eca5a089ee1ca3e687c1fc36c813d773f1b50c2fba71963bb1ccfa91f8513dcf" [label=""];
  "sha256:a0eb2464015f9503e0248a96c2d0bc07f267286f62d25b8f223f74b0267370d2" -> "sha256:eca5a089ee1ca3e687c1fc36c813d773f1b50c2fba71963bb1ccfa91f8513dcf" [label=""];
  "sha256:eca5a089ee1ca3e687c1fc36c813d773f1b50c2fba71963bb1ccfa91f8513dcf" -> "sha256:f664215eddfa52d649d1decbaafa544675d71829fa55aaa04052740bba4acf76" [label=""];
  "sha256:f664215eddfa52d649d1decbaafa544675d71829fa55aaa04052740bba4acf76" -> "sha256:517e7d4468c455f0d88aa26faf8ada77d3db2a1b0b231f5a833ab5ca023c4673" [label=""];
}

