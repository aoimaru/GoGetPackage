[app/sources/200514135.Dockerfile]
digraph {
  "sha256:3e70f1de5a9b2a510a334646961ed7a4d446827ffa420a1baa59ccbf68fb05ff" [label="docker-image://docker.io/library/centos:7.1.1503" shape="ellipse"];
  "sha256:b134afe78c7c3c9ff66b4b65b6c941f99acff3b45b7daab9a55f137f58f53f3c" [label="/bin/sh -c yum -q -y swap -- remove fakesystemd -- install systemd systemd-libs" shape="box"];
  "sha256:15de9854dbbedf6dd0c162054546bf70c17ef9863d9bb6e6c2b7b34a2afb246b" [label="/bin/sh -c yum -q -y install deltarpm" shape="box"];
  "sha256:011c798c0bd465a7e7c99f436ec100d641c42f360b95961aaf250a0a89627dd3" [label="/bin/sh -c yum -q -y install epel-release" shape="box"];
  "sha256:399fc0bc375b7048aa7ffc78f130e88af839ce3b7df1fb9157b74a4a8595c0f9" [label="/bin/sh -c yum -q -y install unzip libunwind gettext libcurl-devel openssl-devel zlib libicu-devel" shape="box"];
  "sha256:a9f11607737b23cab0f35c6d80959842e829046dfa65ff29d34933ee10179a96" [label="/bin/sh -c yum install -y http://mirror.symnds.com/distributions/gf/el/7/plus/x86_64/cmake-3.3.2-1.gf.el7.x86_64.rpm         https://matell.blob.core.windows.net/rpms/clang-3.6.2-1.el7.centos.x86_64.rpm         https://matell.blob.core.windows.net/rpms/clang-libs-3.6.2-1.el7.centos.x86_64.rpm         https://matell.blob.core.windows.net/rpms/lldb-3.6.2-1.el7.centos.x86_64.rpm         https://matell.blob.core.windows.net/rpms/lldb-devel-3.6.2-1.el7.centos.x86_64.rpm         https://matell.blob.core.windows.net/rpms/llvm-3.6.2-1.el7.centos.x86_64.rpm         https://matell.blob.core.windows.net/rpms/llvm-libs-3.6.2-1.el7.centos.x86_64.rpm         which         make" shape="box"];
  "sha256:3e2c10218c49ff97f49d91ae01871030b73ab3bed5e3a4704f610f972096de22" [label="/bin/sh -c yum -q -y install tar git" shape="box"];
  "sha256:e46f7352f8a22637eada9668dbeafbe379a055dec124c69ca18a6d579f3d4997" [label="/bin/sh -c update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100" shape="box"];
  "sha256:759a4b524e036788615c08cce3dfb7b50f5bcb1f32d7ca24732e40ab07865aca" [label="/bin/sh -c update-alternatives --set c++ /usr/bin/clang++" shape="box"];
  "sha256:d59c90d3af5c3a3f07fb9aba52aa742024a0a0af0ba81a58d6608bf24303e269" [label="/bin/sh -c yum -q -y install sudo" shape="box"];
  "sha256:ec05df1a45040777b14dd4745e028af9eca511a7f3aed2622d60969f2a260f8b" [label="/bin/sh -c useradd -m code_executor -u ${USER_ID} -g root" shape="box"];
  "sha256:0673820bf3cf6309fff0f7c2c863a362ed69e7aad0fc1c63ce3c7c8c0da56310" [label="/bin/sh -c echo 'code_executor ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:93e0c359909c72a9236bdde0c87e9d663286a0870b76e9a3fead6bfdf17fa9aa" [label="/bin/sh -c chmod -R a+rwx /usr/local" shape="box"];
  "sha256:13776bd9a8ea8f9af632ab3f61f94b2f2fe14514a43890a91f03d62ca276026a" [label="/bin/sh -c chmod -R a+rwx /home" shape="box"];
  "sha256:9b0fe0d7b71ef6f29c1fe239172a6f6208465d29001e62ae1d9bd4bb066cc01f" [label="/bin/sh -c chmod -R 755 /usr/bin/sudo" shape="box"];
  "sha256:a597b18e1b5a486a1caf674230f5e23a8f1911c4d9b1823216b760ae9a325d7e" [label="mkdir{path=/opt/code}" shape="note"];
  "sha256:a54584665f812d5851c5e61bd75eaff39b8bb82404c8b60a41e3cfab4dc501ee" [label="sha256:a54584665f812d5851c5e61bd75eaff39b8bb82404c8b60a41e3cfab4dc501ee" shape="plaintext"];
  "sha256:3e70f1de5a9b2a510a334646961ed7a4d446827ffa420a1baa59ccbf68fb05ff" -> "sha256:b134afe78c7c3c9ff66b4b65b6c941f99acff3b45b7daab9a55f137f58f53f3c" [label=""];
  "sha256:b134afe78c7c3c9ff66b4b65b6c941f99acff3b45b7daab9a55f137f58f53f3c" -> "sha256:15de9854dbbedf6dd0c162054546bf70c17ef9863d9bb6e6c2b7b34a2afb246b" [label=""];
  "sha256:15de9854dbbedf6dd0c162054546bf70c17ef9863d9bb6e6c2b7b34a2afb246b" -> "sha256:011c798c0bd465a7e7c99f436ec100d641c42f360b95961aaf250a0a89627dd3" [label=""];
  "sha256:011c798c0bd465a7e7c99f436ec100d641c42f360b95961aaf250a0a89627dd3" -> "sha256:399fc0bc375b7048aa7ffc78f130e88af839ce3b7df1fb9157b74a4a8595c0f9" [label=""];
  "sha256:399fc0bc375b7048aa7ffc78f130e88af839ce3b7df1fb9157b74a4a8595c0f9" -> "sha256:a9f11607737b23cab0f35c6d80959842e829046dfa65ff29d34933ee10179a96" [label=""];
  "sha256:a9f11607737b23cab0f35c6d80959842e829046dfa65ff29d34933ee10179a96" -> "sha256:3e2c10218c49ff97f49d91ae01871030b73ab3bed5e3a4704f610f972096de22" [label=""];
  "sha256:3e2c10218c49ff97f49d91ae01871030b73ab3bed5e3a4704f610f972096de22" -> "sha256:e46f7352f8a22637eada9668dbeafbe379a055dec124c69ca18a6d579f3d4997" [label=""];
  "sha256:e46f7352f8a22637eada9668dbeafbe379a055dec124c69ca18a6d579f3d4997" -> "sha256:759a4b524e036788615c08cce3dfb7b50f5bcb1f32d7ca24732e40ab07865aca" [label=""];
  "sha256:759a4b524e036788615c08cce3dfb7b50f5bcb1f32d7ca24732e40ab07865aca" -> "sha256:d59c90d3af5c3a3f07fb9aba52aa742024a0a0af0ba81a58d6608bf24303e269" [label=""];
  "sha256:d59c90d3af5c3a3f07fb9aba52aa742024a0a0af0ba81a58d6608bf24303e269" -> "sha256:ec05df1a45040777b14dd4745e028af9eca511a7f3aed2622d60969f2a260f8b" [label=""];
  "sha256:ec05df1a45040777b14dd4745e028af9eca511a7f3aed2622d60969f2a260f8b" -> "sha256:0673820bf3cf6309fff0f7c2c863a362ed69e7aad0fc1c63ce3c7c8c0da56310" [label=""];
  "sha256:0673820bf3cf6309fff0f7c2c863a362ed69e7aad0fc1c63ce3c7c8c0da56310" -> "sha256:93e0c359909c72a9236bdde0c87e9d663286a0870b76e9a3fead6bfdf17fa9aa" [label=""];
  "sha256:93e0c359909c72a9236bdde0c87e9d663286a0870b76e9a3fead6bfdf17fa9aa" -> "sha256:13776bd9a8ea8f9af632ab3f61f94b2f2fe14514a43890a91f03d62ca276026a" [label=""];
  "sha256:13776bd9a8ea8f9af632ab3f61f94b2f2fe14514a43890a91f03d62ca276026a" -> "sha256:9b0fe0d7b71ef6f29c1fe239172a6f6208465d29001e62ae1d9bd4bb066cc01f" [label=""];
  "sha256:9b0fe0d7b71ef6f29c1fe239172a6f6208465d29001e62ae1d9bd4bb066cc01f" -> "sha256:a597b18e1b5a486a1caf674230f5e23a8f1911c4d9b1823216b760ae9a325d7e" [label=""];
  "sha256:a597b18e1b5a486a1caf674230f5e23a8f1911c4d9b1823216b760ae9a325d7e" -> "sha256:a54584665f812d5851c5e61bd75eaff39b8bb82404c8b60a41e3cfab4dc501ee" [label=""];
}

