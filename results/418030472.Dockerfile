[app/sources/418030472.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:a0df998e58dcb6bba8b0409f3251cf0bcd76fe2e60156542d0a97a40a7b10fb6" [label="/bin/sh -c usermod -u 99 nobody" shape="box"];
  "sha256:ad28479f79353f7057f847736a63cc4cf2714884ef36791e788665cf552d9b94" [label="/bin/sh -c usermod -g 100 nobody" shape="box"];
  "sha256:61b059aa0fd9ab8d74bc7cbbb0b62742fd40d418d2f5c9bdeabcfeb9ace804f9" [label="/bin/sh -c locale-gen en_US en_US.UTF-8" shape="box"];
  "sha256:7e6962ef3750d0a2c8597fa12c9ddf335d31ba9596d5f10b546add84afd1e3e1" [label="/bin/sh -c update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:f8005299b86d6379de6f67c88a5103cec0072dc4e3a0d03fc9ac8e14bae79c8d" [label="/bin/sh -c dpkg-reconfigure locales" shape="box"];
  "sha256:6605a6a265a3d4ab9f8184f917351d143254f382cabcfba76ad2d03be98a734d" [label="/bin/sh -c echo \"deb http://ppa.launchpad.net/meebey/smuxi-daily/ubuntu trusty main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:af99cef03ec4e4ef6d60389970f5318f9c3e49fe3475ee22ecef304f91b4b076" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5C39B6F9FC6D77D5" shape="box"];
  "sha256:1ac9b54a5cae7e9934acfa8a5cc28a9faf5be17702ad6c7029a2de4690d3beba" [label="/bin/sh -c apt-get -q update" shape="box"];
  "sha256:83b32c61268bb569c2fb58741f7cf8c99a65b35f2b01c25aff4142902418d017" [label="/bin/sh -c apt-mark hold initscripts udev plymouth mountall" shape="box"];
  "sha256:1e71b78edde02a9861f5cc37ba16cffb85518941b258f58d4d2055e82793d00a" [label="/bin/sh -c apt-get -qy --force-yes dist-upgrade" shape="box"];
  "sha256:c768476e9ce294434862a7f64c52030f894d086a8aa85cd0c95dfff428ca43ab" [label="/bin/sh -c usermod -m -d /config nobody" shape="box"];
  "sha256:529f390712120ae0074d23b050ebeb4b43c808fa716f7351b4e07fb54b81aee6" [label="/bin/sh -c apt-get install -qy --force-yes smuxi-engine" shape="box"];
  "sha256:a655add2cd5e26a7ad673794daf38d7c89e8beb775c96302719e85afb6a054a6" [label="local://context" shape="ellipse"];
  "sha256:d5d96c8de966be60982cc756a2cbfa3280394b7d87482b2980566bb0a1a7e171" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:6818904ca06dafbe81278fa4d4427d126cf9548f8f85d997da2158cb88802ff3" [label="copy{src=/creds.conf, dest=/creds.conf}" shape="note"];
  "sha256:5372bf6441579f5f8143c43a70a5ea94446ccf1e951bbc2bf6a7d6c0f06982ea" [label="/bin/sh -c chmod a+x  /start.sh" shape="box"];
  "sha256:fcf2ac6440385b6d59c199e02317258e7fdcb2d7c87f79f6ad6bf47321e7d0ec" [label="sha256:fcf2ac6440385b6d59c199e02317258e7fdcb2d7c87f79f6ad6bf47321e7d0ec" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:a0df998e58dcb6bba8b0409f3251cf0bcd76fe2e60156542d0a97a40a7b10fb6" [label=""];
  "sha256:a0df998e58dcb6bba8b0409f3251cf0bcd76fe2e60156542d0a97a40a7b10fb6" -> "sha256:ad28479f79353f7057f847736a63cc4cf2714884ef36791e788665cf552d9b94" [label=""];
  "sha256:ad28479f79353f7057f847736a63cc4cf2714884ef36791e788665cf552d9b94" -> "sha256:61b059aa0fd9ab8d74bc7cbbb0b62742fd40d418d2f5c9bdeabcfeb9ace804f9" [label=""];
  "sha256:61b059aa0fd9ab8d74bc7cbbb0b62742fd40d418d2f5c9bdeabcfeb9ace804f9" -> "sha256:7e6962ef3750d0a2c8597fa12c9ddf335d31ba9596d5f10b546add84afd1e3e1" [label=""];
  "sha256:7e6962ef3750d0a2c8597fa12c9ddf335d31ba9596d5f10b546add84afd1e3e1" -> "sha256:f8005299b86d6379de6f67c88a5103cec0072dc4e3a0d03fc9ac8e14bae79c8d" [label=""];
  "sha256:f8005299b86d6379de6f67c88a5103cec0072dc4e3a0d03fc9ac8e14bae79c8d" -> "sha256:6605a6a265a3d4ab9f8184f917351d143254f382cabcfba76ad2d03be98a734d" [label=""];
  "sha256:6605a6a265a3d4ab9f8184f917351d143254f382cabcfba76ad2d03be98a734d" -> "sha256:af99cef03ec4e4ef6d60389970f5318f9c3e49fe3475ee22ecef304f91b4b076" [label=""];
  "sha256:af99cef03ec4e4ef6d60389970f5318f9c3e49fe3475ee22ecef304f91b4b076" -> "sha256:1ac9b54a5cae7e9934acfa8a5cc28a9faf5be17702ad6c7029a2de4690d3beba" [label=""];
  "sha256:1ac9b54a5cae7e9934acfa8a5cc28a9faf5be17702ad6c7029a2de4690d3beba" -> "sha256:83b32c61268bb569c2fb58741f7cf8c99a65b35f2b01c25aff4142902418d017" [label=""];
  "sha256:83b32c61268bb569c2fb58741f7cf8c99a65b35f2b01c25aff4142902418d017" -> "sha256:1e71b78edde02a9861f5cc37ba16cffb85518941b258f58d4d2055e82793d00a" [label=""];
  "sha256:1e71b78edde02a9861f5cc37ba16cffb85518941b258f58d4d2055e82793d00a" -> "sha256:c768476e9ce294434862a7f64c52030f894d086a8aa85cd0c95dfff428ca43ab" [label=""];
  "sha256:c768476e9ce294434862a7f64c52030f894d086a8aa85cd0c95dfff428ca43ab" -> "sha256:529f390712120ae0074d23b050ebeb4b43c808fa716f7351b4e07fb54b81aee6" [label=""];
  "sha256:529f390712120ae0074d23b050ebeb4b43c808fa716f7351b4e07fb54b81aee6" -> "sha256:d5d96c8de966be60982cc756a2cbfa3280394b7d87482b2980566bb0a1a7e171" [label=""];
  "sha256:a655add2cd5e26a7ad673794daf38d7c89e8beb775c96302719e85afb6a054a6" -> "sha256:d5d96c8de966be60982cc756a2cbfa3280394b7d87482b2980566bb0a1a7e171" [label=""];
  "sha256:d5d96c8de966be60982cc756a2cbfa3280394b7d87482b2980566bb0a1a7e171" -> "sha256:6818904ca06dafbe81278fa4d4427d126cf9548f8f85d997da2158cb88802ff3" [label=""];
  "sha256:a655add2cd5e26a7ad673794daf38d7c89e8beb775c96302719e85afb6a054a6" -> "sha256:6818904ca06dafbe81278fa4d4427d126cf9548f8f85d997da2158cb88802ff3" [label=""];
  "sha256:6818904ca06dafbe81278fa4d4427d126cf9548f8f85d997da2158cb88802ff3" -> "sha256:5372bf6441579f5f8143c43a70a5ea94446ccf1e951bbc2bf6a7d6c0f06982ea" [label=""];
  "sha256:5372bf6441579f5f8143c43a70a5ea94446ccf1e951bbc2bf6a7d6c0f06982ea" -> "sha256:fcf2ac6440385b6d59c199e02317258e7fdcb2d7c87f79f6ad6bf47321e7d0ec" [label=""];
}

