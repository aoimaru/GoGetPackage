[app/sources/146163065.Dockerfile]
digraph {
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:75e99e22aa9e5119d6866cd5198c4b3454cae5e47b23258c8957302c7572372d" [label="local://context" shape="ellipse"];
  "sha256:f6bcb4ee24aa937d99d398eaf1ab8b97fd308715414be0854e404f5446783d6e" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:953f830717f2411993853935f5827bb4438da1c9fbab7dcff0ae62733a126815" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:7f3cabdb67d761ea4ab29828e5d82b476eb30cea97dd386e036e81b40dc4fd64" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:2e70f89cf2b54f72ba16299c73da0af8bee21511eb88192e905868f08916925c" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:923796b4e20831a6c6e7c225c81c8dd436c01c4395b709d6498e1f6803166e33" [label="sha256:923796b4e20831a6c6e7c225c81c8dd436c01c4395b709d6498e1f6803166e33" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:f6bcb4ee24aa937d99d398eaf1ab8b97fd308715414be0854e404f5446783d6e" [label=""];
  "sha256:75e99e22aa9e5119d6866cd5198c4b3454cae5e47b23258c8957302c7572372d" -> "sha256:f6bcb4ee24aa937d99d398eaf1ab8b97fd308715414be0854e404f5446783d6e" [label=""];
  "sha256:f6bcb4ee24aa937d99d398eaf1ab8b97fd308715414be0854e404f5446783d6e" -> "sha256:953f830717f2411993853935f5827bb4438da1c9fbab7dcff0ae62733a126815" [label=""];
  "sha256:953f830717f2411993853935f5827bb4438da1c9fbab7dcff0ae62733a126815" -> "sha256:7f3cabdb67d761ea4ab29828e5d82b476eb30cea97dd386e036e81b40dc4fd64" [label=""];
  "sha256:7f3cabdb67d761ea4ab29828e5d82b476eb30cea97dd386e036e81b40dc4fd64" -> "sha256:2e70f89cf2b54f72ba16299c73da0af8bee21511eb88192e905868f08916925c" [label=""];
  "sha256:75e99e22aa9e5119d6866cd5198c4b3454cae5e47b23258c8957302c7572372d" -> "sha256:2e70f89cf2b54f72ba16299c73da0af8bee21511eb88192e905868f08916925c" [label=""];
  "sha256:2e70f89cf2b54f72ba16299c73da0af8bee21511eb88192e905868f08916925c" -> "sha256:923796b4e20831a6c6e7c225c81c8dd436c01c4395b709d6498e1f6803166e33" [label=""];
}

