[app/sources/275082227.Dockerfile]
digraph {
  "sha256:f65455d7557015a0cb1937bce9b988dc77f1cd9d04b7c0ab23aa5ae0cf395179" [label="docker-image://docker.io/schaff/python-copasi-jre:latest@sha256:009fda6cf80e783833eb6ff9ce919ba727d68c1f9127efe422ddde9d48b0c554" shape="ellipse"];
  "sha256:f61359bd593e77cdf1be5c87ab933a024291c1f40aa20a8808420fcfbccd7874" [label="/bin/sh -c mkdir -p /usr/local/app/lib" shape="box"];
  "sha256:936377f368756e60307f1197e699c39957bbfcd7dc318a462af0fcb630720942" [label="mkdir{path=/usr/local/app}" shape="note"];
  "sha256:2ab3b8bd7780bf17c5e9d673832d5dcea99d604a129d61a29cb9dbf59cef86b0" [label="local://context" shape="ellipse"];
  "sha256:00cef2e291bcd60d0260b1322cb45759c5dbb6d89834965a327ea8645d284ac0" [label="copy{src=/vcell-server/target/vcell-server-0.0.1-SNAPSHOT.jar, dest=/usr/local/app/lib/},copy{src=/vcell-server/target/maven-jars/*.jar, dest=/usr/local/app/lib/},copy{src=/vcell-opt/target/vcell-opt-0.0.1-SNAPSHOT.jar, dest=/usr/local/app/lib/},copy{src=/vcell-opt/target/maven-jars/*.jar, dest=/usr/local/app/lib/}" shape="note"];
  "sha256:4ed5c9bc8bf41bd72adb0682429764a10ba2a57ab760f7564439ef31291f3e65" [label="copy{src=/pythonScripts, dest=/usr/local/app/pythonScripts}" shape="note"];
  "sha256:b0cb4f751506f71e495dcca823c8422b31a8b27d3849749874aad7939bd9902c" [label="copy{src=/docker/build/vcell-opt.log4j.xml, dest=/usr/local/app/}" shape="note"];
  "sha256:a756afd43ae0dbc1d1133330214553e2b7232da585a77e399a51ba1a9b2e0142" [label="sha256:a756afd43ae0dbc1d1133330214553e2b7232da585a77e399a51ba1a9b2e0142" shape="plaintext"];
  "sha256:f65455d7557015a0cb1937bce9b988dc77f1cd9d04b7c0ab23aa5ae0cf395179" -> "sha256:f61359bd593e77cdf1be5c87ab933a024291c1f40aa20a8808420fcfbccd7874" [label=""];
  "sha256:f61359bd593e77cdf1be5c87ab933a024291c1f40aa20a8808420fcfbccd7874" -> "sha256:936377f368756e60307f1197e699c39957bbfcd7dc318a462af0fcb630720942" [label=""];
  "sha256:936377f368756e60307f1197e699c39957bbfcd7dc318a462af0fcb630720942" -> "sha256:00cef2e291bcd60d0260b1322cb45759c5dbb6d89834965a327ea8645d284ac0" [label=""];
  "sha256:2ab3b8bd7780bf17c5e9d673832d5dcea99d604a129d61a29cb9dbf59cef86b0" -> "sha256:00cef2e291bcd60d0260b1322cb45759c5dbb6d89834965a327ea8645d284ac0" [label=""];
  "sha256:00cef2e291bcd60d0260b1322cb45759c5dbb6d89834965a327ea8645d284ac0" -> "sha256:4ed5c9bc8bf41bd72adb0682429764a10ba2a57ab760f7564439ef31291f3e65" [label=""];
  "sha256:2ab3b8bd7780bf17c5e9d673832d5dcea99d604a129d61a29cb9dbf59cef86b0" -> "sha256:4ed5c9bc8bf41bd72adb0682429764a10ba2a57ab760f7564439ef31291f3e65" [label=""];
  "sha256:4ed5c9bc8bf41bd72adb0682429764a10ba2a57ab760f7564439ef31291f3e65" -> "sha256:b0cb4f751506f71e495dcca823c8422b31a8b27d3849749874aad7939bd9902c" [label=""];
  "sha256:2ab3b8bd7780bf17c5e9d673832d5dcea99d604a129d61a29cb9dbf59cef86b0" -> "sha256:b0cb4f751506f71e495dcca823c8422b31a8b27d3849749874aad7939bd9902c" [label=""];
  "sha256:b0cb4f751506f71e495dcca823c8422b31a8b27d3849749874aad7939bd9902c" -> "sha256:a756afd43ae0dbc1d1133330214553e2b7232da585a77e399a51ba1a9b2e0142" [label=""];
}

