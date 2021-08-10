[app/sources/298736578.Dockerfile]
digraph {
  "sha256:e81c679d1c50aab8a4cfcdf2f6cb7b13946964146f9e00f8475efced6f8df7d3" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:fa54fa3b5472e10b564f698a8e313577143a43e6fa84e24cc8a5ca9af066ec65" [label="/bin/sh -c apt-get update -q   && apt-get install -yqq  curl  git  ssh  gcc  make  build-essential  libkrb5-dev  sudo  apt-utils  && apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e6a75ce040e2e36db5d0d7f78ff65e67a6eefc943a856e59af90ffbde29ff9af" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -" shape="box"];
  "sha256:01592b22f7c267b79290ef10af7af13ced19fa53a3d923c770345c87418fdf3e" [label="/bin/sh -c sudo apt-get install -yq nodejs  && apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:75544d0f0d2a03948af0ea28e95e4d30e5b9b677b3803f411e224d1a04623ec2" [label="/bin/sh -c npm install --quiet -g gulp bower yo mocha karma-cli pm2 && npm cache clean" shape="box"];
  "sha256:f527039f9c1a743b04d5d68c14b61f3bccb60dbc21c2fc286dc4ce9e253b3d17" [label="/bin/sh -c mkdir -p /opt/mean.js/public/lib" shape="box"];
  "sha256:6f2fe890e6a8992fb2963a20817666846ee814902edb5d1c303c7fb778f4cc75" [label="mkdir{path=/opt/mean.js}" shape="note"];
  "sha256:efce2976a0ac808dd9445aaa16dbdcb1d538c318a28fc073680367497da94676" [label="copy{src=/package.json, dest=/opt/mean.js/package.json}" shape="note"];
  "sha256:9383aa340abc5b0aedd5eb4c4e25e4e383218e635ba9d600e36f68b36fdd58ed" [label="/bin/sh -c NODE_ENV=development npm install --quiet && npm cache clean" shape="box"];
  "sha256:bd5dcdb8d6191f187c7f4d04ad8e5013164ff0681e98dc558d1c091c68f144d7" [label="copy{src=/bower.json, dest=/opt/mean.js/bower.json}" shape="note"];
  "sha256:b15d91e9d9685d252a62ecb4c9f297fcd72417fbdffa5c66a2b7b9b837d185a6" [label="copy{src=/.bowerrc, dest=/opt/mean.js/.bowerrc}" shape="note"];
  "sha256:13ca82d8229ac4123983c458dec86ee96eb554fbb7d1efe595af43bad7428575" [label="/bin/sh -c bower install --quiet --allow-root --config.interactive=false" shape="box"];
  "sha256:68920934d0cc7fd29a117ef25bf0441514b72720fa63739bf6a2e6aa8bb90fdf" [label="copy{src=/, dest=/opt/mean.js}" shape="note"];
  "sha256:5d801c31427651441d9cfd5890215ac4ade72fd4913dfb67b4a74b451f047ad4" [label="sha256:5d801c31427651441d9cfd5890215ac4ade72fd4913dfb67b4a74b451f047ad4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:fa54fa3b5472e10b564f698a8e313577143a43e6fa84e24cc8a5ca9af066ec65" [label=""];
  "sha256:fa54fa3b5472e10b564f698a8e313577143a43e6fa84e24cc8a5ca9af066ec65" -> "sha256:e6a75ce040e2e36db5d0d7f78ff65e67a6eefc943a856e59af90ffbde29ff9af" [label=""];
  "sha256:e6a75ce040e2e36db5d0d7f78ff65e67a6eefc943a856e59af90ffbde29ff9af" -> "sha256:01592b22f7c267b79290ef10af7af13ced19fa53a3d923c770345c87418fdf3e" [label=""];
  "sha256:01592b22f7c267b79290ef10af7af13ced19fa53a3d923c770345c87418fdf3e" -> "sha256:75544d0f0d2a03948af0ea28e95e4d30e5b9b677b3803f411e224d1a04623ec2" [label=""];
  "sha256:75544d0f0d2a03948af0ea28e95e4d30e5b9b677b3803f411e224d1a04623ec2" -> "sha256:f527039f9c1a743b04d5d68c14b61f3bccb60dbc21c2fc286dc4ce9e253b3d17" [label=""];
  "sha256:f527039f9c1a743b04d5d68c14b61f3bccb60dbc21c2fc286dc4ce9e253b3d17" -> "sha256:6f2fe890e6a8992fb2963a20817666846ee814902edb5d1c303c7fb778f4cc75" [label=""];
  "sha256:6f2fe890e6a8992fb2963a20817666846ee814902edb5d1c303c7fb778f4cc75" -> "sha256:efce2976a0ac808dd9445aaa16dbdcb1d538c318a28fc073680367497da94676" [label=""];
  "sha256:e81c679d1c50aab8a4cfcdf2f6cb7b13946964146f9e00f8475efced6f8df7d3" -> "sha256:efce2976a0ac808dd9445aaa16dbdcb1d538c318a28fc073680367497da94676" [label=""];
  "sha256:efce2976a0ac808dd9445aaa16dbdcb1d538c318a28fc073680367497da94676" -> "sha256:9383aa340abc5b0aedd5eb4c4e25e4e383218e635ba9d600e36f68b36fdd58ed" [label=""];
  "sha256:9383aa340abc5b0aedd5eb4c4e25e4e383218e635ba9d600e36f68b36fdd58ed" -> "sha256:bd5dcdb8d6191f187c7f4d04ad8e5013164ff0681e98dc558d1c091c68f144d7" [label=""];
  "sha256:e81c679d1c50aab8a4cfcdf2f6cb7b13946964146f9e00f8475efced6f8df7d3" -> "sha256:bd5dcdb8d6191f187c7f4d04ad8e5013164ff0681e98dc558d1c091c68f144d7" [label=""];
  "sha256:bd5dcdb8d6191f187c7f4d04ad8e5013164ff0681e98dc558d1c091c68f144d7" -> "sha256:b15d91e9d9685d252a62ecb4c9f297fcd72417fbdffa5c66a2b7b9b837d185a6" [label=""];
  "sha256:e81c679d1c50aab8a4cfcdf2f6cb7b13946964146f9e00f8475efced6f8df7d3" -> "sha256:b15d91e9d9685d252a62ecb4c9f297fcd72417fbdffa5c66a2b7b9b837d185a6" [label=""];
  "sha256:b15d91e9d9685d252a62ecb4c9f297fcd72417fbdffa5c66a2b7b9b837d185a6" -> "sha256:13ca82d8229ac4123983c458dec86ee96eb554fbb7d1efe595af43bad7428575" [label=""];
  "sha256:13ca82d8229ac4123983c458dec86ee96eb554fbb7d1efe595af43bad7428575" -> "sha256:68920934d0cc7fd29a117ef25bf0441514b72720fa63739bf6a2e6aa8bb90fdf" [label=""];
  "sha256:e81c679d1c50aab8a4cfcdf2f6cb7b13946964146f9e00f8475efced6f8df7d3" -> "sha256:68920934d0cc7fd29a117ef25bf0441514b72720fa63739bf6a2e6aa8bb90fdf" [label=""];
  "sha256:68920934d0cc7fd29a117ef25bf0441514b72720fa63739bf6a2e6aa8bb90fdf" -> "sha256:5d801c31427651441d9cfd5890215ac4ade72fd4913dfb67b4a74b451f047ad4" [label=""];
}

