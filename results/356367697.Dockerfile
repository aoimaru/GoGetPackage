[app/sources/356367697.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:7446e5562d82ec51ad6f2bfcd1caed586321bb65a7fc44455bb09c8abe89ac93" [label="/bin/sh -c yum update -y; \tyum install -y epel-release which git tar java-1.8.0-openjdk libyaml-devel openssh-server autoconf gcc-c++ readline-devel zlib-devel libffi-devel openssl-devel automake libtool bison sqlite-devel; \tyum install -y nodejs;  \tyum clean all; \tuseradd builder; \techo \"builder:builder\" | chpasswd;" shape="box"];
  "sha256:a8248a92baa95e2671b6205add091b1d413e888b7901bad2cdad9b1143d68e22" [label="local://context" shape="ellipse"];
  "sha256:7a9286f145c0216d4a164bb6fabe7ab5e356aa2eab200b5ac66d0b9ccbde765a" [label="copy{src=/bin/start.sh, dest=/home/builder/}" shape="note"];
  "sha256:2f6317c374781b8fc80cc53255bf8772e1108b36c2149510c5b39e7d12540000" [label="/bin/sh -c echo \"export BUNDLE_PATH=/home/builder/bundle\" >> /home/builder/.bash_profile;     ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '';     chown builder:builder /home/builder/start.sh;     curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash; \tbash -c \"source /root/.nvm/install.sh\"; \tgpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3; \tcurl -sSL https://get.rvm.io | bash -s stable; \tsource /etc/profile.d/rvm.sh;" shape="box"];
  "sha256:90fcd39e5afffb464cd980ede2e717f0682796fd22400f81d5998f5939521031" [label="/bin/sh -c /bin/bash -l -c \"rvm requirements\";" shape="box"];
  "sha256:3c7fe7915a776e38bd10f062107347c99f968afd8f110fa2309010e65d4bcc06" [label="/bin/sh -c /bin/bash -l -c \"rvm install 2.3.0\";" shape="box"];
  "sha256:b21ea438ce9f71e84cffb0b4d340af112f6fa3b788cdf9ad3633a628734fe094" [label="/bin/sh -c /bin/bash -l -c \"rvm use 2.3.0\";" shape="box"];
  "sha256:dd4cd453d5177a204f3ddad467d5e9b721c0f7a77d989db37b811150bd7b9158" [label="/bin/sh -c /bin/bash -l -c \"rvm rubygems latest\";" shape="box"];
  "sha256:88aaba9a6a0288d100067066b6ba232dc80b8db971c762532b6337d1416e9945" [label="/bin/sh -c /bin/bash -l -c \"gem install bundler\";" shape="box"];
  "sha256:edbfbadb5f2180bcad0088573eaf9dffb1c5b5196a1ba8733755abd4c59dfdc8" [label="mkdir{path=/home/builder}" shape="note"];
  "sha256:5ea73099a41e02aa01ba51dca9e4ddcc295e84147730115e9e9147e0aadcf71f" [label="sha256:5ea73099a41e02aa01ba51dca9e4ddcc295e84147730115e9e9147e0aadcf71f" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:7446e5562d82ec51ad6f2bfcd1caed586321bb65a7fc44455bb09c8abe89ac93" [label=""];
  "sha256:7446e5562d82ec51ad6f2bfcd1caed586321bb65a7fc44455bb09c8abe89ac93" -> "sha256:7a9286f145c0216d4a164bb6fabe7ab5e356aa2eab200b5ac66d0b9ccbde765a" [label=""];
  "sha256:a8248a92baa95e2671b6205add091b1d413e888b7901bad2cdad9b1143d68e22" -> "sha256:7a9286f145c0216d4a164bb6fabe7ab5e356aa2eab200b5ac66d0b9ccbde765a" [label=""];
  "sha256:7a9286f145c0216d4a164bb6fabe7ab5e356aa2eab200b5ac66d0b9ccbde765a" -> "sha256:2f6317c374781b8fc80cc53255bf8772e1108b36c2149510c5b39e7d12540000" [label=""];
  "sha256:2f6317c374781b8fc80cc53255bf8772e1108b36c2149510c5b39e7d12540000" -> "sha256:90fcd39e5afffb464cd980ede2e717f0682796fd22400f81d5998f5939521031" [label=""];
  "sha256:90fcd39e5afffb464cd980ede2e717f0682796fd22400f81d5998f5939521031" -> "sha256:3c7fe7915a776e38bd10f062107347c99f968afd8f110fa2309010e65d4bcc06" [label=""];
  "sha256:3c7fe7915a776e38bd10f062107347c99f968afd8f110fa2309010e65d4bcc06" -> "sha256:b21ea438ce9f71e84cffb0b4d340af112f6fa3b788cdf9ad3633a628734fe094" [label=""];
  "sha256:b21ea438ce9f71e84cffb0b4d340af112f6fa3b788cdf9ad3633a628734fe094" -> "sha256:dd4cd453d5177a204f3ddad467d5e9b721c0f7a77d989db37b811150bd7b9158" [label=""];
  "sha256:dd4cd453d5177a204f3ddad467d5e9b721c0f7a77d989db37b811150bd7b9158" -> "sha256:88aaba9a6a0288d100067066b6ba232dc80b8db971c762532b6337d1416e9945" [label=""];
  "sha256:88aaba9a6a0288d100067066b6ba232dc80b8db971c762532b6337d1416e9945" -> "sha256:edbfbadb5f2180bcad0088573eaf9dffb1c5b5196a1ba8733755abd4c59dfdc8" [label=""];
  "sha256:edbfbadb5f2180bcad0088573eaf9dffb1c5b5196a1ba8733755abd4c59dfdc8" -> "sha256:5ea73099a41e02aa01ba51dca9e4ddcc295e84147730115e9e9147e0aadcf71f" [label=""];
}

