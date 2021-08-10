[app/sources/257252985.Dockerfile]
digraph {
  "sha256:35c2a3edaeb7de5936d17598e232df8689d4255d67a5838cc1d6229e6daee1fb" [label="docker-image://docker.io/microsoft/dotnet-framework:latest" shape="ellipse"];
  "sha256:8b7eb9552fea847535477b83b8e3c849ce9e4b37b24e7908692d224ce9d255dc" [label="local://context" shape="ellipse"];
  "sha256:2b8b6abfcce7477da17d807ca13bb31426191f2bb2b4c92c56a56051ff6551e7" [label="copy{src=/*, dest=/TestConsole/}" shape="note"];
  "sha256:09e7c1d2e54f4063727ff371ac732288315674e706186b91cf02f448d76015be" [label="mkdir{path=/TestConsole}" shape="note"];
  "sha256:4c31a577fcddcbbc8d8110b2fdbb5d4309455c81ba5ece6f8ffaefbb34150e07" [label="sha256:4c31a577fcddcbbc8d8110b2fdbb5d4309455c81ba5ece6f8ffaefbb34150e07" shape="plaintext"];
  "sha256:35c2a3edaeb7de5936d17598e232df8689d4255d67a5838cc1d6229e6daee1fb" -> "sha256:2b8b6abfcce7477da17d807ca13bb31426191f2bb2b4c92c56a56051ff6551e7" [label=""];
  "sha256:8b7eb9552fea847535477b83b8e3c849ce9e4b37b24e7908692d224ce9d255dc" -> "sha256:2b8b6abfcce7477da17d807ca13bb31426191f2bb2b4c92c56a56051ff6551e7" [label=""];
  "sha256:2b8b6abfcce7477da17d807ca13bb31426191f2bb2b4c92c56a56051ff6551e7" -> "sha256:09e7c1d2e54f4063727ff371ac732288315674e706186b91cf02f448d76015be" [label=""];
  "sha256:09e7c1d2e54f4063727ff371ac732288315674e706186b91cf02f448d76015be" -> "sha256:4c31a577fcddcbbc8d8110b2fdbb5d4309455c81ba5ece6f8ffaefbb34150e07" [label=""];
}

