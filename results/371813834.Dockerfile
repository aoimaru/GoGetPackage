[app/sources/371813834.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c60dc7594c4ceb9f5722bc53a45348668d9e96e70ca2607f56f157cd29c99faf" [label="/bin/sh -c export DEBIAN_FRONTEND='noninteractive' &&     apt-get update -qqy &&     apt-get install --no-install-recommends -qqy         openvpn         python         squid         squidview         supervisor         wget         $(apt-get -s dist-upgrade|awk '/^Inst.*ecurity/ {print $2}')     &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:47b6347bb7961b944152636d52eefac4299ea0ccba3e27d937797e77bf5dc54c" [label="local://context" shape="ellipse"];
  "sha256:70186a5dfdb25bd3baf25c89e19e67494995792d7d0d54d3f8788c4d261166df" [label="copy{src=/update-resolv-conf, dest=/etc/openvpn/update-resolv-conf}" shape="note"];
  "sha256:3a8d3f4e0568257b205324ffbc21128f602b79e7018e25a9f1b5f5b2fdfa5941" [label="copy{src=/openvpn-disconnect, dest=/usr/local/bin/openvpn-disconnect}" shape="note"];
  "sha256:1d19c9179341f491a3ca566a60c54724e3793f718c44603a41a68631c60500d7" [label="/bin/sh -c chmod +x /etc/openvpn/update-resolv-conf && chmod +x /usr/local/bin/openvpn-disconnect" shape="box"];
  "sha256:fdaa7586616d3abb6e5f5509f34d33f49964d88c17574603db49409b55090b3c" [label="/bin/sh -c squid3 -z -F" shape="box"];
  "sha256:e8052656703335db6f1c22217e04af0bbef8a9d866b03703521bf2f4653275e8" [label="copy{src=/squid.conf, dest=/etc/squid/squid.conf}" shape="note"];
  "sha256:9f949babb7627410853c3c924aab1bd2878e2e965af71143988a10e4a7a4072e" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:fb697f49e2e6523bac76f294008ebe695b97954cb038af11baaf5bedb9af38e2" [label="sha256:fb697f49e2e6523bac76f294008ebe695b97954cb038af11baaf5bedb9af38e2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c60dc7594c4ceb9f5722bc53a45348668d9e96e70ca2607f56f157cd29c99faf" [label=""];
  "sha256:c60dc7594c4ceb9f5722bc53a45348668d9e96e70ca2607f56f157cd29c99faf" -> "sha256:70186a5dfdb25bd3baf25c89e19e67494995792d7d0d54d3f8788c4d261166df" [label=""];
  "sha256:47b6347bb7961b944152636d52eefac4299ea0ccba3e27d937797e77bf5dc54c" -> "sha256:70186a5dfdb25bd3baf25c89e19e67494995792d7d0d54d3f8788c4d261166df" [label=""];
  "sha256:70186a5dfdb25bd3baf25c89e19e67494995792d7d0d54d3f8788c4d261166df" -> "sha256:3a8d3f4e0568257b205324ffbc21128f602b79e7018e25a9f1b5f5b2fdfa5941" [label=""];
  "sha256:47b6347bb7961b944152636d52eefac4299ea0ccba3e27d937797e77bf5dc54c" -> "sha256:3a8d3f4e0568257b205324ffbc21128f602b79e7018e25a9f1b5f5b2fdfa5941" [label=""];
  "sha256:3a8d3f4e0568257b205324ffbc21128f602b79e7018e25a9f1b5f5b2fdfa5941" -> "sha256:1d19c9179341f491a3ca566a60c54724e3793f718c44603a41a68631c60500d7" [label=""];
  "sha256:1d19c9179341f491a3ca566a60c54724e3793f718c44603a41a68631c60500d7" -> "sha256:fdaa7586616d3abb6e5f5509f34d33f49964d88c17574603db49409b55090b3c" [label=""];
  "sha256:fdaa7586616d3abb6e5f5509f34d33f49964d88c17574603db49409b55090b3c" -> "sha256:e8052656703335db6f1c22217e04af0bbef8a9d866b03703521bf2f4653275e8" [label=""];
  "sha256:47b6347bb7961b944152636d52eefac4299ea0ccba3e27d937797e77bf5dc54c" -> "sha256:e8052656703335db6f1c22217e04af0bbef8a9d866b03703521bf2f4653275e8" [label=""];
  "sha256:e8052656703335db6f1c22217e04af0bbef8a9d866b03703521bf2f4653275e8" -> "sha256:9f949babb7627410853c3c924aab1bd2878e2e965af71143988a10e4a7a4072e" [label=""];
  "sha256:47b6347bb7961b944152636d52eefac4299ea0ccba3e27d937797e77bf5dc54c" -> "sha256:9f949babb7627410853c3c924aab1bd2878e2e965af71143988a10e4a7a4072e" [label=""];
  "sha256:9f949babb7627410853c3c924aab1bd2878e2e965af71143988a10e4a7a4072e" -> "sha256:fb697f49e2e6523bac76f294008ebe695b97954cb038af11baaf5bedb9af38e2" [label=""];
}

