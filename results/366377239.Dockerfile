[app/sources/366377239.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:6f56b622d1473a314a02e4a7eabad319a58978de20684e4a09b7765b04170ec2" [label="local://context" shape="ellipse"];
  "sha256:f9babd837466af786649e2bc2fefee0aa0154e2705c03e6a97e752804e6a94b4" [label="copy{src=/sales-1.0.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:f5a17113cd6d8c0d46b695605a3b4ce2fab5cbf87f4bff8095c3f22faf325c28" [label="copy{src=/selfsigned.cer, dest=/selfsigned.cer}" shape="note"];
  "sha256:4a97111b0a68f53c76921f908f1a9c5607c3a55105fe6a5624b65f6e1b01b6df" [label="/bin/sh -c bash -c 'keytool -import -file selfsigned.cer -alias selfsigned -noprompt -storepass changeit'" shape="box"];
  "sha256:36df82c5ca1751930a146cbadcb052b4dbfd864239435fa8041f598b23394f97" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:2dd6b3e5c64b67084bd9b0984f19d6ff6b68fab6563a32b51de42e08769e4d5a" [label="sha256:2dd6b3e5c64b67084bd9b0984f19d6ff6b68fab6563a32b51de42e08769e4d5a" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:f9babd837466af786649e2bc2fefee0aa0154e2705c03e6a97e752804e6a94b4" [label=""];
  "sha256:6f56b622d1473a314a02e4a7eabad319a58978de20684e4a09b7765b04170ec2" -> "sha256:f9babd837466af786649e2bc2fefee0aa0154e2705c03e6a97e752804e6a94b4" [label=""];
  "sha256:f9babd837466af786649e2bc2fefee0aa0154e2705c03e6a97e752804e6a94b4" -> "sha256:f5a17113cd6d8c0d46b695605a3b4ce2fab5cbf87f4bff8095c3f22faf325c28" [label=""];
  "sha256:6f56b622d1473a314a02e4a7eabad319a58978de20684e4a09b7765b04170ec2" -> "sha256:f5a17113cd6d8c0d46b695605a3b4ce2fab5cbf87f4bff8095c3f22faf325c28" [label=""];
  "sha256:f5a17113cd6d8c0d46b695605a3b4ce2fab5cbf87f4bff8095c3f22faf325c28" -> "sha256:4a97111b0a68f53c76921f908f1a9c5607c3a55105fe6a5624b65f6e1b01b6df" [label=""];
  "sha256:4a97111b0a68f53c76921f908f1a9c5607c3a55105fe6a5624b65f6e1b01b6df" -> "sha256:36df82c5ca1751930a146cbadcb052b4dbfd864239435fa8041f598b23394f97" [label=""];
  "sha256:36df82c5ca1751930a146cbadcb052b4dbfd864239435fa8041f598b23394f97" -> "sha256:2dd6b3e5c64b67084bd9b0984f19d6ff6b68fab6563a32b51de42e08769e4d5a" [label=""];
}

