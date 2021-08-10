[app/sources/341669833.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b319f7556ae9ecdd55ef3e6a5a0359d030d59996bbed74303755185e31aadf1b" [label="local://context" shape="ellipse"];
  "sha256:20f65c96cb91d3a9ef17a0c68b7ec3f28460da7622586e7b9fcc8f18d01962ee" [label="copy{src=/install/ubuntu_install_core.sh, dest=/install/}" shape="note"];
  "sha256:6580d9284b24f091d7b5aa42ad7237a2a20972266f3f82aa50ed4975ff53d910" [label="/bin/sh -c /install/ubuntu_install_core.sh" shape="box"];
  "sha256:c7fbcd52eb251ed30eabd0f6b617884986e164869859480df62cacf76b075490" [label="copy{src=/install/ubuntu_install_python.sh, dest=/install/}" shape="note"];
  "sha256:c14ba351919c69d4904bf92e1c55bc8fc8df04751d6a510d4c676120646b92ee" [label="/bin/sh -c /install/ubuntu_install_python.sh" shape="box"];
  "sha256:2810452c41d248373d932488e97d3f6ce8df49ae04c4b56bc09a8966e641dc9a" [label="copy{src=/install/ubuntu_install_scala.sh, dest=/install/}" shape="note"];
  "sha256:27cc58cee0414de28cfd7ed16fc0d933eee29b5e839ea8be8445aa5672039bf9" [label="/bin/sh -c /install/ubuntu_install_scala.sh" shape="box"];
  "sha256:123272bb654bb9581bcf6af6d981179e9f79042014973f082eec741de60693ea" [label="/bin/sh -c wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.deb &&     dpkg -i scala-2.11.8.deb && rm scala-2.11.8.deb" shape="box"];
  "sha256:a0ef7851e36ab612c17adfa40d2da0d48e8d135d077e55243c0131b378de8fff" [label="/bin/sh -c apt-get install -y doxygen libatlas-base-dev graphviz pandoc" shape="box"];
  "sha256:01b318ec0760aea1bcaf1e172340f9f4d93ac3015b7dc56c878d4faf27222abe" [label="/bin/sh -c pip install sphinx==1.3.5 CommonMark==0.5.4 breathe mock recommonmark pypandoc beautifulsoup4" shape="box"];
  "sha256:a1b95b7ab56953c8e800d0c079242712983ba914bcf0652040e5b6e9881a96fd" [label="sha256:a1b95b7ab56953c8e800d0c079242712983ba914bcf0652040e5b6e9881a96fd" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:20f65c96cb91d3a9ef17a0c68b7ec3f28460da7622586e7b9fcc8f18d01962ee" [label=""];
  "sha256:b319f7556ae9ecdd55ef3e6a5a0359d030d59996bbed74303755185e31aadf1b" -> "sha256:20f65c96cb91d3a9ef17a0c68b7ec3f28460da7622586e7b9fcc8f18d01962ee" [label=""];
  "sha256:20f65c96cb91d3a9ef17a0c68b7ec3f28460da7622586e7b9fcc8f18d01962ee" -> "sha256:6580d9284b24f091d7b5aa42ad7237a2a20972266f3f82aa50ed4975ff53d910" [label=""];
  "sha256:6580d9284b24f091d7b5aa42ad7237a2a20972266f3f82aa50ed4975ff53d910" -> "sha256:c7fbcd52eb251ed30eabd0f6b617884986e164869859480df62cacf76b075490" [label=""];
  "sha256:b319f7556ae9ecdd55ef3e6a5a0359d030d59996bbed74303755185e31aadf1b" -> "sha256:c7fbcd52eb251ed30eabd0f6b617884986e164869859480df62cacf76b075490" [label=""];
  "sha256:c7fbcd52eb251ed30eabd0f6b617884986e164869859480df62cacf76b075490" -> "sha256:c14ba351919c69d4904bf92e1c55bc8fc8df04751d6a510d4c676120646b92ee" [label=""];
  "sha256:c14ba351919c69d4904bf92e1c55bc8fc8df04751d6a510d4c676120646b92ee" -> "sha256:2810452c41d248373d932488e97d3f6ce8df49ae04c4b56bc09a8966e641dc9a" [label=""];
  "sha256:b319f7556ae9ecdd55ef3e6a5a0359d030d59996bbed74303755185e31aadf1b" -> "sha256:2810452c41d248373d932488e97d3f6ce8df49ae04c4b56bc09a8966e641dc9a" [label=""];
  "sha256:2810452c41d248373d932488e97d3f6ce8df49ae04c4b56bc09a8966e641dc9a" -> "sha256:27cc58cee0414de28cfd7ed16fc0d933eee29b5e839ea8be8445aa5672039bf9" [label=""];
  "sha256:27cc58cee0414de28cfd7ed16fc0d933eee29b5e839ea8be8445aa5672039bf9" -> "sha256:123272bb654bb9581bcf6af6d981179e9f79042014973f082eec741de60693ea" [label=""];
  "sha256:123272bb654bb9581bcf6af6d981179e9f79042014973f082eec741de60693ea" -> "sha256:a0ef7851e36ab612c17adfa40d2da0d48e8d135d077e55243c0131b378de8fff" [label=""];
  "sha256:a0ef7851e36ab612c17adfa40d2da0d48e8d135d077e55243c0131b378de8fff" -> "sha256:01b318ec0760aea1bcaf1e172340f9f4d93ac3015b7dc56c878d4faf27222abe" [label=""];
  "sha256:01b318ec0760aea1bcaf1e172340f9f4d93ac3015b7dc56c878d4faf27222abe" -> "sha256:a1b95b7ab56953c8e800d0c079242712983ba914bcf0652040e5b6e9881a96fd" [label=""];
}

