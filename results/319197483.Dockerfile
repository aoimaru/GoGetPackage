[app/sources/319197483.Dockerfile]
digraph {
  "sha256:5635f43bea2135a65f8c6b1dd393101734104be55662fe4329800401f8a244cd" [label="docker-image://docker.io/library/swift:3.0.2" shape="ellipse"];
  "sha256:cb46428d782b72d29f5db2a1ab7fd0157bb66ec22d36c8addf0df944f7c69af1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:11be541b5df27da3710d13cb76b2eaa423416e693585ef201def73d4405c5a07" [label="/bin/sh -c apt-get install -qqy build-essential ruby" shape="box"];
  "sha256:4bc6e84b5c2a34bc567f4c811003ff94496b5c3b11d44608fc09b1e99b61872a" [label="/bin/sh -c gem install rake --no-doc" shape="box"];
  "sha256:287329669654e21e92167cac4c85fafdd5a3647c6894e7145616a4e9f51cbe5f" [label="/bin/sh -c apt-get install -qqy zsh gdb" shape="box"];
  "sha256:8ee40760d5ed7cd62a81153c589021be19993a84005c085eeb86040b989f1534" [label="/bin/sh -c gem install pry --no-doc" shape="box"];
  "sha256:4b8c44f6c40e90b180f0c54ec7092470d8434186182dc32365bf917b6b8a7890" [label="sha256:4b8c44f6c40e90b180f0c54ec7092470d8434186182dc32365bf917b6b8a7890" shape="plaintext"];
  "sha256:5635f43bea2135a65f8c6b1dd393101734104be55662fe4329800401f8a244cd" -> "sha256:cb46428d782b72d29f5db2a1ab7fd0157bb66ec22d36c8addf0df944f7c69af1" [label=""];
  "sha256:cb46428d782b72d29f5db2a1ab7fd0157bb66ec22d36c8addf0df944f7c69af1" -> "sha256:11be541b5df27da3710d13cb76b2eaa423416e693585ef201def73d4405c5a07" [label=""];
  "sha256:11be541b5df27da3710d13cb76b2eaa423416e693585ef201def73d4405c5a07" -> "sha256:4bc6e84b5c2a34bc567f4c811003ff94496b5c3b11d44608fc09b1e99b61872a" [label=""];
  "sha256:4bc6e84b5c2a34bc567f4c811003ff94496b5c3b11d44608fc09b1e99b61872a" -> "sha256:287329669654e21e92167cac4c85fafdd5a3647c6894e7145616a4e9f51cbe5f" [label=""];
  "sha256:287329669654e21e92167cac4c85fafdd5a3647c6894e7145616a4e9f51cbe5f" -> "sha256:8ee40760d5ed7cd62a81153c589021be19993a84005c085eeb86040b989f1534" [label=""];
  "sha256:8ee40760d5ed7cd62a81153c589021be19993a84005c085eeb86040b989f1534" -> "sha256:4b8c44f6c40e90b180f0c54ec7092470d8434186182dc32365bf917b6b8a7890" [label=""];
}

