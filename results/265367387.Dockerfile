[app/sources/265367387.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6ddd6add8e736b25e41b13db1cbe4ba38b0b1e16785f9ee3a3bc17cb6e518ac6" [label="/bin/sh -c apt update" shape="box"];
  "sha256:2c137cce0a432977378616ec341dd9fe51d41f5220dbacb4136950a699ece45c" [label="/bin/sh -c apt install -y     make     gcc     socat" shape="box"];
  "sha256:a0bba22b2ec7b11ada3f934054c1b47fafe2ed0344234370a5961e21490070fb" [label="/bin/sh -c useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf" shape="box"];
  "sha256:ae8f5a95e70886873c3c52d3ce5d458e96d6a39a7b375379d2425460e4753603" [label="/bin/sh -c echo \"ctf:ctf\" | chpasswd" shape="box"];
  "sha256:43b065b1b33c0cf2632ac4aea3c8e759e81e366ab6442787c420ca1cf18f4f16" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:0cb806ff10b34aae3942ba5fa544ecb7c7d8e0557c5ee20c7433d7bbdebc3eb8" [label="local://context" shape="ellipse"];
  "sha256:2392838507b6721b6b97d058d7cd61f019a9a555c9afe327d6bc186347d8a143" [label="copy{src=/source, dest=/home/ctf/}" shape="note"];
  "sha256:d96f8a07b80c15d928e6e9f936eb7dbe305ca7857dc3f84af0fb05a57ee3b661" [label="/bin/sh -c make" shape="box"];
  "sha256:f1b24036f2a5d2d99fe1e2678d3aaa014eb04c7df4dba7c4a18b457dfeea87ed" [label="sha256:f1b24036f2a5d2d99fe1e2678d3aaa014eb04c7df4dba7c4a18b457dfeea87ed" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6ddd6add8e736b25e41b13db1cbe4ba38b0b1e16785f9ee3a3bc17cb6e518ac6" [label=""];
  "sha256:6ddd6add8e736b25e41b13db1cbe4ba38b0b1e16785f9ee3a3bc17cb6e518ac6" -> "sha256:2c137cce0a432977378616ec341dd9fe51d41f5220dbacb4136950a699ece45c" [label=""];
  "sha256:2c137cce0a432977378616ec341dd9fe51d41f5220dbacb4136950a699ece45c" -> "sha256:a0bba22b2ec7b11ada3f934054c1b47fafe2ed0344234370a5961e21490070fb" [label=""];
  "sha256:a0bba22b2ec7b11ada3f934054c1b47fafe2ed0344234370a5961e21490070fb" -> "sha256:ae8f5a95e70886873c3c52d3ce5d458e96d6a39a7b375379d2425460e4753603" [label=""];
  "sha256:ae8f5a95e70886873c3c52d3ce5d458e96d6a39a7b375379d2425460e4753603" -> "sha256:43b065b1b33c0cf2632ac4aea3c8e759e81e366ab6442787c420ca1cf18f4f16" [label=""];
  "sha256:43b065b1b33c0cf2632ac4aea3c8e759e81e366ab6442787c420ca1cf18f4f16" -> "sha256:2392838507b6721b6b97d058d7cd61f019a9a555c9afe327d6bc186347d8a143" [label=""];
  "sha256:0cb806ff10b34aae3942ba5fa544ecb7c7d8e0557c5ee20c7433d7bbdebc3eb8" -> "sha256:2392838507b6721b6b97d058d7cd61f019a9a555c9afe327d6bc186347d8a143" [label=""];
  "sha256:2392838507b6721b6b97d058d7cd61f019a9a555c9afe327d6bc186347d8a143" -> "sha256:d96f8a07b80c15d928e6e9f936eb7dbe305ca7857dc3f84af0fb05a57ee3b661" [label=""];
  "sha256:d96f8a07b80c15d928e6e9f936eb7dbe305ca7857dc3f84af0fb05a57ee3b661" -> "sha256:f1b24036f2a5d2d99fe1e2678d3aaa014eb04c7df4dba7c4a18b457dfeea87ed" [label=""];
}

