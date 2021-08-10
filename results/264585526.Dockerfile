[app/sources/264585526.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:5ea2a4849042be1ddd13fbc65befa631d281f40823785ba38a8047aef0fb3338" [label="/bin/sh -c apt-get install -y socat build-essential" shape="box"];
  "sha256:5c14912a7a19aa37174ca8f04d16625712cf83c04092f30c9b6e40454aaf219c" [label="/bin/sh -c adduser --disabled-password --gecos '' scv" shape="box"];
  "sha256:a8f54c3331b4a990f4e9bfb4e669a2346d16c31d62453622c320cf3b762b5c89" [label="/bin/sh -c chown -R root:scv /home/scv/" shape="box"];
  "sha256:6b9f5bbcc413e25ea6d28c438fb03df8b6fee883ae74aaeb864292259329bd05" [label="/bin/sh -c chmod 750 /home/scv" shape="box"];
  "sha256:b363d62153e18855c3cd5a431e44cc2c81997983a86749ab318671cbe0aec917" [label="/bin/sh -c chmod 740 /usr/bin/top" shape="box"];
  "sha256:107d1e9547ea71c07e52c589a04730bbc97c7e10fa04c29642ab55d07c1469fa" [label="/bin/sh -c chmod 740 /bin/ps" shape="box"];
  "sha256:b676a1cf43cc6c13f6a67b4c18adfae8d3832d0ff209755b84088f5bc04690b2" [label="/bin/sh -c chmod 740 /usr/bin/pgrep" shape="box"];
  "sha256:83bc3d0e48024ae05c84f86fa7622ba2d9d010d19836fe62c8812e3dd1fefede" [label="/bin/sh -c export TERM=xterm" shape="box"];
  "sha256:22b6f7b908a964115ef8345a54f461b5ad35930c5e11bc7752138abae042ad23" [label="mkdir{path=/home/scv}" shape="note"];
  "sha256:43bb507e376da8c8c878bbee3dfa51b6a691ebdce86ed5a419a1d96f728bc7d9" [label="local://context" shape="ellipse"];
  "sha256:e41152d243637aa13c6c38deabc5f9a43e7e294b0bc608dfd203dc66c8db801f" [label="copy{src=/scv.cpp, dest=/home/scv}" shape="note"];
  "sha256:f24fbc844e8ce3aaf9c675c427584e0e33ed3e277eca32c6578e7dbfc82081dc" [label="copy{src=/flag, dest=/home/scv}" shape="note"];
  "sha256:a06a60e66f30d1d8b0badacb13a51739fa9b008ba85534069af540bf5021f33b" [label="/bin/sh -c chown root:scv /home/scv/flag" shape="box"];
  "sha256:3bd8597d37540ea67b4d529c4f986c5eda15a58bcc683af3af986a826c26a186" [label="/bin/sh -c chmod 440 /home/scv/flag" shape="box"];
  "sha256:1671b9f388acd8ee70da205aade15b7f6d2d148221b07b5ee0be81065d4b8c40" [label="/bin/sh -c g++ -Wall -o scv scv.cpp" shape="box"];
  "sha256:88cf72e2169a61d3b6fb605b5635b94ed4583a825c3ef2f5d0b1c7ccc2528e6d" [label="/bin/sh -c strip -s scv" shape="box"];
  "sha256:8867e772792fcf7e0553e712108c030be0926beb6c837cc1d1b5216827de9a60" [label="/bin/sh -c rm scv.cpp" shape="box"];
  "sha256:efaaf9632bf6c2f103ef0278461eb40c1e438bcb207b14c01e0299cb06965fe3" [label="sha256:efaaf9632bf6c2f103ef0278461eb40c1e438bcb207b14c01e0299cb06965fe3" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" [label=""];
  "sha256:faec321e546652417d48167d09e2a7c3fd30fd0ecec42c9c7db693c18b37458f" -> "sha256:5ea2a4849042be1ddd13fbc65befa631d281f40823785ba38a8047aef0fb3338" [label=""];
  "sha256:5ea2a4849042be1ddd13fbc65befa631d281f40823785ba38a8047aef0fb3338" -> "sha256:5c14912a7a19aa37174ca8f04d16625712cf83c04092f30c9b6e40454aaf219c" [label=""];
  "sha256:5c14912a7a19aa37174ca8f04d16625712cf83c04092f30c9b6e40454aaf219c" -> "sha256:a8f54c3331b4a990f4e9bfb4e669a2346d16c31d62453622c320cf3b762b5c89" [label=""];
  "sha256:a8f54c3331b4a990f4e9bfb4e669a2346d16c31d62453622c320cf3b762b5c89" -> "sha256:6b9f5bbcc413e25ea6d28c438fb03df8b6fee883ae74aaeb864292259329bd05" [label=""];
  "sha256:6b9f5bbcc413e25ea6d28c438fb03df8b6fee883ae74aaeb864292259329bd05" -> "sha256:b363d62153e18855c3cd5a431e44cc2c81997983a86749ab318671cbe0aec917" [label=""];
  "sha256:b363d62153e18855c3cd5a431e44cc2c81997983a86749ab318671cbe0aec917" -> "sha256:107d1e9547ea71c07e52c589a04730bbc97c7e10fa04c29642ab55d07c1469fa" [label=""];
  "sha256:107d1e9547ea71c07e52c589a04730bbc97c7e10fa04c29642ab55d07c1469fa" -> "sha256:b676a1cf43cc6c13f6a67b4c18adfae8d3832d0ff209755b84088f5bc04690b2" [label=""];
  "sha256:b676a1cf43cc6c13f6a67b4c18adfae8d3832d0ff209755b84088f5bc04690b2" -> "sha256:83bc3d0e48024ae05c84f86fa7622ba2d9d010d19836fe62c8812e3dd1fefede" [label=""];
  "sha256:83bc3d0e48024ae05c84f86fa7622ba2d9d010d19836fe62c8812e3dd1fefede" -> "sha256:22b6f7b908a964115ef8345a54f461b5ad35930c5e11bc7752138abae042ad23" [label=""];
  "sha256:22b6f7b908a964115ef8345a54f461b5ad35930c5e11bc7752138abae042ad23" -> "sha256:e41152d243637aa13c6c38deabc5f9a43e7e294b0bc608dfd203dc66c8db801f" [label=""];
  "sha256:43bb507e376da8c8c878bbee3dfa51b6a691ebdce86ed5a419a1d96f728bc7d9" -> "sha256:e41152d243637aa13c6c38deabc5f9a43e7e294b0bc608dfd203dc66c8db801f" [label=""];
  "sha256:e41152d243637aa13c6c38deabc5f9a43e7e294b0bc608dfd203dc66c8db801f" -> "sha256:f24fbc844e8ce3aaf9c675c427584e0e33ed3e277eca32c6578e7dbfc82081dc" [label=""];
  "sha256:43bb507e376da8c8c878bbee3dfa51b6a691ebdce86ed5a419a1d96f728bc7d9" -> "sha256:f24fbc844e8ce3aaf9c675c427584e0e33ed3e277eca32c6578e7dbfc82081dc" [label=""];
  "sha256:f24fbc844e8ce3aaf9c675c427584e0e33ed3e277eca32c6578e7dbfc82081dc" -> "sha256:a06a60e66f30d1d8b0badacb13a51739fa9b008ba85534069af540bf5021f33b" [label=""];
  "sha256:a06a60e66f30d1d8b0badacb13a51739fa9b008ba85534069af540bf5021f33b" -> "sha256:3bd8597d37540ea67b4d529c4f986c5eda15a58bcc683af3af986a826c26a186" [label=""];
  "sha256:3bd8597d37540ea67b4d529c4f986c5eda15a58bcc683af3af986a826c26a186" -> "sha256:1671b9f388acd8ee70da205aade15b7f6d2d148221b07b5ee0be81065d4b8c40" [label=""];
  "sha256:1671b9f388acd8ee70da205aade15b7f6d2d148221b07b5ee0be81065d4b8c40" -> "sha256:88cf72e2169a61d3b6fb605b5635b94ed4583a825c3ef2f5d0b1c7ccc2528e6d" [label=""];
  "sha256:88cf72e2169a61d3b6fb605b5635b94ed4583a825c3ef2f5d0b1c7ccc2528e6d" -> "sha256:8867e772792fcf7e0553e712108c030be0926beb6c837cc1d1b5216827de9a60" [label=""];
  "sha256:8867e772792fcf7e0553e712108c030be0926beb6c837cc1d1b5216827de9a60" -> "sha256:efaaf9632bf6c2f103ef0278461eb40c1e438bcb207b14c01e0299cb06965fe3" [label=""];
}

