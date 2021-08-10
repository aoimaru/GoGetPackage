[app/sources/196210067.Dockerfile]
digraph {
  "sha256:f2b7a355d182221fb1525a66267e39d47132ba34b36ef5c8ee00c11f3cbf541f" [label="docker-image://docker.io/dockercask/base-xorg:latest" shape="ellipse"];
  "sha256:40551e150c5c9784623b8f8ab50c8f9d822f6a07fefa94999d4309e848e432a4" [label="/bin/sh -c pacman -Sdd --noconfirm ffmpeg gst-plugins-good" shape="box"];
  "sha256:fe82231af432ad3def2061d5aa2904238f03effaddbe6e79cc2c901112e4134f" [label="/bin/sh -c pacman -S --noconfirm firefox" shape="box"];
  "sha256:06f756f52a23794a76f5a637acd7fa2d694f9360c1c5a966af520b614fd62779" [label="/bin/sh -c aurget chromium-pepper-flash" shape="box"];
  "sha256:363ceede4edc1944b93b2b5fa601043c897f13afcdc6a9163d3bde558e8c94be" [label="/bin/sh -c pacman -U --noconfirm /aur/chromium-pepper-flash*.pkg.tar" shape="box"];
  "sha256:93133b5ea3a44b499f898908268c6c904a846308975b400e46f14bb345fb3c21" [label="/bin/sh -c aurget freshplayerplugin" shape="box"];
  "sha256:7a2bf9ff3af7444ac1d9ed659eec948ecef51e9630750d247fa8c26a2cbc85e0" [label="/bin/sh -c pacman -U --noconfirm /aur/freshplayerplugin*.pkg.tar" shape="box"];
  "sha256:38d7988aa41bb27512c2fe036bc207934c850fa34171a7fca9cf56818b030c92" [label="/bin/sh -c rm -rf /aur" shape="box"];
  "sha256:99e2ecb1bd79defba0ea43dc6972f8a134d8ab047939e01af8e919a906f80392" [label="/bin/sh -c sudo -u docker echo \"enable_3d = 0\" > /home/docker/.config/freshwrapper.conf" shape="box"];
  "sha256:e86f86f00327728eb33711bdc96eea9c1ab434efb96d58ab8239ef56256e5c76" [label="local://context" shape="ellipse"];
  "sha256:eea3ac63b6cce7dc81227746bec304b66473aff0fc0f3c06c7588ec4a523ee73" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:50cf41739c6ce2b0baa9a45cb58b8bbeb59e9157d527c32068e8cf5f161c6748" [label="sha256:50cf41739c6ce2b0baa9a45cb58b8bbeb59e9157d527c32068e8cf5f161c6748" shape="plaintext"];
  "sha256:f2b7a355d182221fb1525a66267e39d47132ba34b36ef5c8ee00c11f3cbf541f" -> "sha256:40551e150c5c9784623b8f8ab50c8f9d822f6a07fefa94999d4309e848e432a4" [label=""];
  "sha256:40551e150c5c9784623b8f8ab50c8f9d822f6a07fefa94999d4309e848e432a4" -> "sha256:fe82231af432ad3def2061d5aa2904238f03effaddbe6e79cc2c901112e4134f" [label=""];
  "sha256:fe82231af432ad3def2061d5aa2904238f03effaddbe6e79cc2c901112e4134f" -> "sha256:06f756f52a23794a76f5a637acd7fa2d694f9360c1c5a966af520b614fd62779" [label=""];
  "sha256:06f756f52a23794a76f5a637acd7fa2d694f9360c1c5a966af520b614fd62779" -> "sha256:363ceede4edc1944b93b2b5fa601043c897f13afcdc6a9163d3bde558e8c94be" [label=""];
  "sha256:363ceede4edc1944b93b2b5fa601043c897f13afcdc6a9163d3bde558e8c94be" -> "sha256:93133b5ea3a44b499f898908268c6c904a846308975b400e46f14bb345fb3c21" [label=""];
  "sha256:93133b5ea3a44b499f898908268c6c904a846308975b400e46f14bb345fb3c21" -> "sha256:7a2bf9ff3af7444ac1d9ed659eec948ecef51e9630750d247fa8c26a2cbc85e0" [label=""];
  "sha256:7a2bf9ff3af7444ac1d9ed659eec948ecef51e9630750d247fa8c26a2cbc85e0" -> "sha256:38d7988aa41bb27512c2fe036bc207934c850fa34171a7fca9cf56818b030c92" [label=""];
  "sha256:38d7988aa41bb27512c2fe036bc207934c850fa34171a7fca9cf56818b030c92" -> "sha256:99e2ecb1bd79defba0ea43dc6972f8a134d8ab047939e01af8e919a906f80392" [label=""];
  "sha256:99e2ecb1bd79defba0ea43dc6972f8a134d8ab047939e01af8e919a906f80392" -> "sha256:eea3ac63b6cce7dc81227746bec304b66473aff0fc0f3c06c7588ec4a523ee73" [label=""];
  "sha256:e86f86f00327728eb33711bdc96eea9c1ab434efb96d58ab8239ef56256e5c76" -> "sha256:eea3ac63b6cce7dc81227746bec304b66473aff0fc0f3c06c7588ec4a523ee73" [label=""];
  "sha256:eea3ac63b6cce7dc81227746bec304b66473aff0fc0f3c06c7588ec4a523ee73" -> "sha256:50cf41739c6ce2b0baa9a45cb58b8bbeb59e9157d527c32068e8cf5f161c6748" [label=""];
}

