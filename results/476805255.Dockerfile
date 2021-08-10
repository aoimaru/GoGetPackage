[app/sources/476805255.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:58a95935a7b03c75743fce9a6f59c28c30daf05e0368e5be00d59682af31b9b3" [label="/bin/sh -c apt-get update &&     apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git" shape="box"];
  "sha256:f56c1a36121bf4691e7e219b97ece914bee9fb403946acb42f0847bfbd78b803" [label="/bin/sh -c pip install shadowsocks==2.8.2" shape="box"];
  "sha256:d8a241e80e7b1e834be9b8906b4ba64736fd4436993f709c89fed2eab11bfefb" [label="/bin/sh -c git clone https://github.com/snooda/net-speeder.git net-speeder" shape="box"];
  "sha256:9c3f674834a003047208e07ceb2072a86cffb538dc5d25df477572543b27a8a5" [label="mkdir{path=/net-speeder}" shape="note"];
  "sha256:a6c44cc9bad7ab5aeca27ae6bdfc145c4e93e053636aaeb425b68aa651c8ff5c" [label="/bin/sh -c sh build.sh" shape="box"];
  "sha256:6d6ee2eab3ad497c46e7c76daa8336216874fdeea7f1c016aeef6a65e65cad4a" [label="/bin/sh -c mv net_speeder /usr/local/bin/" shape="box"];
  "sha256:5b1874c5c1bbf68ad7a4a4fc1224233a70bc21d7f853b815699acc8ccda04be8" [label="local://context" shape="ellipse"];
  "sha256:d650fcd32dcd38f247f14dc02e24e90699d991142e291b098c311b34a2ac1c69" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:f1286c188492593f5f344f712dedfc81e02ff0ae9cf9a0d148447b761b76382a" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:fbd069b0fe1de2790dd38673f9f54d81432f37a57ed14cfc63ed912786d48483" [label="/bin/sh -c chmod +x /usr/local/bin/net_speeder" shape="box"];
  "sha256:d84f623f664458784c0259a2a5488fe26647d3fbafc1d77fc675ec29d212486f" [label="sha256:d84f623f664458784c0259a2a5488fe26647d3fbafc1d77fc675ec29d212486f" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:58a95935a7b03c75743fce9a6f59c28c30daf05e0368e5be00d59682af31b9b3" [label=""];
  "sha256:58a95935a7b03c75743fce9a6f59c28c30daf05e0368e5be00d59682af31b9b3" -> "sha256:f56c1a36121bf4691e7e219b97ece914bee9fb403946acb42f0847bfbd78b803" [label=""];
  "sha256:f56c1a36121bf4691e7e219b97ece914bee9fb403946acb42f0847bfbd78b803" -> "sha256:d8a241e80e7b1e834be9b8906b4ba64736fd4436993f709c89fed2eab11bfefb" [label=""];
  "sha256:d8a241e80e7b1e834be9b8906b4ba64736fd4436993f709c89fed2eab11bfefb" -> "sha256:9c3f674834a003047208e07ceb2072a86cffb538dc5d25df477572543b27a8a5" [label=""];
  "sha256:9c3f674834a003047208e07ceb2072a86cffb538dc5d25df477572543b27a8a5" -> "sha256:a6c44cc9bad7ab5aeca27ae6bdfc145c4e93e053636aaeb425b68aa651c8ff5c" [label=""];
  "sha256:a6c44cc9bad7ab5aeca27ae6bdfc145c4e93e053636aaeb425b68aa651c8ff5c" -> "sha256:6d6ee2eab3ad497c46e7c76daa8336216874fdeea7f1c016aeef6a65e65cad4a" [label=""];
  "sha256:6d6ee2eab3ad497c46e7c76daa8336216874fdeea7f1c016aeef6a65e65cad4a" -> "sha256:d650fcd32dcd38f247f14dc02e24e90699d991142e291b098c311b34a2ac1c69" [label=""];
  "sha256:5b1874c5c1bbf68ad7a4a4fc1224233a70bc21d7f853b815699acc8ccda04be8" -> "sha256:d650fcd32dcd38f247f14dc02e24e90699d991142e291b098c311b34a2ac1c69" [label=""];
  "sha256:d650fcd32dcd38f247f14dc02e24e90699d991142e291b098c311b34a2ac1c69" -> "sha256:f1286c188492593f5f344f712dedfc81e02ff0ae9cf9a0d148447b761b76382a" [label=""];
  "sha256:f1286c188492593f5f344f712dedfc81e02ff0ae9cf9a0d148447b761b76382a" -> "sha256:fbd069b0fe1de2790dd38673f9f54d81432f37a57ed14cfc63ed912786d48483" [label=""];
  "sha256:fbd069b0fe1de2790dd38673f9f54d81432f37a57ed14cfc63ed912786d48483" -> "sha256:d84f623f664458784c0259a2a5488fe26647d3fbafc1d77fc675ec29d212486f" [label=""];
}

