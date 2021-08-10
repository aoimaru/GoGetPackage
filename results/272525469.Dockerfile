[app/sources/272525469.Dockerfile]
digraph {
  "sha256:6e25d0a4a2df723887528ed668c307d21049cc1a75effc32c3e202ea5858f4a7" [label="docker-image://docker.io/library/kibana:4.6@sha256:ec3a858b11a4cf29972c3439b019ae92aad56b16538a79bba776ce3e87ac0434" shape="ellipse"];
  "sha256:078189df13c1d199f8e6a577013c3359e32bb9148b1d1dbb6ae01f5405483056" [label="/bin/sh -c gosu kibana kibana plugin --install elastic/sense/latest" shape="box"];
  "sha256:ee34e227bdc8e18fef4770e766f2a25eeac4a55739461a34e64441edb5c7cb70" [label="sha256:ee34e227bdc8e18fef4770e766f2a25eeac4a55739461a34e64441edb5c7cb70" shape="plaintext"];
  "sha256:6e25d0a4a2df723887528ed668c307d21049cc1a75effc32c3e202ea5858f4a7" -> "sha256:078189df13c1d199f8e6a577013c3359e32bb9148b1d1dbb6ae01f5405483056" [label=""];
  "sha256:078189df13c1d199f8e6a577013c3359e32bb9148b1d1dbb6ae01f5405483056" -> "sha256:ee34e227bdc8e18fef4770e766f2a25eeac4a55739461a34e64441edb5c7cb70" [label=""];
}

