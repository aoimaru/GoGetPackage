[app/sources/229525762.Dockerfile]
digraph {
  "sha256:0b5af0f28cc4116abe87a31bc0f10e22fd2c911b7b72e899d6e0dbb607d9d24c" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:ea0baf9e952fdc37760b92d3fa359e728563ecb3377a67d9b1d859a77632a9ea" [label="/bin/sh -c apt-get install -y build-essential socat" shape="box"];
  "sha256:f90240470f764d7c11a0cd824435cac28ca4a9037d9c60963b5471f227294f2c" [label="/bin/sh -c adduser --disabled-password --gecos '' hungman" shape="box"];
  "sha256:7282e640ad17be10c4d196252fa78dae025239e8f8fe8215a19b54fe36d706f3" [label="/bin/sh -c chown -R root:hungman /home/hungman/" shape="box"];
  "sha256:38b1511f58d9e938568b2cd1f545385dce0c4f1c179e08bdea6be5a4b133a9a9" [label="/bin/sh -c chmod 750 /home/hungman" shape="box"];
  "sha256:2837143074bfb87e4cfda4c71fd4b04b33f476ca4d6a324cf6913afaa6eada8c" [label="/bin/sh -c touch /home/hungman/flag.txt" shape="box"];
  "sha256:1d45c4cce3565dde623697950727a21f8a9c418f2bd5b7d558144bbc37e576e5" [label="/bin/sh -c chown root:hungman /home/hungman/flag.txt" shape="box"];
  "sha256:bab05c7b69ad310ac457c54f217403c328b0bd8c28641a4bc2c6467d7ba7187c" [label="/bin/sh -c chmod 440 /home/hungman/flag.txt" shape="box"];
  "sha256:69e28f3a8d902a5900cb02e2a9b09235d1d22e46e340588a3a4df58c9104475c" [label="/bin/sh -c export TERM=xterm" shape="box"];
  "sha256:67c2f15ac25ca69bda25d3f6bfdeab71a43e4a28fb5eba117d700c0891a19358" [label="mkdir{path=/home/hungman}" shape="note"];
  "sha256:669a8f329a3ea0c6a4056b08272776485cc60bde866a43aaddc809e882a443b8" [label="copy{src=/hungman, dest=/home/hungman}" shape="note"];
  "sha256:39088fc0ca44406240a9ffcd338a02176db2605de06607df68a0660d00d2e19f" [label="copy{src=/flag.txt, dest=/home/hungman}" shape="note"];
  "sha256:fce7e43a024941cae70d5bac42a4a13a43fc6e0528fcf16038584848f146dcdf" [label="sha256:fce7e43a024941cae70d5bac42a4a13a43fc6e0528fcf16038584848f146dcdf" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label=""];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" -> "sha256:ea0baf9e952fdc37760b92d3fa359e728563ecb3377a67d9b1d859a77632a9ea" [label=""];
  "sha256:ea0baf9e952fdc37760b92d3fa359e728563ecb3377a67d9b1d859a77632a9ea" -> "sha256:f90240470f764d7c11a0cd824435cac28ca4a9037d9c60963b5471f227294f2c" [label=""];
  "sha256:f90240470f764d7c11a0cd824435cac28ca4a9037d9c60963b5471f227294f2c" -> "sha256:7282e640ad17be10c4d196252fa78dae025239e8f8fe8215a19b54fe36d706f3" [label=""];
  "sha256:7282e640ad17be10c4d196252fa78dae025239e8f8fe8215a19b54fe36d706f3" -> "sha256:38b1511f58d9e938568b2cd1f545385dce0c4f1c179e08bdea6be5a4b133a9a9" [label=""];
  "sha256:38b1511f58d9e938568b2cd1f545385dce0c4f1c179e08bdea6be5a4b133a9a9" -> "sha256:2837143074bfb87e4cfda4c71fd4b04b33f476ca4d6a324cf6913afaa6eada8c" [label=""];
  "sha256:2837143074bfb87e4cfda4c71fd4b04b33f476ca4d6a324cf6913afaa6eada8c" -> "sha256:1d45c4cce3565dde623697950727a21f8a9c418f2bd5b7d558144bbc37e576e5" [label=""];
  "sha256:1d45c4cce3565dde623697950727a21f8a9c418f2bd5b7d558144bbc37e576e5" -> "sha256:bab05c7b69ad310ac457c54f217403c328b0bd8c28641a4bc2c6467d7ba7187c" [label=""];
  "sha256:bab05c7b69ad310ac457c54f217403c328b0bd8c28641a4bc2c6467d7ba7187c" -> "sha256:69e28f3a8d902a5900cb02e2a9b09235d1d22e46e340588a3a4df58c9104475c" [label=""];
  "sha256:69e28f3a8d902a5900cb02e2a9b09235d1d22e46e340588a3a4df58c9104475c" -> "sha256:67c2f15ac25ca69bda25d3f6bfdeab71a43e4a28fb5eba117d700c0891a19358" [label=""];
  "sha256:67c2f15ac25ca69bda25d3f6bfdeab71a43e4a28fb5eba117d700c0891a19358" -> "sha256:669a8f329a3ea0c6a4056b08272776485cc60bde866a43aaddc809e882a443b8" [label=""];
  "sha256:0b5af0f28cc4116abe87a31bc0f10e22fd2c911b7b72e899d6e0dbb607d9d24c" -> "sha256:669a8f329a3ea0c6a4056b08272776485cc60bde866a43aaddc809e882a443b8" [label=""];
  "sha256:669a8f329a3ea0c6a4056b08272776485cc60bde866a43aaddc809e882a443b8" -> "sha256:39088fc0ca44406240a9ffcd338a02176db2605de06607df68a0660d00d2e19f" [label=""];
  "sha256:0b5af0f28cc4116abe87a31bc0f10e22fd2c911b7b72e899d6e0dbb607d9d24c" -> "sha256:39088fc0ca44406240a9ffcd338a02176db2605de06607df68a0660d00d2e19f" [label=""];
  "sha256:39088fc0ca44406240a9ffcd338a02176db2605de06607df68a0660d00d2e19f" -> "sha256:fce7e43a024941cae70d5bac42a4a13a43fc6e0528fcf16038584848f146dcdf" [label=""];
}

