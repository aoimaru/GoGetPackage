[app/sources/288262811.Dockerfile]
digraph {
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:706f7f9acf84344df8377b172f3a72eaeaf147033949d10a96e6120308f6fde8" [label="local://context" shape="ellipse"];
  "sha256:928e2d9e0bb6b2011098ad64324d6c65fd9626a7698c3882f9ca2339042b4341" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:c26d077e555529f7dd604c9b1d56e2d406337e3f2c0f4bf5d88f5a7928658a36" [label="/bin/sh -c npm install --only=production" shape="box"];
  "sha256:249f14af83faf731940276e7c2cc4f4d489cd65fcc767b221f2a220e72f6a059" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:09fef2bbcddfa1fcaedf100e1f7d5c201cec28b8619beff516bd95ccd89913ba" [label="sha256:09fef2bbcddfa1fcaedf100e1f7d5c201cec28b8619beff516bd95ccd89913ba" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" [label=""];
  "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" -> "sha256:928e2d9e0bb6b2011098ad64324d6c65fd9626a7698c3882f9ca2339042b4341" [label=""];
  "sha256:706f7f9acf84344df8377b172f3a72eaeaf147033949d10a96e6120308f6fde8" -> "sha256:928e2d9e0bb6b2011098ad64324d6c65fd9626a7698c3882f9ca2339042b4341" [label=""];
  "sha256:928e2d9e0bb6b2011098ad64324d6c65fd9626a7698c3882f9ca2339042b4341" -> "sha256:c26d077e555529f7dd604c9b1d56e2d406337e3f2c0f4bf5d88f5a7928658a36" [label=""];
  "sha256:c26d077e555529f7dd604c9b1d56e2d406337e3f2c0f4bf5d88f5a7928658a36" -> "sha256:249f14af83faf731940276e7c2cc4f4d489cd65fcc767b221f2a220e72f6a059" [label=""];
  "sha256:706f7f9acf84344df8377b172f3a72eaeaf147033949d10a96e6120308f6fde8" -> "sha256:249f14af83faf731940276e7c2cc4f4d489cd65fcc767b221f2a220e72f6a059" [label=""];
  "sha256:249f14af83faf731940276e7c2cc4f4d489cd65fcc767b221f2a220e72f6a059" -> "sha256:09fef2bbcddfa1fcaedf100e1f7d5c201cec28b8619beff516bd95ccd89913ba" [label=""];
}

