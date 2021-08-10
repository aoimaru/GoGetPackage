[app/sources/313085245.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f0b4766934119d72b074edeebb34ab5533ee99e0b9b5f683d48d706fa7fbd274" [label="/bin/sh -c apt-get update && apt-get install -y     python3-pip python3-dev     sqlite3 libsqlite3-dev     build-essential libssl-dev libffi-dev" shape="box"];
  "sha256:2a4bdaaa37b2cba89ca08ddc7d1836aeb72e1d9252cc0a78324dfda384bab342" [label="local://context" shape="ellipse"];
  "sha256:eb170ff941d9c09108ff868ca4ee5be790ae55cd1c54780b815445bc371fb2f7" [label="copy{src=/app/requirements.txt, dest=/}" shape="note"];
  "sha256:b80fc4ca70e88ea8946f5978f360fa5f0189d2140cc1631734889744136022f1" [label="/bin/sh -c pip3 install -r ./requirements.txt" shape="box"];
  "sha256:88107114caabf420e8023457c04640473f87a5f8889fc5704b631b853482c4c0" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:e33c36c5dbd0f18a7d1cd36c91dec4fe46d07e203fb15a1f2834b856716e3909" [label="mkdir{path=/app}" shape="note"];
  "sha256:1a5d8583aee66e8a3332e08a2f75ba5bb39373a3208dae1858a31800ebb78e71" [label="sha256:1a5d8583aee66e8a3332e08a2f75ba5bb39373a3208dae1858a31800ebb78e71" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f0b4766934119d72b074edeebb34ab5533ee99e0b9b5f683d48d706fa7fbd274" [label=""];
  "sha256:f0b4766934119d72b074edeebb34ab5533ee99e0b9b5f683d48d706fa7fbd274" -> "sha256:eb170ff941d9c09108ff868ca4ee5be790ae55cd1c54780b815445bc371fb2f7" [label=""];
  "sha256:2a4bdaaa37b2cba89ca08ddc7d1836aeb72e1d9252cc0a78324dfda384bab342" -> "sha256:eb170ff941d9c09108ff868ca4ee5be790ae55cd1c54780b815445bc371fb2f7" [label=""];
  "sha256:eb170ff941d9c09108ff868ca4ee5be790ae55cd1c54780b815445bc371fb2f7" -> "sha256:b80fc4ca70e88ea8946f5978f360fa5f0189d2140cc1631734889744136022f1" [label=""];
  "sha256:b80fc4ca70e88ea8946f5978f360fa5f0189d2140cc1631734889744136022f1" -> "sha256:88107114caabf420e8023457c04640473f87a5f8889fc5704b631b853482c4c0" [label=""];
  "sha256:2a4bdaaa37b2cba89ca08ddc7d1836aeb72e1d9252cc0a78324dfda384bab342" -> "sha256:88107114caabf420e8023457c04640473f87a5f8889fc5704b631b853482c4c0" [label=""];
  "sha256:88107114caabf420e8023457c04640473f87a5f8889fc5704b631b853482c4c0" -> "sha256:e33c36c5dbd0f18a7d1cd36c91dec4fe46d07e203fb15a1f2834b856716e3909" [label=""];
  "sha256:e33c36c5dbd0f18a7d1cd36c91dec4fe46d07e203fb15a1f2834b856716e3909" -> "sha256:1a5d8583aee66e8a3332e08a2f75ba5bb39373a3208dae1858a31800ebb78e71" [label=""];
}

