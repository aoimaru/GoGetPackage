[app/sources/283849018.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:82bfd5bc4835533139931f83a8ff7d25f9a87ca5cf90d7c9a8e7f5c59b7afa4d" [label="mkdir{path=/opt/CVE-2017-13089}" shape="note"];
  "sha256:a9dd205b1551a21cc7c3475531b70f263934cd14d5a1f4680394de04632f6842" [label="/bin/sh -c apt-get update && apt-get install -y     autoconf     automake     autopoint     build-essential     execstack     flex     gcc     gdb     gettext     git     gperf     libgnutls30     libgnutls-dev     make     netcat     pkg-config     python     rsync     texinfo" shape="box"];
  "sha256:71c3d877d39239c23c513f8aabbb4e40ade91b72d338ea6b32b63dd24982f68c" [label="/bin/sh -c git clone git://git.savannah.gnu.org/wget.git -b v1.19.1" shape="box"];
  "sha256:2333078dd8e52e2d85d78edeacbdf1fc47409624ed20ce940aa2407997d5ef97" [label="local://context" shape="ellipse"];
  "sha256:ea7851646261ddf31e601c2f6197aef0c12e9d5330cd4153c0cb04a154c0f096" [label="copy{src=/src/patches/01-no-stack-protector.patch, dest=/opt/CVE-2017-13089/wget/}" shape="note"];
  "sha256:3ce58ae5541cfe4359c91254066ade3cdfec7b5424a29af2c1515bb48177665f" [label="copy{src=/src/patches/02-build-with-debugging-symbols.patch, dest=/opt/CVE-2017-13089/wget/}" shape="note"];
  "sha256:470e88b6dc000ee0e0765181ac60936c0abe21ed59dd8de90fe7d6b2c03d94d2" [label="/bin/sh -c cd wget &&     git apply 01-no-stack-protector.patch &&     git apply 02-build-with-debugging-symbols.patch" shape="box"];
  "sha256:6a24a457cde3c28fb62e69f40cfb98f33e84c21e9b6eb9a7678b564f9caa337c" [label="/bin/sh -c cd wget &&     ./bootstrap &&     ./configure &&     make &&     make install &&     objcopy --only-keep-debug /usr/local/bin/wget /usr/local/bin/wget.debug &&     objcopy --strip-debug /usr/local/bin/wget &&     execstack -s /usr/local/bin/wget" shape="box"];
  "sha256:412da318b55cc2d2a5fef41ff77cd988094e712b610106bebd25a342108b120b" [label="sha256:412da318b55cc2d2a5fef41ff77cd988094e712b610106bebd25a342108b120b" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:82bfd5bc4835533139931f83a8ff7d25f9a87ca5cf90d7c9a8e7f5c59b7afa4d" [label=""];
  "sha256:82bfd5bc4835533139931f83a8ff7d25f9a87ca5cf90d7c9a8e7f5c59b7afa4d" -> "sha256:a9dd205b1551a21cc7c3475531b70f263934cd14d5a1f4680394de04632f6842" [label=""];
  "sha256:a9dd205b1551a21cc7c3475531b70f263934cd14d5a1f4680394de04632f6842" -> "sha256:71c3d877d39239c23c513f8aabbb4e40ade91b72d338ea6b32b63dd24982f68c" [label=""];
  "sha256:71c3d877d39239c23c513f8aabbb4e40ade91b72d338ea6b32b63dd24982f68c" -> "sha256:ea7851646261ddf31e601c2f6197aef0c12e9d5330cd4153c0cb04a154c0f096" [label=""];
  "sha256:2333078dd8e52e2d85d78edeacbdf1fc47409624ed20ce940aa2407997d5ef97" -> "sha256:ea7851646261ddf31e601c2f6197aef0c12e9d5330cd4153c0cb04a154c0f096" [label=""];
  "sha256:ea7851646261ddf31e601c2f6197aef0c12e9d5330cd4153c0cb04a154c0f096" -> "sha256:3ce58ae5541cfe4359c91254066ade3cdfec7b5424a29af2c1515bb48177665f" [label=""];
  "sha256:2333078dd8e52e2d85d78edeacbdf1fc47409624ed20ce940aa2407997d5ef97" -> "sha256:3ce58ae5541cfe4359c91254066ade3cdfec7b5424a29af2c1515bb48177665f" [label=""];
  "sha256:3ce58ae5541cfe4359c91254066ade3cdfec7b5424a29af2c1515bb48177665f" -> "sha256:470e88b6dc000ee0e0765181ac60936c0abe21ed59dd8de90fe7d6b2c03d94d2" [label=""];
  "sha256:470e88b6dc000ee0e0765181ac60936c0abe21ed59dd8de90fe7d6b2c03d94d2" -> "sha256:6a24a457cde3c28fb62e69f40cfb98f33e84c21e9b6eb9a7678b564f9caa337c" [label=""];
  "sha256:6a24a457cde3c28fb62e69f40cfb98f33e84c21e9b6eb9a7678b564f9caa337c" -> "sha256:412da318b55cc2d2a5fef41ff77cd988094e712b610106bebd25a342108b120b" [label=""];
}

