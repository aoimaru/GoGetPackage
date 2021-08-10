[app/sources/217042341.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:7b17e78a20f13bcd8cfe76e531f1ac5b1c7c2b8399ddcf3aa48f6a7fe0073d54" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fa6741b8eea737e182014cc6b77e50a1d0455e40d084a36417a33c1be602b224" [label="/bin/sh -c wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -" shape="box"];
  "sha256:9fb67196a44008256c0fc92f6a7ff85e3add1762b7da6f99c47d212f091985e1" [label="/bin/sh -c apt-get install apt-transport-https" shape="box"];
  "sha256:bfcf983387810ca66ce4bff160ae43944369ae4fd0b3707ff6b4b8299e93a1ca" [label="/bin/sh -c echo \"deb https://artifacts.elastic.co/packages/6.x/apt stable main\" | tee -a /etc/apt/sources.list.d/elastic-6.x.list" shape="box"];
  "sha256:c8d91ac0b3f1ca42c0cafb69c33843dd1621f739e0161bf4266f1d199d63d7e2" [label="/bin/sh -c apt-get update && apt-get install logstash" shape="box"];
  "sha256:dc5f40ecdc71998b5a8f564a5edce982f489ee6f3da0e1a1081bd8e81569f350" [label="mkdir{path=/usr/share/logstash}" shape="note"];
  "sha256:78d1e509010fd43a54b3918c9553ee233bb26a94a56b1fc27837bd38024a1541" [label="local://context" shape="ellipse"];
  "sha256:cd550ed30359dd12b40e29813c24d3feddc22571235e4db61d1c098661d03702" [label="copy{src=/logstash.conf, dest=/usr/share/logstash}" shape="note"];
  "sha256:3acca050d86eaedf3e3d4523b3994bf113be3c9431dde1390efafff0575bbcfd" [label="sha256:3acca050d86eaedf3e3d4523b3994bf113be3c9431dde1390efafff0575bbcfd" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:7b17e78a20f13bcd8cfe76e531f1ac5b1c7c2b8399ddcf3aa48f6a7fe0073d54" [label=""];
  "sha256:7b17e78a20f13bcd8cfe76e531f1ac5b1c7c2b8399ddcf3aa48f6a7fe0073d54" -> "sha256:fa6741b8eea737e182014cc6b77e50a1d0455e40d084a36417a33c1be602b224" [label=""];
  "sha256:fa6741b8eea737e182014cc6b77e50a1d0455e40d084a36417a33c1be602b224" -> "sha256:9fb67196a44008256c0fc92f6a7ff85e3add1762b7da6f99c47d212f091985e1" [label=""];
  "sha256:9fb67196a44008256c0fc92f6a7ff85e3add1762b7da6f99c47d212f091985e1" -> "sha256:bfcf983387810ca66ce4bff160ae43944369ae4fd0b3707ff6b4b8299e93a1ca" [label=""];
  "sha256:bfcf983387810ca66ce4bff160ae43944369ae4fd0b3707ff6b4b8299e93a1ca" -> "sha256:c8d91ac0b3f1ca42c0cafb69c33843dd1621f739e0161bf4266f1d199d63d7e2" [label=""];
  "sha256:c8d91ac0b3f1ca42c0cafb69c33843dd1621f739e0161bf4266f1d199d63d7e2" -> "sha256:dc5f40ecdc71998b5a8f564a5edce982f489ee6f3da0e1a1081bd8e81569f350" [label=""];
  "sha256:dc5f40ecdc71998b5a8f564a5edce982f489ee6f3da0e1a1081bd8e81569f350" -> "sha256:cd550ed30359dd12b40e29813c24d3feddc22571235e4db61d1c098661d03702" [label=""];
  "sha256:78d1e509010fd43a54b3918c9553ee233bb26a94a56b1fc27837bd38024a1541" -> "sha256:cd550ed30359dd12b40e29813c24d3feddc22571235e4db61d1c098661d03702" [label=""];
  "sha256:cd550ed30359dd12b40e29813c24d3feddc22571235e4db61d1c098661d03702" -> "sha256:3acca050d86eaedf3e3d4523b3994bf113be3c9431dde1390efafff0575bbcfd" [label=""];
}

