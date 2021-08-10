[app/sources/219076069.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7ea5fb3a4e537ac63ae49b8409a023545203b1589398e897f4950dbc44c0e85b" [label="/bin/sh -c apt-get update && apt-get -y install openjdk-7-jre-headless wget && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:fc20811e534819a1408ff2d8375d1747ef45c0cf7d9ac8df6c71554b02096399" [label="/bin/sh -c wget -q -O /usr/src/elasticsearch.deb https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.deb && dpkg -i /usr/src/elasticsearch.deb" shape="box"];
  "sha256:9d0316d258d4475c307a4a2028f04c9a21283033a92ac9a9f8b6c0e17094c301" [label="/bin/sh -c echo \"# CORS settings:\\nhttp.cors.enabled: true\\nhttp.cors.allow-origin: true\\n\" >> /etc/elasticsearch/elasticsearch.yml" shape="box"];
  "sha256:f0d54a535c2600ef83c2bcf596d5339d8e92e9c9f31618c6621f1dd9dcf772f0" [label="local://context" shape="ellipse"];
  "sha256:c8548083ab4a985450de170857c91397b2333f28de2c135978b04f3c2d7f93c5" [label="copy{src=/dist/linux/amd64/traildash, dest=/usr/local/traildash/traildash}" shape="note"];
  "sha256:587e83fd84db355ac03e827d6e1a9adb3791029a910e4642d9edd0a7e5031a0b" [label="copy{src=/assets/start, dest=/root/start}" shape="note"];
  "sha256:35dc721e766cd895c299741bc645abbc533996a5d86a8263ed635a6c91da606e" [label="/bin/sh -c chmod 755 /root/start /usr/local/traildash/traildash" shape="box"];
  "sha256:8fc3a931e575cf56ab74e946ff7cc2f4426e3d1ff5d05ec2cf61d98d924016df" [label="sha256:8fc3a931e575cf56ab74e946ff7cc2f4426e3d1ff5d05ec2cf61d98d924016df" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7ea5fb3a4e537ac63ae49b8409a023545203b1589398e897f4950dbc44c0e85b" [label=""];
  "sha256:7ea5fb3a4e537ac63ae49b8409a023545203b1589398e897f4950dbc44c0e85b" -> "sha256:fc20811e534819a1408ff2d8375d1747ef45c0cf7d9ac8df6c71554b02096399" [label=""];
  "sha256:fc20811e534819a1408ff2d8375d1747ef45c0cf7d9ac8df6c71554b02096399" -> "sha256:9d0316d258d4475c307a4a2028f04c9a21283033a92ac9a9f8b6c0e17094c301" [label=""];
  "sha256:9d0316d258d4475c307a4a2028f04c9a21283033a92ac9a9f8b6c0e17094c301" -> "sha256:c8548083ab4a985450de170857c91397b2333f28de2c135978b04f3c2d7f93c5" [label=""];
  "sha256:f0d54a535c2600ef83c2bcf596d5339d8e92e9c9f31618c6621f1dd9dcf772f0" -> "sha256:c8548083ab4a985450de170857c91397b2333f28de2c135978b04f3c2d7f93c5" [label=""];
  "sha256:c8548083ab4a985450de170857c91397b2333f28de2c135978b04f3c2d7f93c5" -> "sha256:587e83fd84db355ac03e827d6e1a9adb3791029a910e4642d9edd0a7e5031a0b" [label=""];
  "sha256:f0d54a535c2600ef83c2bcf596d5339d8e92e9c9f31618c6621f1dd9dcf772f0" -> "sha256:587e83fd84db355ac03e827d6e1a9adb3791029a910e4642d9edd0a7e5031a0b" [label=""];
  "sha256:587e83fd84db355ac03e827d6e1a9adb3791029a910e4642d9edd0a7e5031a0b" -> "sha256:35dc721e766cd895c299741bc645abbc533996a5d86a8263ed635a6c91da606e" [label=""];
  "sha256:35dc721e766cd895c299741bc645abbc533996a5d86a8263ed635a6c91da606e" -> "sha256:8fc3a931e575cf56ab74e946ff7cc2f4426e3d1ff5d05ec2cf61d98d924016df" [label=""];
}

