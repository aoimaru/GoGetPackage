[app/sources/355557715.Dockerfile]
digraph {
  "sha256:32910275c21a930ba99087ac0dcc28820c053f9fba0652a895c838ec6bad3470" [label="docker-image://docker.io/outcoldman/splunk:latest-light@sha256:380cd82730bb8a48b860fa4f1d1fd4731a276824450410cbf583f08d94848b3f" shape="ellipse"];
  "sha256:d54b8cb7c7409e2d0f8dea1ff627ff480f291ad93fc7f54d7bf7745a1512e9ba" [label="local://context" shape="ellipse"];
  "sha256:d64d56477411a4a5223ca1665628264ac6a1f29dda7c641bc33af236963bbcaa" [label="copy{src=/docker.xml, dest=/var/opt/splunk/etc/apps/search/local/data/ui/views/}" shape="note"];
  "sha256:f4062799316b6dfffc0d64fc8498e9ba5c902b647feba10b986735a22b44fe8b" [label="copy{src=/docker_container.xml, dest=/var/opt/splunk/etc/apps/search/local/data/ui/views/}" shape="note"];
  "sha256:32f1e86772c75db9c82e2e08c05100cc9e873116d245aea00f3179872f3ffb6c" [label="copy{src=/inputs.conf, dest=/var/opt/splunk/etc/apps/search/local/}" shape="note"];
  "sha256:15a162aa90b62f9324091fa5d1bdc2abb1e36c69a0a172e82d982305a2c4890d" [label="sha256:15a162aa90b62f9324091fa5d1bdc2abb1e36c69a0a172e82d982305a2c4890d" shape="plaintext"];
  "sha256:32910275c21a930ba99087ac0dcc28820c053f9fba0652a895c838ec6bad3470" -> "sha256:d64d56477411a4a5223ca1665628264ac6a1f29dda7c641bc33af236963bbcaa" [label=""];
  "sha256:d54b8cb7c7409e2d0f8dea1ff627ff480f291ad93fc7f54d7bf7745a1512e9ba" -> "sha256:d64d56477411a4a5223ca1665628264ac6a1f29dda7c641bc33af236963bbcaa" [label=""];
  "sha256:d64d56477411a4a5223ca1665628264ac6a1f29dda7c641bc33af236963bbcaa" -> "sha256:f4062799316b6dfffc0d64fc8498e9ba5c902b647feba10b986735a22b44fe8b" [label=""];
  "sha256:d54b8cb7c7409e2d0f8dea1ff627ff480f291ad93fc7f54d7bf7745a1512e9ba" -> "sha256:f4062799316b6dfffc0d64fc8498e9ba5c902b647feba10b986735a22b44fe8b" [label=""];
  "sha256:f4062799316b6dfffc0d64fc8498e9ba5c902b647feba10b986735a22b44fe8b" -> "sha256:32f1e86772c75db9c82e2e08c05100cc9e873116d245aea00f3179872f3ffb6c" [label=""];
  "sha256:d54b8cb7c7409e2d0f8dea1ff627ff480f291ad93fc7f54d7bf7745a1512e9ba" -> "sha256:32f1e86772c75db9c82e2e08c05100cc9e873116d245aea00f3179872f3ffb6c" [label=""];
  "sha256:32f1e86772c75db9c82e2e08c05100cc9e873116d245aea00f3179872f3ffb6c" -> "sha256:15a162aa90b62f9324091fa5d1bdc2abb1e36c69a0a172e82d982305a2c4890d" [label=""];
}

