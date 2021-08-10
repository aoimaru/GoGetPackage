[app/sources/296490956.Dockerfile]
digraph {
  "sha256:abd08c3bfa9fa20a8bec5e9d21361cd75947fac9a69df1246dde138c7d661ad9" [label="local://context" shape="ellipse"];
  "sha256:1e7f3854745d7706b0f934ae395c94889b235f5c44b87664c47bb1dba75d6aeb" [label="docker-image://quay.io/continuouspipe/symfony-php7.1-nginx:stable@sha256:a36d1d70db785a05069526cb471f03d2a651aefb953774b9683cc7e22456c52a" shape="ellipse"];
  "sha256:b57a36cfdf212198fd905fafb2d8c00e8e5a34acf23bebb1a1b88730684079cd" [label="/bin/sh -c apt-get update -qq  && DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install     nodejs     npm  && apt-get auto-remove -qq -y  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && ln -s /usr/bin/nodejs /usr/bin/node" shape="box"];
  "sha256:71d3baa195b81ab3b938853da1be4ad2c40acae51588038752df6b98c2201d24" [label="/bin/sh -c echo \"date.timezone = UTC\" >> /etc/php/7.0/cli/conf.d/docker.ini" shape="box"];
  "sha256:7798655bbed5e2dda65000ca7a56c0aef12f3f707fddb843e88e7bab9bc3d432" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:9908a1a8f495fb23bb1eaf13ab0c58d36261c6b9c92f3d3c41a7c04d49ed4fff" [label="mkdir{path=/app}" shape="note"];
  "sha256:975c345e27040ce4ec744d5f47fe83c6bccc98d0c7ad1e39fe0e50ece97aca32" [label="/bin/sh -c rm -rf var/cache/* var/logs/*" shape="box"];
  "sha256:3ba0671b52653899db7c170236610fd6e2dc5c335b0cdd419beed84f187480ff" [label="/bin/sh -c container build" shape="box"];
  "sha256:0355a4ecaa84ab7521200c01098a8438eb54968eaff77cba38382b88252c81dc" [label="/bin/sh -c npm install" shape="box"];
  "sha256:751ade14c0bc438ec301128a08191c4cfc002c8493182dc91387f19c83caf610" [label="/bin/sh -c composer --no-interaction dump-autoload" shape="box"];
  "sha256:42462e3076089fea1e325e353df8dfca7fc1f983be13ee044d6ec003ce3466b8" [label="/bin/sh -c rm -rf var/cache/* var/logs/*" shape="box"];
  "sha256:6243310e38c007488ac352574906d3de31c3b3517436000f8ef2286ca30234e7" [label="sha256:6243310e38c007488ac352574906d3de31c3b3517436000f8ef2286ca30234e7" shape="plaintext"];
  "sha256:1e7f3854745d7706b0f934ae395c94889b235f5c44b87664c47bb1dba75d6aeb" -> "sha256:b57a36cfdf212198fd905fafb2d8c00e8e5a34acf23bebb1a1b88730684079cd" [label=""];
  "sha256:b57a36cfdf212198fd905fafb2d8c00e8e5a34acf23bebb1a1b88730684079cd" -> "sha256:71d3baa195b81ab3b938853da1be4ad2c40acae51588038752df6b98c2201d24" [label=""];
  "sha256:71d3baa195b81ab3b938853da1be4ad2c40acae51588038752df6b98c2201d24" -> "sha256:7798655bbed5e2dda65000ca7a56c0aef12f3f707fddb843e88e7bab9bc3d432" [label=""];
  "sha256:abd08c3bfa9fa20a8bec5e9d21361cd75947fac9a69df1246dde138c7d661ad9" -> "sha256:7798655bbed5e2dda65000ca7a56c0aef12f3f707fddb843e88e7bab9bc3d432" [label=""];
  "sha256:7798655bbed5e2dda65000ca7a56c0aef12f3f707fddb843e88e7bab9bc3d432" -> "sha256:9908a1a8f495fb23bb1eaf13ab0c58d36261c6b9c92f3d3c41a7c04d49ed4fff" [label=""];
  "sha256:9908a1a8f495fb23bb1eaf13ab0c58d36261c6b9c92f3d3c41a7c04d49ed4fff" -> "sha256:975c345e27040ce4ec744d5f47fe83c6bccc98d0c7ad1e39fe0e50ece97aca32" [label=""];
  "sha256:975c345e27040ce4ec744d5f47fe83c6bccc98d0c7ad1e39fe0e50ece97aca32" -> "sha256:3ba0671b52653899db7c170236610fd6e2dc5c335b0cdd419beed84f187480ff" [label=""];
  "sha256:3ba0671b52653899db7c170236610fd6e2dc5c335b0cdd419beed84f187480ff" -> "sha256:0355a4ecaa84ab7521200c01098a8438eb54968eaff77cba38382b88252c81dc" [label=""];
  "sha256:0355a4ecaa84ab7521200c01098a8438eb54968eaff77cba38382b88252c81dc" -> "sha256:751ade14c0bc438ec301128a08191c4cfc002c8493182dc91387f19c83caf610" [label=""];
  "sha256:751ade14c0bc438ec301128a08191c4cfc002c8493182dc91387f19c83caf610" -> "sha256:42462e3076089fea1e325e353df8dfca7fc1f983be13ee044d6ec003ce3466b8" [label=""];
  "sha256:42462e3076089fea1e325e353df8dfca7fc1f983be13ee044d6ec003ce3466b8" -> "sha256:6243310e38c007488ac352574906d3de31c3b3517436000f8ef2286ca30234e7" [label=""];
}

