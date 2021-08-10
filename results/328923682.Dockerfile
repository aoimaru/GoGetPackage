[app/sources/328923682.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:85ffc0095c90550b7b78a8b803875b17325b065f4d71da520fdfbfc9a19d8cd5" [label="/bin/sh -c apt update && apt install -y \tapt-utils \tgcc \tgcc-multilib \tbuild-essential \tpython \tpython-pip \tsocat" shape="box"];
  "sha256:3e7555938ec5408d071c99e6dab8f18800fa0eebc943d72f19db143786a69626" [label="local://context" shape="ellipse"];
  "sha256:2d9de4e9e8616b5faf7df55b6ffbddb2f9336a4459934d784291055541b75b22" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:97168c856737567d1f5689e431770eae62d48587a651efcfd01c5078db2aafc1" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ec10763c4cfa1187a730e7d18a60388e01609c5d41ff90917b2ac7da005bca51" [label="sha256:ec10763c4cfa1187a730e7d18a60388e01609c5d41ff90917b2ac7da005bca51" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:85ffc0095c90550b7b78a8b803875b17325b065f4d71da520fdfbfc9a19d8cd5" [label=""];
  "sha256:85ffc0095c90550b7b78a8b803875b17325b065f4d71da520fdfbfc9a19d8cd5" -> "sha256:2d9de4e9e8616b5faf7df55b6ffbddb2f9336a4459934d784291055541b75b22" [label=""];
  "sha256:3e7555938ec5408d071c99e6dab8f18800fa0eebc943d72f19db143786a69626" -> "sha256:2d9de4e9e8616b5faf7df55b6ffbddb2f9336a4459934d784291055541b75b22" [label=""];
  "sha256:2d9de4e9e8616b5faf7df55b6ffbddb2f9336a4459934d784291055541b75b22" -> "sha256:97168c856737567d1f5689e431770eae62d48587a651efcfd01c5078db2aafc1" [label=""];
  "sha256:97168c856737567d1f5689e431770eae62d48587a651efcfd01c5078db2aafc1" -> "sha256:ec10763c4cfa1187a730e7d18a60388e01609c5d41ff90917b2ac7da005bca51" [label=""];
}

