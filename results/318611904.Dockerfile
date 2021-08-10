[app/sources/318611904.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:089318e4d12727a57c3763469a47bc25a701b6a77f4087fa9156cfbfd625d111" [label="mkdir{path=/usr/share/nginx/html}" shape="note"];
  "sha256:8a66015059e38ba1f03783fe106ce3674ed5e6dab6bf2e3de55afc83e088d9b2" [label="/bin/sh -c apt-get update   && apt-get install -y vim   && apt-get clean   && echo set encoding=utf-8 > /root/.vimrc" shape="box"];
  "sha256:1a5dd95592b4f393664575fc233edceeced768ab652e92c7aec06d1054fee116" [label="local://context" shape="ellipse"];
  "sha256:4781585846c5f94d5d2bcbdcdc5b20580a7a0cd85f83f309883b32624399c775" [label="copy{src=/root-index.html, dest=/usr/share/nginx/html/index.html}" shape="note"];
  "sha256:2f19c31cf117725e350ba222766e46061ba1701039adc4e87c66838c516fbcc8" [label="copy{src=/volume-index.html, dest=/usr/share/nginx/html/volume/index.html}" shape="note"];
  "sha256:abb48c9b2fc3fb638e308e36895e784577467522ebd9dd1af5dd56b4a7d64cb1" [label="sha256:abb48c9b2fc3fb638e308e36895e784577467522ebd9dd1af5dd56b4a7d64cb1" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:089318e4d12727a57c3763469a47bc25a701b6a77f4087fa9156cfbfd625d111" [label=""];
  "sha256:089318e4d12727a57c3763469a47bc25a701b6a77f4087fa9156cfbfd625d111" -> "sha256:8a66015059e38ba1f03783fe106ce3674ed5e6dab6bf2e3de55afc83e088d9b2" [label=""];
  "sha256:8a66015059e38ba1f03783fe106ce3674ed5e6dab6bf2e3de55afc83e088d9b2" -> "sha256:4781585846c5f94d5d2bcbdcdc5b20580a7a0cd85f83f309883b32624399c775" [label=""];
  "sha256:1a5dd95592b4f393664575fc233edceeced768ab652e92c7aec06d1054fee116" -> "sha256:4781585846c5f94d5d2bcbdcdc5b20580a7a0cd85f83f309883b32624399c775" [label=""];
  "sha256:4781585846c5f94d5d2bcbdcdc5b20580a7a0cd85f83f309883b32624399c775" -> "sha256:2f19c31cf117725e350ba222766e46061ba1701039adc4e87c66838c516fbcc8" [label=""];
  "sha256:1a5dd95592b4f393664575fc233edceeced768ab652e92c7aec06d1054fee116" -> "sha256:2f19c31cf117725e350ba222766e46061ba1701039adc4e87c66838c516fbcc8" [label=""];
  "sha256:2f19c31cf117725e350ba222766e46061ba1701039adc4e87c66838c516fbcc8" -> "sha256:abb48c9b2fc3fb638e308e36895e784577467522ebd9dd1af5dd56b4a7d64cb1" [label=""];
}

