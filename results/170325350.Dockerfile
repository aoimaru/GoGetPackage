[app/sources/170325350.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:08c4af3f0469691ac8c7da72843eef2fe6f7b8289058a9134d14f59bc75359d8" [label="local://context" shape="ellipse"];
  "sha256:ce527d8a38e33b679dc73deaff752b68da53ed54787125283cdfc9585f211fa1" [label="copy{src=/, dest=/var/www/html/}" shape="note"];
  "sha256:6a53427dddd9dc10fc2994823628661b03e234b7c2ffde5038923d84c129a738" [label="/bin/sh -c mkdir /var/www/html/sutrarelations" shape="box"];
  "sha256:4396b78983db58b938871ac3da937fe77b895ab93bc4ea11dc82d2edc12b55b5" [label="/bin/sh -c mkdir /var/www/html/json" shape="box"];
  "sha256:7bd94e0cabb6b5d363bdbd6a0dfacd295cb033b95c704fcdd135a3fda8f32ea0" [label="/bin/sh -c mkdir /var/www/html/Data/allsutrani" shape="box"];
  "sha256:6bbd1e3d7ecfea0a378112f3bb8d4c8bbe7b1b76cdf70adfd66a17f526ae61c2" [label="/bin/sh -c tar -zxvf /var/www/html/Data/allsutrani.tar.gz -C /var/www/html/Data/allsutrani" shape="box"];
  "sha256:79b23990e2be2f75929313059f068054cbe05ae66298ddf1d537891b469007f9" [label="/bin/sh -c tar  zxvf /var/www/html/Data/dhaatupatha.tgz" shape="box"];
  "sha256:bfa181f58cc09392ddd6b78c8d71371a26642cf40e69090f68bdb66f9af328ec" [label="sha256:bfa181f58cc09392ddd6b78c8d71371a26642cf40e69090f68bdb66f9af328ec" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:ce527d8a38e33b679dc73deaff752b68da53ed54787125283cdfc9585f211fa1" [label=""];
  "sha256:08c4af3f0469691ac8c7da72843eef2fe6f7b8289058a9134d14f59bc75359d8" -> "sha256:ce527d8a38e33b679dc73deaff752b68da53ed54787125283cdfc9585f211fa1" [label=""];
  "sha256:ce527d8a38e33b679dc73deaff752b68da53ed54787125283cdfc9585f211fa1" -> "sha256:6a53427dddd9dc10fc2994823628661b03e234b7c2ffde5038923d84c129a738" [label=""];
  "sha256:6a53427dddd9dc10fc2994823628661b03e234b7c2ffde5038923d84c129a738" -> "sha256:4396b78983db58b938871ac3da937fe77b895ab93bc4ea11dc82d2edc12b55b5" [label=""];
  "sha256:4396b78983db58b938871ac3da937fe77b895ab93bc4ea11dc82d2edc12b55b5" -> "sha256:7bd94e0cabb6b5d363bdbd6a0dfacd295cb033b95c704fcdd135a3fda8f32ea0" [label=""];
  "sha256:7bd94e0cabb6b5d363bdbd6a0dfacd295cb033b95c704fcdd135a3fda8f32ea0" -> "sha256:6bbd1e3d7ecfea0a378112f3bb8d4c8bbe7b1b76cdf70adfd66a17f526ae61c2" [label=""];
  "sha256:6bbd1e3d7ecfea0a378112f3bb8d4c8bbe7b1b76cdf70adfd66a17f526ae61c2" -> "sha256:79b23990e2be2f75929313059f068054cbe05ae66298ddf1d537891b469007f9" [label=""];
  "sha256:79b23990e2be2f75929313059f068054cbe05ae66298ddf1d537891b469007f9" -> "sha256:bfa181f58cc09392ddd6b78c8d71371a26642cf40e69090f68bdb66f9af328ec" [label=""];
}

