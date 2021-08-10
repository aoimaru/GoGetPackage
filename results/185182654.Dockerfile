[app/sources/185182654.Dockerfile]
digraph {
  "sha256:fc6c62ceb0eebd85d21cc92c15619ef0e35e357553fdb8106393ab26ffeaa0a2" [label="local://context" shape="ellipse"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:ba55884678031352c2b744a2d64a0637846c2066058170b470272c59190f40cc" [label="/bin/sh -c set -ex;    deps=\"$DEPS\";    apt-get update;    apt-get install -y --no-install-recommends $deps;" shape="box"];
  "sha256:99504b75f9776d99390aff18366898af26f932bc0c80febf68f13dc6092e45e4" [label="copy{src=/, dest=/redis-timeseries}" shape="note"];
  "sha256:02b8d53e426d49529d69e1c8fcf4199f76e8a2b5d9a1ae209b9f5998c1828345" [label="mkdir{path=/redis-timeseries}" shape="note"];
  "sha256:9a6d8e1ca9590d37f8d27740903f1bf61622e5d67551952956b8a156258dffb2" [label="/bin/sh -c set -ex;\tcd RedisModulesSDK/rmutil;\tmake clean;\tmake;\tcd -;" shape="box"];
  "sha256:6d380faf718ad7735d5e42927acea7d10ab8a53b4e03815d828aaec78f5a6e13" [label="/bin/sh -c set -ex;\tcd src;    make clean;     make;" shape="box"];
  "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" [label="mkdir{path=/data}" shape="note"];
  "sha256:719e03a540a99dfb33c387ce8f07d3cf5b7dfbb74835317ecd59624693758284" [label="/bin/sh -c set -ex;    mkdir -p \"$LIBDIR\";" shape="box"];
  "sha256:f925c2d4afad6be518cd2b4af907733b20f383b52a51d20b4ea82ebfffbca39f" [label="copy{src=/redis-timeseries/src/redistimeseries.so, dest=/usr/lib/redis/modules}" shape="note"];
  "sha256:c0a89fd7400f8161bf12e89b07451534d35bd308cb61a32c45eb81d66be9fce7" [label="sha256:c0a89fd7400f8161bf12e89b07451534d35bd308cb61a32c45eb81d66be9fce7" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:ba55884678031352c2b744a2d64a0637846c2066058170b470272c59190f40cc" [label=""];
  "sha256:ba55884678031352c2b744a2d64a0637846c2066058170b470272c59190f40cc" -> "sha256:99504b75f9776d99390aff18366898af26f932bc0c80febf68f13dc6092e45e4" [label=""];
  "sha256:fc6c62ceb0eebd85d21cc92c15619ef0e35e357553fdb8106393ab26ffeaa0a2" -> "sha256:99504b75f9776d99390aff18366898af26f932bc0c80febf68f13dc6092e45e4" [label=""];
  "sha256:99504b75f9776d99390aff18366898af26f932bc0c80febf68f13dc6092e45e4" -> "sha256:02b8d53e426d49529d69e1c8fcf4199f76e8a2b5d9a1ae209b9f5998c1828345" [label=""];
  "sha256:02b8d53e426d49529d69e1c8fcf4199f76e8a2b5d9a1ae209b9f5998c1828345" -> "sha256:9a6d8e1ca9590d37f8d27740903f1bf61622e5d67551952956b8a156258dffb2" [label=""];
  "sha256:9a6d8e1ca9590d37f8d27740903f1bf61622e5d67551952956b8a156258dffb2" -> "sha256:6d380faf718ad7735d5e42927acea7d10ab8a53b4e03815d828aaec78f5a6e13" [label=""];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" [label=""];
  "sha256:ddba87186ed9e69ad1a7bdd3027956103fd6cf9d42065891d6794fe813122cb8" -> "sha256:719e03a540a99dfb33c387ce8f07d3cf5b7dfbb74835317ecd59624693758284" [label=""];
  "sha256:719e03a540a99dfb33c387ce8f07d3cf5b7dfbb74835317ecd59624693758284" -> "sha256:f925c2d4afad6be518cd2b4af907733b20f383b52a51d20b4ea82ebfffbca39f" [label=""];
  "sha256:6d380faf718ad7735d5e42927acea7d10ab8a53b4e03815d828aaec78f5a6e13" -> "sha256:f925c2d4afad6be518cd2b4af907733b20f383b52a51d20b4ea82ebfffbca39f" [label=""];
  "sha256:f925c2d4afad6be518cd2b4af907733b20f383b52a51d20b4ea82ebfffbca39f" -> "sha256:c0a89fd7400f8161bf12e89b07451534d35bd308cb61a32c45eb81d66be9fce7" [label=""];
}

