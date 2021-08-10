[app/sources/286707519.Dockerfile]
digraph {
  "sha256:cc29058248dfab5433ccdd2e99e8050cc612ccb69c7954faa973f6d733e83816" [label="docker-image://docker.io/hkube/base-node:v1.1.1" shape="ellipse"];
  "sha256:464f3e800ffc6202c36d830fc5f59d2989716185c35ae988730046adc0f07ccc" [label="/bin/sh -c mkdir /hkube" shape="box"];
  "sha256:f0aa7d1ecc944a86254585b0977190068460a6db88585e6436013e58f46142a3" [label="local://context" shape="ellipse"];
  "sha256:92e4f4fdfe93397c91808871b9836d29c66c71c7bc3aaa6f162a4d0986ce0507" [label="copy{src=/, dest=/hkube/resource-manager}" shape="note"];
  "sha256:23c6163c9ee95afab603f3445f561b5bff353cfd32629fd5cddac9b7e8f4f9f9" [label="/bin/sh -c cd /hkube/resource-manager" shape="box"];
  "sha256:462d35c1c84f35d178d452101f0bbdb464ed050261787c0adb2708e5e68dc929" [label="mkdir{path=/hkube/resource-manager}" shape="note"];
  "sha256:f75ec03149fd77d63a2238fe874c8c049559c3721b9941a9b24d809b8ce858b6" [label="sha256:f75ec03149fd77d63a2238fe874c8c049559c3721b9941a9b24d809b8ce858b6" shape="plaintext"];
  "sha256:cc29058248dfab5433ccdd2e99e8050cc612ccb69c7954faa973f6d733e83816" -> "sha256:464f3e800ffc6202c36d830fc5f59d2989716185c35ae988730046adc0f07ccc" [label=""];
  "sha256:464f3e800ffc6202c36d830fc5f59d2989716185c35ae988730046adc0f07ccc" -> "sha256:92e4f4fdfe93397c91808871b9836d29c66c71c7bc3aaa6f162a4d0986ce0507" [label=""];
  "sha256:f0aa7d1ecc944a86254585b0977190068460a6db88585e6436013e58f46142a3" -> "sha256:92e4f4fdfe93397c91808871b9836d29c66c71c7bc3aaa6f162a4d0986ce0507" [label=""];
  "sha256:92e4f4fdfe93397c91808871b9836d29c66c71c7bc3aaa6f162a4d0986ce0507" -> "sha256:23c6163c9ee95afab603f3445f561b5bff353cfd32629fd5cddac9b7e8f4f9f9" [label=""];
  "sha256:23c6163c9ee95afab603f3445f561b5bff353cfd32629fd5cddac9b7e8f4f9f9" -> "sha256:462d35c1c84f35d178d452101f0bbdb464ed050261787c0adb2708e5e68dc929" [label=""];
  "sha256:462d35c1c84f35d178d452101f0bbdb464ed050261787c0adb2708e5e68dc929" -> "sha256:f75ec03149fd77d63a2238fe874c8c049559c3721b9941a9b24d809b8ce858b6" [label=""];
}

