[app/sources/177936290.Dockerfile]
digraph {
  "sha256:2c9e5c2785e0638184ebcd1bda5251c48a623a5c122df4670fd29239c294be79" [label="docker-image://docker.io/webcenter/openjdk-jre:8" shape="ellipse"];
  "sha256:5c019689b5edc8930b2df9ecb86fdec855c05877f92aaf6775ddf51203bb7458" [label="/bin/sh -c apt-get update &&     apt-get install --no-install-recommends -y python-testtools python-nose python-pip vim curl supervisor logrotate locales  &&     update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX &&     locale-gen en_US.UTF-8 &&     dpkg-reconfigure locales &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:34d01864638bfcda8bcea09626a42a04b012f5cadfcf9e633955b3568e09c767" [label="/bin/sh -c pip install stomp.py" shape="box"];
  "sha256:d4252381033f13e3237c3c9850e920d2b8465e1dc8a94f44411e092e65eba39e" [label="local://context" shape="ellipse"];
  "sha256:5218e7fb16c54fea3bdb7fed02359d36edfc44b293c81cb6b5b598341aec380c" [label="copy{src=/assets/setup, dest=/app/setup/}" shape="note"];
  "sha256:8bf37ac0454bd907e7d48c0169fcbc7d83f908889de02d18534b0ab1fb7925df" [label="/bin/sh -c chmod +x /app/setup/install" shape="box"];
  "sha256:ac34f96ba8580f4d6479e5029cb0a7f8f332ad3d44c8e8a377c077e30ea096a3" [label="/bin/sh -c /app/setup/install" shape="box"];
  "sha256:363b528a19be8ab0e3f000362fecd8262e1f78162c21fbea3c43d14313fd7adc" [label="copy{src=/assets/entrypoint, dest=/app/}" shape="note"];
  "sha256:2d0999febb6b4613305036e202b321eaf1f5f2d53f42668dc0fbf2fd15fc80cb" [label="copy{src=/assets/run.sh, dest=/app/run.sh}" shape="note"];
  "sha256:c2824b84430740f41a94d3c8b2c301b63755ab2fa49252d8739fd1186f83d23c" [label="/bin/sh -c chmod +x /app/run.sh" shape="box"];
  "sha256:d49ae13e6564df8614448af65e9f311eff64e1e889482ed8c2fb792d809a5310" [label="mkdir{path=/opt/activemq}" shape="note"];
  "sha256:157ec4570b492fe9546beeb63df74d146348b0fbf02acc60c368efb0268db724" [label="sha256:157ec4570b492fe9546beeb63df74d146348b0fbf02acc60c368efb0268db724" shape="plaintext"];
  "sha256:2c9e5c2785e0638184ebcd1bda5251c48a623a5c122df4670fd29239c294be79" -> "sha256:5c019689b5edc8930b2df9ecb86fdec855c05877f92aaf6775ddf51203bb7458" [label=""];
  "sha256:5c019689b5edc8930b2df9ecb86fdec855c05877f92aaf6775ddf51203bb7458" -> "sha256:34d01864638bfcda8bcea09626a42a04b012f5cadfcf9e633955b3568e09c767" [label=""];
  "sha256:34d01864638bfcda8bcea09626a42a04b012f5cadfcf9e633955b3568e09c767" -> "sha256:5218e7fb16c54fea3bdb7fed02359d36edfc44b293c81cb6b5b598341aec380c" [label=""];
  "sha256:d4252381033f13e3237c3c9850e920d2b8465e1dc8a94f44411e092e65eba39e" -> "sha256:5218e7fb16c54fea3bdb7fed02359d36edfc44b293c81cb6b5b598341aec380c" [label=""];
  "sha256:5218e7fb16c54fea3bdb7fed02359d36edfc44b293c81cb6b5b598341aec380c" -> "sha256:8bf37ac0454bd907e7d48c0169fcbc7d83f908889de02d18534b0ab1fb7925df" [label=""];
  "sha256:8bf37ac0454bd907e7d48c0169fcbc7d83f908889de02d18534b0ab1fb7925df" -> "sha256:ac34f96ba8580f4d6479e5029cb0a7f8f332ad3d44c8e8a377c077e30ea096a3" [label=""];
  "sha256:ac34f96ba8580f4d6479e5029cb0a7f8f332ad3d44c8e8a377c077e30ea096a3" -> "sha256:363b528a19be8ab0e3f000362fecd8262e1f78162c21fbea3c43d14313fd7adc" [label=""];
  "sha256:d4252381033f13e3237c3c9850e920d2b8465e1dc8a94f44411e092e65eba39e" -> "sha256:363b528a19be8ab0e3f000362fecd8262e1f78162c21fbea3c43d14313fd7adc" [label=""];
  "sha256:363b528a19be8ab0e3f000362fecd8262e1f78162c21fbea3c43d14313fd7adc" -> "sha256:2d0999febb6b4613305036e202b321eaf1f5f2d53f42668dc0fbf2fd15fc80cb" [label=""];
  "sha256:d4252381033f13e3237c3c9850e920d2b8465e1dc8a94f44411e092e65eba39e" -> "sha256:2d0999febb6b4613305036e202b321eaf1f5f2d53f42668dc0fbf2fd15fc80cb" [label=""];
  "sha256:2d0999febb6b4613305036e202b321eaf1f5f2d53f42668dc0fbf2fd15fc80cb" -> "sha256:c2824b84430740f41a94d3c8b2c301b63755ab2fa49252d8739fd1186f83d23c" [label=""];
  "sha256:c2824b84430740f41a94d3c8b2c301b63755ab2fa49252d8739fd1186f83d23c" -> "sha256:d49ae13e6564df8614448af65e9f311eff64e1e889482ed8c2fb792d809a5310" [label=""];
  "sha256:d49ae13e6564df8614448af65e9f311eff64e1e889482ed8c2fb792d809a5310" -> "sha256:157ec4570b492fe9546beeb63df74d146348b0fbf02acc60c368efb0268db724" [label=""];
}

