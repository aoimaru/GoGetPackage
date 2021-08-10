[app/sources/252800342.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:44671efea950f627d88621883888456e89b7069743df1d0e7315b99a94113416" [label="mkdir{path=/opt/subscription-manager}" shape="note"];
  "sha256:79db0f3e88195d2bab7fb8dc330a3e42fa3979e53c4dd178b29a2489800a98c7" [label="local://context" shape="ellipse"];
  "sha256:0b0d6f44228883ea9eabfd73384b1f08321085afc3057ae633a915f7c2197853" [label="copy{src=/package.json, dest=/opt/subscription-manager/}" shape="note"];
  "sha256:e5afb8d9403f085d0901c6664746ed97133b65762c25486d06a33b0a5abf619c" [label="copy{src=/package-lock.json, dest=/opt/subscription-manager/}" shape="note"];
  "sha256:6222d0f4600b607d8579b8c0e989841bed20db1f60bafd3abf5b14cf073d9d40" [label="/bin/sh -c npm install" shape="box"];
  "sha256:727613d68312d82d7c8e14b0349887fc2af757cc93890fcc4b4c0f1ca9483096" [label="copy{src=/, dest=/opt/subscription-manager/}" shape="note"];
  "sha256:ae80cc87660fe77747cf72b6412358471fe6c981aed11cc1c05f6d6c0efd65e3" [label="/bin/sh -c npm run-script build" shape="box"];
  "sha256:8b7e587c3a129eb242a49cecfc03c20ac7eccaa22ef05acdfdad5452c041a2ef" [label="sha256:8b7e587c3a129eb242a49cecfc03c20ac7eccaa22ef05acdfdad5452c041a2ef" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:44671efea950f627d88621883888456e89b7069743df1d0e7315b99a94113416" [label=""];
  "sha256:44671efea950f627d88621883888456e89b7069743df1d0e7315b99a94113416" -> "sha256:0b0d6f44228883ea9eabfd73384b1f08321085afc3057ae633a915f7c2197853" [label=""];
  "sha256:79db0f3e88195d2bab7fb8dc330a3e42fa3979e53c4dd178b29a2489800a98c7" -> "sha256:0b0d6f44228883ea9eabfd73384b1f08321085afc3057ae633a915f7c2197853" [label=""];
  "sha256:0b0d6f44228883ea9eabfd73384b1f08321085afc3057ae633a915f7c2197853" -> "sha256:e5afb8d9403f085d0901c6664746ed97133b65762c25486d06a33b0a5abf619c" [label=""];
  "sha256:79db0f3e88195d2bab7fb8dc330a3e42fa3979e53c4dd178b29a2489800a98c7" -> "sha256:e5afb8d9403f085d0901c6664746ed97133b65762c25486d06a33b0a5abf619c" [label=""];
  "sha256:e5afb8d9403f085d0901c6664746ed97133b65762c25486d06a33b0a5abf619c" -> "sha256:6222d0f4600b607d8579b8c0e989841bed20db1f60bafd3abf5b14cf073d9d40" [label=""];
  "sha256:6222d0f4600b607d8579b8c0e989841bed20db1f60bafd3abf5b14cf073d9d40" -> "sha256:727613d68312d82d7c8e14b0349887fc2af757cc93890fcc4b4c0f1ca9483096" [label=""];
  "sha256:79db0f3e88195d2bab7fb8dc330a3e42fa3979e53c4dd178b29a2489800a98c7" -> "sha256:727613d68312d82d7c8e14b0349887fc2af757cc93890fcc4b4c0f1ca9483096" [label=""];
  "sha256:727613d68312d82d7c8e14b0349887fc2af757cc93890fcc4b4c0f1ca9483096" -> "sha256:ae80cc87660fe77747cf72b6412358471fe6c981aed11cc1c05f6d6c0efd65e3" [label=""];
  "sha256:ae80cc87660fe77747cf72b6412358471fe6c981aed11cc1c05f6d6c0efd65e3" -> "sha256:8b7e587c3a129eb242a49cecfc03c20ac7eccaa22ef05acdfdad5452c041a2ef" [label=""];
}

