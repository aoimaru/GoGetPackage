[app/sources/204745293.Dockerfile]
digraph {
  "sha256:8b2d91d60d394108d912381b2cd3c053edca0a6a12b82fa464afbe5f95f4b6eb" [label="local://context" shape="ellipse"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:c2ea29f57c3e7d76ffa3ab0629454937671931b8f64d21d24378d6729d2ff735" [label="/bin/sh -c apt-get update && apt-get install -y lib32stdc++6 lib32z1" shape="box"];
  "sha256:897651f9dcbd7127f12e5b5d330ace00424a057e9aa3420759c7a88b9371735f" [label="/bin/sh -c cd /usr/local/ &&     wget -q http://dl.google.com/android/${ANDROID_SDK} &&     tar -xzf ${ANDROID_SDK} &&     rm ${ANDROID_SDK} &&     echo y | android update sdk --no-ui --all --filter platform-tools,build-tools-23.0.2,build-tools-25,android-23,android-25,extra-android-support,extra-android-m2repository,extra-google-m2repository" shape="box"];
  "sha256:ca685995725beb96cf290e7b4b91ef3323a7ef2c35d6b07f4ac0c7ca302895e3" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \tapt-get install --no-install-recommends -y nodejs  &&     apt-get -y autoremove &&     apt-get -y autoclean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0f2c658d65eda89238a1baf9c69604344ed0ec8408f95b713c4bae79f16be177" [label="copy{src=/bower.json, dest=/tmp/app/},copy{src=/package.json, dest=/tmp/app/},copy{src=/config.xml, dest=/tmp/app/},copy{src=/ionic.config.json, dest=/tmp/app/},copy{src=/gulpfile.js, dest=/tmp/app/}" shape="note"];
  "sha256:84f3d2305130d301d90e344ac5bac3834e394657c47bcf7fac154b92164409b5" [label="copy{src=/resources, dest=/tmp/app/resources/}" shape="note"];
  "sha256:e0d3604dfc14fd3303fa157d3ac9a2df0b7a88d2c9a93679f09d5d78432847fa" [label="copy{src=/gulp-tasks, dest=/tmp/app/gulp-tasks/}" shape="note"];
  "sha256:00527b900ee1607eef5cfeadd3e36affcb614403dcef7cbe089ce44dbfde1a5b" [label="mkdir{path=/tmp/app}" shape="note"];
  "sha256:2dffdb450a47edf294422b9acca198aba9cc687b783ae25f11ea0d32fa773b4b" [label="/bin/sh -c mkdir ./www &&     npm install -g gulp bower cordova@6.4.0 ionic@2.2.1 &&     cordova telemetry off &&     bower install --allow-root && npm install &&     cordova prepare" shape="box"];
  "sha256:3ea4634825453fab0a75eebd1ad8833e08c3732e7b2c7ce8618def131cf50c6d" [label="sha256:3ea4634825453fab0a75eebd1ad8833e08c3732e7b2c7ce8618def131cf50c6d" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:c2ea29f57c3e7d76ffa3ab0629454937671931b8f64d21d24378d6729d2ff735" [label=""];
  "sha256:c2ea29f57c3e7d76ffa3ab0629454937671931b8f64d21d24378d6729d2ff735" -> "sha256:897651f9dcbd7127f12e5b5d330ace00424a057e9aa3420759c7a88b9371735f" [label=""];
  "sha256:897651f9dcbd7127f12e5b5d330ace00424a057e9aa3420759c7a88b9371735f" -> "sha256:ca685995725beb96cf290e7b4b91ef3323a7ef2c35d6b07f4ac0c7ca302895e3" [label=""];
  "sha256:ca685995725beb96cf290e7b4b91ef3323a7ef2c35d6b07f4ac0c7ca302895e3" -> "sha256:0f2c658d65eda89238a1baf9c69604344ed0ec8408f95b713c4bae79f16be177" [label=""];
  "sha256:8b2d91d60d394108d912381b2cd3c053edca0a6a12b82fa464afbe5f95f4b6eb" -> "sha256:0f2c658d65eda89238a1baf9c69604344ed0ec8408f95b713c4bae79f16be177" [label=""];
  "sha256:0f2c658d65eda89238a1baf9c69604344ed0ec8408f95b713c4bae79f16be177" -> "sha256:84f3d2305130d301d90e344ac5bac3834e394657c47bcf7fac154b92164409b5" [label=""];
  "sha256:8b2d91d60d394108d912381b2cd3c053edca0a6a12b82fa464afbe5f95f4b6eb" -> "sha256:84f3d2305130d301d90e344ac5bac3834e394657c47bcf7fac154b92164409b5" [label=""];
  "sha256:84f3d2305130d301d90e344ac5bac3834e394657c47bcf7fac154b92164409b5" -> "sha256:e0d3604dfc14fd3303fa157d3ac9a2df0b7a88d2c9a93679f09d5d78432847fa" [label=""];
  "sha256:8b2d91d60d394108d912381b2cd3c053edca0a6a12b82fa464afbe5f95f4b6eb" -> "sha256:e0d3604dfc14fd3303fa157d3ac9a2df0b7a88d2c9a93679f09d5d78432847fa" [label=""];
  "sha256:e0d3604dfc14fd3303fa157d3ac9a2df0b7a88d2c9a93679f09d5d78432847fa" -> "sha256:00527b900ee1607eef5cfeadd3e36affcb614403dcef7cbe089ce44dbfde1a5b" [label=""];
  "sha256:00527b900ee1607eef5cfeadd3e36affcb614403dcef7cbe089ce44dbfde1a5b" -> "sha256:2dffdb450a47edf294422b9acca198aba9cc687b783ae25f11ea0d32fa773b4b" [label=""];
  "sha256:2dffdb450a47edf294422b9acca198aba9cc687b783ae25f11ea0d32fa773b4b" -> "sha256:3ea4634825453fab0a75eebd1ad8833e08c3732e7b2c7ce8618def131cf50c6d" [label=""];
}

