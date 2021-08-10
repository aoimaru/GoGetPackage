[app/sources/252779035.Dockerfile]
digraph {
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:293a7e2578e73b9254519f4db5b241478ac1dd0e7f25d1316a14f14722ad42a4" [label="local://context" shape="ellipse"];
  "sha256:81039659fdf9af54a69b18000f30a945f1d2db6d28b4b83f3c1f114ccd245f40" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:db4275cd636666078ae676b72c1434168c52acf841482bdb6f8dff8a1902f490" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a463dfd6bbf2ef52d46b7c146ad869fa69cfdd59e43101472777c73ee5026733" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:719478e416cf4e24f093b7c4f9c742befe8c9a88244064fdc3e83fc445148199" [label="/bin/sh -c mkdir /home/node/.ssb" shape="box"];
  "sha256:830e8de2294acb9268dbcba1544ec279694abd8c0df8cd7e7a56d0df47f8d2d5" [label="sha256:830e8de2294acb9268dbcba1544ec279694abd8c0df8cd7e7a56d0df47f8d2d5" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" [label=""];
  "sha256:06bd84e8cbad5ac19557116fbf9c487f440843e994338b654009da38bcfd15f3" -> "sha256:81039659fdf9af54a69b18000f30a945f1d2db6d28b4b83f3c1f114ccd245f40" [label=""];
  "sha256:293a7e2578e73b9254519f4db5b241478ac1dd0e7f25d1316a14f14722ad42a4" -> "sha256:81039659fdf9af54a69b18000f30a945f1d2db6d28b4b83f3c1f114ccd245f40" [label=""];
  "sha256:81039659fdf9af54a69b18000f30a945f1d2db6d28b4b83f3c1f114ccd245f40" -> "sha256:db4275cd636666078ae676b72c1434168c52acf841482bdb6f8dff8a1902f490" [label=""];
  "sha256:db4275cd636666078ae676b72c1434168c52acf841482bdb6f8dff8a1902f490" -> "sha256:a463dfd6bbf2ef52d46b7c146ad869fa69cfdd59e43101472777c73ee5026733" [label=""];
  "sha256:293a7e2578e73b9254519f4db5b241478ac1dd0e7f25d1316a14f14722ad42a4" -> "sha256:a463dfd6bbf2ef52d46b7c146ad869fa69cfdd59e43101472777c73ee5026733" [label=""];
  "sha256:a463dfd6bbf2ef52d46b7c146ad869fa69cfdd59e43101472777c73ee5026733" -> "sha256:719478e416cf4e24f093b7c4f9c742befe8c9a88244064fdc3e83fc445148199" [label=""];
  "sha256:719478e416cf4e24f093b7c4f9c742befe8c9a88244064fdc3e83fc445148199" -> "sha256:830e8de2294acb9268dbcba1544ec279694abd8c0df8cd7e7a56d0df47f8d2d5" [label=""];
}

