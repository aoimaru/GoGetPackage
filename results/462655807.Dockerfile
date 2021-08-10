[app/sources/462655807.Dockerfile]
digraph {
  "sha256:4faa0f139a1a2a47b64528a284fe1baa19267dd703475c9ef8a32c737d4008e2" [label="docker-image://docker.io/library/websphere-liberty:latest" shape="ellipse"];
  "sha256:e3adc3c8cdaf28c60f681129920879e78aaeb0d919ce96eabbc294b36ff29dc9" [label="local://context" shape="ellipse"];
  "sha256:e65caffe09aa1231dff70085cd7eb4658da067f1ad910f68a153a074e34645a3" [label="copy{src=/server/postgresql-42.2.4.jar, dest=/opt/ibm/wlp/usr/shared/resources/}" shape="note"];
  "sha256:f8cc2dd08f774a8cfebe835405844fa8a43c208fd721b45b1885f471d3f33a42" [label="copy{src=/server/server.xml, dest=/config/}" shape="note"];
  "sha256:8b3b741e97cc95ae12ac9e03f4db4091123aa2ff74eb03d3398a8051c14d302c" [label="copy{src=/target/javaee-cafe.war, dest=/config/dropins/javaee-cafe.war}" shape="note"];
  "sha256:46d85ca6769a3ba3f1e175324105decc18869c29c8236672e9ba6e7359f281a1" [label="sha256:46d85ca6769a3ba3f1e175324105decc18869c29c8236672e9ba6e7359f281a1" shape="plaintext"];
  "sha256:4faa0f139a1a2a47b64528a284fe1baa19267dd703475c9ef8a32c737d4008e2" -> "sha256:e65caffe09aa1231dff70085cd7eb4658da067f1ad910f68a153a074e34645a3" [label=""];
  "sha256:e3adc3c8cdaf28c60f681129920879e78aaeb0d919ce96eabbc294b36ff29dc9" -> "sha256:e65caffe09aa1231dff70085cd7eb4658da067f1ad910f68a153a074e34645a3" [label=""];
  "sha256:e65caffe09aa1231dff70085cd7eb4658da067f1ad910f68a153a074e34645a3" -> "sha256:f8cc2dd08f774a8cfebe835405844fa8a43c208fd721b45b1885f471d3f33a42" [label=""];
  "sha256:e3adc3c8cdaf28c60f681129920879e78aaeb0d919ce96eabbc294b36ff29dc9" -> "sha256:f8cc2dd08f774a8cfebe835405844fa8a43c208fd721b45b1885f471d3f33a42" [label=""];
  "sha256:f8cc2dd08f774a8cfebe835405844fa8a43c208fd721b45b1885f471d3f33a42" -> "sha256:8b3b741e97cc95ae12ac9e03f4db4091123aa2ff74eb03d3398a8051c14d302c" [label=""];
  "sha256:e3adc3c8cdaf28c60f681129920879e78aaeb0d919ce96eabbc294b36ff29dc9" -> "sha256:8b3b741e97cc95ae12ac9e03f4db4091123aa2ff74eb03d3398a8051c14d302c" [label=""];
  "sha256:8b3b741e97cc95ae12ac9e03f4db4091123aa2ff74eb03d3398a8051c14d302c" -> "sha256:46d85ca6769a3ba3f1e175324105decc18869c29c8236672e9ba6e7359f281a1" [label=""];
}

