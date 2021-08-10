[app/sources/299773362.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c51b29f77074514fb8cb5a081a1b5b602336a127132123c578c7b24473b63342" [label="/bin/sh -c apt-get update && apt-get install -y   vim   wget   git   curl   npm   nodejs-legacy" shape="box"];
  "sha256:adf602b95088eb629e65ef0d6523de7919dd86bece7ab78eed1183b4f5b8cf3d" [label="local://context" shape="ellipse"];
  "sha256:f0ed892c0e1c82b2c2b824ecde87ecf0921fbdf509096d9d02e945b33248debe" [label="copy{src=/, dest=/cryptpad}" shape="note"];
  "sha256:d3b1f08a96e30d02d94826a586d4b369d5b881746f5fae97fc8b607eadba93ee" [label="mkdir{path=/cryptpad}" shape="note"];
  "sha256:107a7c48bf40b1748b9db10428395db453812bff44843e44d548a9895a1d7351" [label="/bin/sh -c npm install    && npm install -g bower    && bower install --allow-root" shape="box"];
  "sha256:e5b4b70fd406315c3744e6c00755c27f252920046d4d5a980be5ba865e17116e" [label="copy{src=/container-start.sh, dest=/container-start.sh}" shape="note"];
  "sha256:1e77663700f9e9b9e6f55100dba2a916f44b5c326fc9b0817f88d95f7318b235" [label="/bin/sh -c chmod u+x /container-start.sh" shape="box"];
  "sha256:8b38dd36a61d7a1b2d2d0721b3a57f28543a70f9eed97f9ac9d072c77c6f47b4" [label="sha256:8b38dd36a61d7a1b2d2d0721b3a57f28543a70f9eed97f9ac9d072c77c6f47b4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c51b29f77074514fb8cb5a081a1b5b602336a127132123c578c7b24473b63342" [label=""];
  "sha256:c51b29f77074514fb8cb5a081a1b5b602336a127132123c578c7b24473b63342" -> "sha256:f0ed892c0e1c82b2c2b824ecde87ecf0921fbdf509096d9d02e945b33248debe" [label=""];
  "sha256:adf602b95088eb629e65ef0d6523de7919dd86bece7ab78eed1183b4f5b8cf3d" -> "sha256:f0ed892c0e1c82b2c2b824ecde87ecf0921fbdf509096d9d02e945b33248debe" [label=""];
  "sha256:f0ed892c0e1c82b2c2b824ecde87ecf0921fbdf509096d9d02e945b33248debe" -> "sha256:d3b1f08a96e30d02d94826a586d4b369d5b881746f5fae97fc8b607eadba93ee" [label=""];
  "sha256:d3b1f08a96e30d02d94826a586d4b369d5b881746f5fae97fc8b607eadba93ee" -> "sha256:107a7c48bf40b1748b9db10428395db453812bff44843e44d548a9895a1d7351" [label=""];
  "sha256:107a7c48bf40b1748b9db10428395db453812bff44843e44d548a9895a1d7351" -> "sha256:e5b4b70fd406315c3744e6c00755c27f252920046d4d5a980be5ba865e17116e" [label=""];
  "sha256:adf602b95088eb629e65ef0d6523de7919dd86bece7ab78eed1183b4f5b8cf3d" -> "sha256:e5b4b70fd406315c3744e6c00755c27f252920046d4d5a980be5ba865e17116e" [label=""];
  "sha256:e5b4b70fd406315c3744e6c00755c27f252920046d4d5a980be5ba865e17116e" -> "sha256:1e77663700f9e9b9e6f55100dba2a916f44b5c326fc9b0817f88d95f7318b235" [label=""];
  "sha256:1e77663700f9e9b9e6f55100dba2a916f44b5c326fc9b0817f88d95f7318b235" -> "sha256:8b38dd36a61d7a1b2d2d0721b3a57f28543a70f9eed97f9ac9d072c77c6f47b4" [label=""];
}

