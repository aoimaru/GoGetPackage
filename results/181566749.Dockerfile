[app/sources/181566749.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6e57093d02b32abda94d5cc7e5e575476e67fec6f305b47722a15c3ca017110d" [label="/bin/sh -c apt-get update --quiet > /dev/null &&   apt-get install --assume-yes --force-yes -qq   python-setuptools python-dev build-essential   python-pip libffi-dev libssl-dev ssh-client &&   apt-get clean &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:db3537025294529ef8fd8b000607f3ec5366c9bb7f815562ba8c575e825a19ea" [label="/bin/sh -c pip install butterfly &&     pip install libsass" shape="box"];
  "sha256:fd6bb75a90ff6122df9499391554a188ddcdacd3668e8575ba265013a8960b73" [label="local://context" shape="ellipse"];
  "sha256:751101e1ec77f141eeb51ba1d90b1f4edde3b001dd20b59b05c3a2bbd4effb26" [label="copy{src=/bin/init.sh, dest=/init.sh}" shape="note"];
  "sha256:38d644c1d822f717b59f04501102c53f254b91065f3af7ad4e6526efb835a335" [label="/bin/sh -c chmod +x /init.sh" shape="box"];
  "sha256:399eb9069ded42db22ca08a8cfd34543e17532081e6ba9c85bf3dbc3bbc9c406" [label="sha256:399eb9069ded42db22ca08a8cfd34543e17532081e6ba9c85bf3dbc3bbc9c406" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:6e57093d02b32abda94d5cc7e5e575476e67fec6f305b47722a15c3ca017110d" [label=""];
  "sha256:6e57093d02b32abda94d5cc7e5e575476e67fec6f305b47722a15c3ca017110d" -> "sha256:db3537025294529ef8fd8b000607f3ec5366c9bb7f815562ba8c575e825a19ea" [label=""];
  "sha256:db3537025294529ef8fd8b000607f3ec5366c9bb7f815562ba8c575e825a19ea" -> "sha256:751101e1ec77f141eeb51ba1d90b1f4edde3b001dd20b59b05c3a2bbd4effb26" [label=""];
  "sha256:fd6bb75a90ff6122df9499391554a188ddcdacd3668e8575ba265013a8960b73" -> "sha256:751101e1ec77f141eeb51ba1d90b1f4edde3b001dd20b59b05c3a2bbd4effb26" [label=""];
  "sha256:751101e1ec77f141eeb51ba1d90b1f4edde3b001dd20b59b05c3a2bbd4effb26" -> "sha256:38d644c1d822f717b59f04501102c53f254b91065f3af7ad4e6526efb835a335" [label=""];
  "sha256:38d644c1d822f717b59f04501102c53f254b91065f3af7ad4e6526efb835a335" -> "sha256:399eb9069ded42db22ca08a8cfd34543e17532081e6ba9c85bf3dbc3bbc9c406" [label=""];
}

