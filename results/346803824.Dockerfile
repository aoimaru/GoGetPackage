[app/sources/346803824.Dockerfile]
digraph {
  "sha256:68fc5cc2ac491385a92561bc4e6e8f79335a16c8274e9206836874abec255dcb" [label="docker-image://docker.io/prestashop/base:7.0-fpm" shape="ellipse"];
  "sha256:716c724a6900687fddcc1fc05a37526e511b5080cf9d5067b4751520e8a1fa9c" [label="https://www.prestashop.com/download/old/prestashop_1.6.1.24.zip" shape="ellipse"];
  "sha256:30df074acd56a8eb1bf5159189bed2bb88c239982a3c6a4a2e5de9605fcb9610" [label="copy{src=/prestashop_1.6.1.24.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:b1aefcb9dcb728f371196aa670a5281d8e8ba65ba3b174abb35c9a77269e4aa0" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:738221942fc2261d2d7535ee89798fbda88092ae25ac4d6beae3950a1c9c114f" [label="sha256:738221942fc2261d2d7535ee89798fbda88092ae25ac4d6beae3950a1c9c114f" shape="plaintext"];
  "sha256:68fc5cc2ac491385a92561bc4e6e8f79335a16c8274e9206836874abec255dcb" -> "sha256:30df074acd56a8eb1bf5159189bed2bb88c239982a3c6a4a2e5de9605fcb9610" [label=""];
  "sha256:716c724a6900687fddcc1fc05a37526e511b5080cf9d5067b4751520e8a1fa9c" -> "sha256:30df074acd56a8eb1bf5159189bed2bb88c239982a3c6a4a2e5de9605fcb9610" [label=""];
  "sha256:30df074acd56a8eb1bf5159189bed2bb88c239982a3c6a4a2e5de9605fcb9610" -> "sha256:b1aefcb9dcb728f371196aa670a5281d8e8ba65ba3b174abb35c9a77269e4aa0" [label=""];
  "sha256:b1aefcb9dcb728f371196aa670a5281d8e8ba65ba3b174abb35c9a77269e4aa0" -> "sha256:738221942fc2261d2d7535ee89798fbda88092ae25ac4d6beae3950a1c9c114f" [label=""];
}

