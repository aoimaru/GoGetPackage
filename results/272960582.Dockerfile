[app/sources/272960582.Dockerfile]
digraph {
  "sha256:a5d2c082644934e23738d6372a04d1ec4d5fd0b2adbb885ac374564b453c54a8" [label="docker-image://docker.io/i386/debian:stretch-slim" shape="ellipse"];
  "sha256:3d2d5735889a393fd79b0276c812c55ebd4181d3173dfcacf67bc5f004a689bf" [label="mkdir{path=/usr/src/wine}" shape="note"];
  "sha256:0cb36eb548cf5aa5542d3c0da192e593fc477d91f5a24915b9c10ea1213fd969" [label="/bin/sh -c apt-get update &&     apt-get install -y devscripts build-essential" shape="box"];
  "sha256:4ce9c0365a7abbc37919f7aa73e1ed81f329a61cb9d4debe46d412b547cb0404" [label="local://context" shape="ellipse"];
  "sha256:09559ffd14073bdd8db18bbd9b86e0227a42f2a9dd7ad7ebb9bfa6dbe43f39df" [label="copy{src=/debian-devel, dest=/usr/src/wine/debian}" shape="note"];
  "sha256:8095448a26f7a9655a46464c86905600e9fb474c242a7f08f21d2cf20108e7f3" [label="/bin/sh -c mk-build-deps -i -r -t \"apt-get -y --no-install-recommends\" debian/control" shape="box"];
  "sha256:3aaff69d5f7e437dc6bcbe45b9204ec58ac0309b3fd722b3cdf4cf6d35dbec65" [label="/bin/sh -c curl -L https://github.com/$WINE_GIT/archive/$WINE_TAG.tar.gz     | tar xz --strip-components 1" shape="box"];
  "sha256:5ea0888eb107b99b86cf5d288e48427bbdaf2a2d696d8c94b1d0e8577fa5183e" [label="copy{src=/*.patch, dest=/usr/src/wine/}" shape="note"];
  "sha256:078d03f7d8c946b10290fd407b81121dbe4d64a7d236c79f0898206a8bdc10a7" [label="/bin/sh -c for p in *.patch; do patch -p1 < $p; done" shape="box"];
  "sha256:2c7ffc7dfe839f4b230bf67a82c305b1d7d9d3de4b7d6242b6fe17d5dbaf1185" [label="/bin/sh -c debuild --no-lintian -us -uc -b -j7" shape="box"];
  "sha256:08f97b88d549db3d78e0c7f6038a5862297634aee4c5e3e90a52add11c4de113" [label="/bin/sh -c rm -v /usr/src/wine-$WINE_DIST-d*" shape="box"];
  "sha256:e6676d49b49923aa9931e9be87ede12013cfbbdb8bbf653de5916b40fef0a0f1" [label="copy{src=/usr/src/*.deb, dest=/usr/src/}" shape="note"];
  "sha256:2de41630056ca1fc9c75728952c65e3d08f331affd9427ec5519432c20369455" [label="/bin/sh -c apt-get update &&     apt install -y --no-install-recommends         /usr/src/wine-${WINE_DIST}-i386_2.2.0~stretch_i386.deb         /usr/src/wine-${WINE_DIST}_2.2.0~stretch_i386.deb         /usr/src/winehq-${WINE_DIST}_2.2.0~stretch_i386.deb &&     apt clean -y &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:07ed981327ec869503b1ad9520f3dbb82c58f51d87ffff70df71c635f2e9bb7e" [label="sha256:07ed981327ec869503b1ad9520f3dbb82c58f51d87ffff70df71c635f2e9bb7e" shape="plaintext"];
  "sha256:a5d2c082644934e23738d6372a04d1ec4d5fd0b2adbb885ac374564b453c54a8" -> "sha256:3d2d5735889a393fd79b0276c812c55ebd4181d3173dfcacf67bc5f004a689bf" [label=""];
  "sha256:3d2d5735889a393fd79b0276c812c55ebd4181d3173dfcacf67bc5f004a689bf" -> "sha256:0cb36eb548cf5aa5542d3c0da192e593fc477d91f5a24915b9c10ea1213fd969" [label=""];
  "sha256:0cb36eb548cf5aa5542d3c0da192e593fc477d91f5a24915b9c10ea1213fd969" -> "sha256:09559ffd14073bdd8db18bbd9b86e0227a42f2a9dd7ad7ebb9bfa6dbe43f39df" [label=""];
  "sha256:4ce9c0365a7abbc37919f7aa73e1ed81f329a61cb9d4debe46d412b547cb0404" -> "sha256:09559ffd14073bdd8db18bbd9b86e0227a42f2a9dd7ad7ebb9bfa6dbe43f39df" [label=""];
  "sha256:09559ffd14073bdd8db18bbd9b86e0227a42f2a9dd7ad7ebb9bfa6dbe43f39df" -> "sha256:8095448a26f7a9655a46464c86905600e9fb474c242a7f08f21d2cf20108e7f3" [label=""];
  "sha256:8095448a26f7a9655a46464c86905600e9fb474c242a7f08f21d2cf20108e7f3" -> "sha256:3aaff69d5f7e437dc6bcbe45b9204ec58ac0309b3fd722b3cdf4cf6d35dbec65" [label=""];
  "sha256:3aaff69d5f7e437dc6bcbe45b9204ec58ac0309b3fd722b3cdf4cf6d35dbec65" -> "sha256:5ea0888eb107b99b86cf5d288e48427bbdaf2a2d696d8c94b1d0e8577fa5183e" [label=""];
  "sha256:4ce9c0365a7abbc37919f7aa73e1ed81f329a61cb9d4debe46d412b547cb0404" -> "sha256:5ea0888eb107b99b86cf5d288e48427bbdaf2a2d696d8c94b1d0e8577fa5183e" [label=""];
  "sha256:5ea0888eb107b99b86cf5d288e48427bbdaf2a2d696d8c94b1d0e8577fa5183e" -> "sha256:078d03f7d8c946b10290fd407b81121dbe4d64a7d236c79f0898206a8bdc10a7" [label=""];
  "sha256:078d03f7d8c946b10290fd407b81121dbe4d64a7d236c79f0898206a8bdc10a7" -> "sha256:2c7ffc7dfe839f4b230bf67a82c305b1d7d9d3de4b7d6242b6fe17d5dbaf1185" [label=""];
  "sha256:2c7ffc7dfe839f4b230bf67a82c305b1d7d9d3de4b7d6242b6fe17d5dbaf1185" -> "sha256:08f97b88d549db3d78e0c7f6038a5862297634aee4c5e3e90a52add11c4de113" [label=""];
  "sha256:a5d2c082644934e23738d6372a04d1ec4d5fd0b2adbb885ac374564b453c54a8" -> "sha256:e6676d49b49923aa9931e9be87ede12013cfbbdb8bbf653de5916b40fef0a0f1" [label=""];
  "sha256:08f97b88d549db3d78e0c7f6038a5862297634aee4c5e3e90a52add11c4de113" -> "sha256:e6676d49b49923aa9931e9be87ede12013cfbbdb8bbf653de5916b40fef0a0f1" [label=""];
  "sha256:e6676d49b49923aa9931e9be87ede12013cfbbdb8bbf653de5916b40fef0a0f1" -> "sha256:2de41630056ca1fc9c75728952c65e3d08f331affd9427ec5519432c20369455" [label=""];
  "sha256:2de41630056ca1fc9c75728952c65e3d08f331affd9427ec5519432c20369455" -> "sha256:07ed981327ec869503b1ad9520f3dbb82c58f51d87ffff70df71c635f2e9bb7e" [label=""];
}

