[app/sources/282246990.Dockerfile]
digraph {
  "sha256:e1736d7959f6a948626f8060307708c0886de0d0c411aa06b6e6bdf810edd48d" [label="local://context" shape="ellipse"];
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" [label="docker-image://docker.io/library/openjdk:8u181-jre" shape="ellipse"];
  "sha256:6b380096573fdd99c52e02602820bfab4c0ae766744b0e8b6d150000443336c7" [label="/bin/sh -c useradd opentsdb &&     apt-get update &&     apt-get install --no-install-recommends -y gnuplot-nox &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     curl -L https://github.com/OpenTSDB/opentsdb/releases/download/v2.3.1/opentsdb-2.3.1_all.deb > /tmp/opentsdb.deb &&     echo \"f1f118a98c4be9ae1ac5fd31bec37a7da992c4f56d3a4402ddfbf387b179dbd915386e4cb04bb415243b64f5c6b9091390cff8da386a2b765b88dc6e85db7141  /tmp/opentsdb.deb\" | sha512sum -c &&     dpkg -i /tmp/opentsdb.deb &&     rm /tmp/opentsdb.deb &&     rm /etc/opentsdb/opentsdb.conf &&     curl -sL \"https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64\" > /usr/sbin/gosu &&     echo \"5b3b03713a888cee84ecbf4582b21ac9fd46c3d935ff2d7ea25dd5055d302d3c  /usr/sbin/gosu\" | sha256sum -c &&     chmod +x /usr/sbin/gosu" shape="box"];
  "sha256:1728726031db99f594485af1189c00523b2453bd8e982aa1c29ead304a916dd4" [label="copy{src=/logback.xml, dest=/etc/opentsdb/logback.xml}" shape="note"];
  "sha256:f310c264fc5cf01f2a026efc202141979a731325f8e207ea65cfc0b9c99fc711" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:8c9326169fe108e64f86ec53ae8607ad4a0a54b086eb5a8ea03daf875b80eac2" [label="copy{src=/unprivileged.sh, dest=/unprivileged.sh}" shape="note"];
  "sha256:fc4d5c2758105b744f4201c4ad6b4d4b2f4d2b6724a0ac28e57e38e7ee14e4db" [label="sha256:fc4d5c2758105b744f4201c4ad6b4d4b2f4d2b6724a0ac28e57e38e7ee14e4db" shape="plaintext"];
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" -> "sha256:6b380096573fdd99c52e02602820bfab4c0ae766744b0e8b6d150000443336c7" [label=""];
  "sha256:6b380096573fdd99c52e02602820bfab4c0ae766744b0e8b6d150000443336c7" -> "sha256:1728726031db99f594485af1189c00523b2453bd8e982aa1c29ead304a916dd4" [label=""];
  "sha256:e1736d7959f6a948626f8060307708c0886de0d0c411aa06b6e6bdf810edd48d" -> "sha256:1728726031db99f594485af1189c00523b2453bd8e982aa1c29ead304a916dd4" [label=""];
  "sha256:1728726031db99f594485af1189c00523b2453bd8e982aa1c29ead304a916dd4" -> "sha256:f310c264fc5cf01f2a026efc202141979a731325f8e207ea65cfc0b9c99fc711" [label=""];
  "sha256:e1736d7959f6a948626f8060307708c0886de0d0c411aa06b6e6bdf810edd48d" -> "sha256:f310c264fc5cf01f2a026efc202141979a731325f8e207ea65cfc0b9c99fc711" [label=""];
  "sha256:f310c264fc5cf01f2a026efc202141979a731325f8e207ea65cfc0b9c99fc711" -> "sha256:8c9326169fe108e64f86ec53ae8607ad4a0a54b086eb5a8ea03daf875b80eac2" [label=""];
  "sha256:e1736d7959f6a948626f8060307708c0886de0d0c411aa06b6e6bdf810edd48d" -> "sha256:8c9326169fe108e64f86ec53ae8607ad4a0a54b086eb5a8ea03daf875b80eac2" [label=""];
  "sha256:8c9326169fe108e64f86ec53ae8607ad4a0a54b086eb5a8ea03daf875b80eac2" -> "sha256:fc4d5c2758105b744f4201c4ad6b4d4b2f4d2b6724a0ac28e57e38e7ee14e4db" [label=""];
}

