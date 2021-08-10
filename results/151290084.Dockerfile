[app/sources/151290084.Dockerfile]
digraph {
  "sha256:f010b096ca237ed44cb2cb4b99bf83a18ed5d5ea975f6777c4cfb6ee092cc55a" [label="docker-image://docker.io/silarsis/ssh-server:latest" shape="ellipse"];
  "sha256:d88e332b0109a5807a1ba38e38ef5c114c4a6b3bbfe37a8083b33d3248ab6a3c" [label="/bin/sh -c apt-get install -yq x11vnc xvfb vim xdm xpra rox-filer pwgen xserver-xephyr fluxbox" shape="box"];
  "sha256:822890739170c2f70d3de9b7dc9ed278917559eda1e06cbc7388be6824f19409" [label="/bin/sh -c sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config" shape="box"];
  "sha256:5ca6ce90f2cbfb94acaba83dd86eeab097aad74b40e09ff39aaa1aa81d7348fd" [label="/bin/sh -c sed -i '/#any host/c\\*' /etc/X11/xdm/Xaccess" shape="box"];
  "sha256:f317713a2d54d13a5a962dc4d090b0adc781fff82a7f5473b945b7db28294923" [label="/bin/sh -c ln -s /usr/bin/Xorg /usr/bin/X" shape="box"];
  "sha256:6de08efc9d7e53307b18bf8ec337958e2755315ab55229590d8e692ba0ca88fc" [label="/bin/sh -c echo X11Forwarding yes >> /etc/ssh/ssh_config" shape="box"];
  "sha256:cfd7744941d5652e7cbec8cce4c0511e080b43b283f685361a6e580413a3f509" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl && rm -f /sbin/initctl && ln -s /bin/true /sbin/initctl" shape="box"];
  "sha256:5c5c719097c7684d6c0dce7ad0b364b4269ad23787b8dc120a3998665213b659" [label="/bin/sh -c chmod go+w,u+s /tmp" shape="box"];
  "sha256:6e651004b453a47db82b2b76340a7a4eecc17381c5f3ce9070f52fbd2fba6790" [label="/bin/sh -c adduser --disabled-password --gecos \"\" silarsis   && echo \"silarsis ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers   && echo 'silarsis:passwd' | chpasswd" shape="box"];
  "sha256:68f97201a8615b229d5c83be5c8db9508a503820b74f4f8fead61b7c3d8033d4" [label="/bin/sh -c echo '/home/silarsis/docker-desktop' >> /home/silarsis/.bashrc" shape="box"];
  "sha256:898bce49a6287e9f9c707b9c0810129e6b16418bbcf4c868efbe7898e600bcf9" [label="local://context" shape="ellipse"];
  "sha256:caf0ef3224a13776b5156ebffa809446499f17d65d6dc45ffb6891fb07593ca3" [label="copy{src=/, dest=/opt/docker-src}" shape="note"];
  "sha256:c55b2a03aebabf473ab09f7548dd6735c6e9531ff883409c8077e30d93e3af6e" [label="sha256:c55b2a03aebabf473ab09f7548dd6735c6e9531ff883409c8077e30d93e3af6e" shape="plaintext"];
  "sha256:f010b096ca237ed44cb2cb4b99bf83a18ed5d5ea975f6777c4cfb6ee092cc55a" -> "sha256:d88e332b0109a5807a1ba38e38ef5c114c4a6b3bbfe37a8083b33d3248ab6a3c" [label=""];
  "sha256:d88e332b0109a5807a1ba38e38ef5c114c4a6b3bbfe37a8083b33d3248ab6a3c" -> "sha256:822890739170c2f70d3de9b7dc9ed278917559eda1e06cbc7388be6824f19409" [label=""];
  "sha256:822890739170c2f70d3de9b7dc9ed278917559eda1e06cbc7388be6824f19409" -> "sha256:5ca6ce90f2cbfb94acaba83dd86eeab097aad74b40e09ff39aaa1aa81d7348fd" [label=""];
  "sha256:5ca6ce90f2cbfb94acaba83dd86eeab097aad74b40e09ff39aaa1aa81d7348fd" -> "sha256:f317713a2d54d13a5a962dc4d090b0adc781fff82a7f5473b945b7db28294923" [label=""];
  "sha256:f317713a2d54d13a5a962dc4d090b0adc781fff82a7f5473b945b7db28294923" -> "sha256:6de08efc9d7e53307b18bf8ec337958e2755315ab55229590d8e692ba0ca88fc" [label=""];
  "sha256:6de08efc9d7e53307b18bf8ec337958e2755315ab55229590d8e692ba0ca88fc" -> "sha256:cfd7744941d5652e7cbec8cce4c0511e080b43b283f685361a6e580413a3f509" [label=""];
  "sha256:cfd7744941d5652e7cbec8cce4c0511e080b43b283f685361a6e580413a3f509" -> "sha256:5c5c719097c7684d6c0dce7ad0b364b4269ad23787b8dc120a3998665213b659" [label=""];
  "sha256:5c5c719097c7684d6c0dce7ad0b364b4269ad23787b8dc120a3998665213b659" -> "sha256:6e651004b453a47db82b2b76340a7a4eecc17381c5f3ce9070f52fbd2fba6790" [label=""];
  "sha256:6e651004b453a47db82b2b76340a7a4eecc17381c5f3ce9070f52fbd2fba6790" -> "sha256:68f97201a8615b229d5c83be5c8db9508a503820b74f4f8fead61b7c3d8033d4" [label=""];
  "sha256:68f97201a8615b229d5c83be5c8db9508a503820b74f4f8fead61b7c3d8033d4" -> "sha256:caf0ef3224a13776b5156ebffa809446499f17d65d6dc45ffb6891fb07593ca3" [label=""];
  "sha256:898bce49a6287e9f9c707b9c0810129e6b16418bbcf4c868efbe7898e600bcf9" -> "sha256:caf0ef3224a13776b5156ebffa809446499f17d65d6dc45ffb6891fb07593ca3" [label=""];
  "sha256:caf0ef3224a13776b5156ebffa809446499f17d65d6dc45ffb6891fb07593ca3" -> "sha256:c55b2a03aebabf473ab09f7548dd6735c6e9531ff883409c8077e30d93e3af6e" [label=""];
}

