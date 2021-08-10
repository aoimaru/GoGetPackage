[app/sources/252787649.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:4dc0094a723b76d3b35590ca0263272f858b0317d402760da84643cc6e14e18b" [label="local://context" shape="ellipse"];
  "sha256:28a2ddd7d24dfe66548ef821c5f5ae3df341df6b429277139353876da4f76a8b" [label="copy{src=/, dest=/var/www/html/}" shape="note"];
  "sha256:8c9704ebb2b97fe662e6b89be225a5d229aace585ec936f8b14b63bc98774858" [label="/bin/sh -c chmod 777 /var/www/html/cache" shape="box"];
  "sha256:f2de45e3c54ce2b3c4d63b8e188c92ae9b7cfc66c2cb5cae9e3a650a4fec40ea" [label="sha256:f2de45e3c54ce2b3c4d63b8e188c92ae9b7cfc66c2cb5cae9e3a650a4fec40ea" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:28a2ddd7d24dfe66548ef821c5f5ae3df341df6b429277139353876da4f76a8b" [label=""];
  "sha256:4dc0094a723b76d3b35590ca0263272f858b0317d402760da84643cc6e14e18b" -> "sha256:28a2ddd7d24dfe66548ef821c5f5ae3df341df6b429277139353876da4f76a8b" [label=""];
  "sha256:28a2ddd7d24dfe66548ef821c5f5ae3df341df6b429277139353876da4f76a8b" -> "sha256:8c9704ebb2b97fe662e6b89be225a5d229aace585ec936f8b14b63bc98774858" [label=""];
  "sha256:8c9704ebb2b97fe662e6b89be225a5d229aace585ec936f8b14b63bc98774858" -> "sha256:f2de45e3c54ce2b3c4d63b8e188c92ae9b7cfc66c2cb5cae9e3a650a4fec40ea" [label=""];
}

