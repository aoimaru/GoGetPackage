[app/sources/352489090.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:c947f8430f6e5b51712a43d4d90a93fd6e565fe5c883f076789df0e0365ba8ae" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:b720444a4a386f81babb3be2ac2c513834ab71dc02835e5120bbfc6008c08c3a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ca96aa6e9c5b01ae01b3f737c097def0446551e86602cbaa280398cf7f9bc032" [label="/bin/sh -c apt-get install -y git build-essential     ocaml wget unzip zlib1g zlib1g-dev mercurial camlp4-extra" shape="box"];
  "sha256:6908f094be522071b473f3be858b29cdab8f7f3ed6914004076ec23fd2426cac" [label="/bin/sh -c wget https://raw.githubusercontent.com/ocaml/opam/master/shell/opam_installer.sh" shape="box"];
  "sha256:67a0aab48460c1c7723f77bd42c1287fd3be7ecee90fc71ab4bf64d8defaf180" [label="/bin/sh -c yes | sh ./opam_installer.sh /usr/local/bin" shape="box"];
  "sha256:ba047ebc4b57937e372143e30542b1d42ceaed56a044ad1b17e1f4e71ebdac44" [label="/bin/sh -c eval `opam config env`" shape="box"];
  "sha256:bf8feb3929c77a68cc2c3c57b40f35506924215267f405602551677925618841" [label="/bin/sh -c opam init" shape="box"];
  "sha256:c2258e1a3decd6a293a3f9dd37974291978e2a0053c9272b96b67984abfe0a54" [label="/bin/sh -c opam install -y camlp4" shape="box"];
  "sha256:284df8fb86247ac07788187fe8be3564befa63b336211fc87d8776e68fd694ac" [label="/bin/sh -c wget https://github.com/facebook/pfff/archive/master.tar.gz" shape="box"];
  "sha256:652a694553e4e0c189d357b746fdae3e7537774bf52b5eb1667cb246bc1a9009" [label="/bin/sh -c tar -zxvf master.tar.gz" shape="box"];
  "sha256:ef82424c1f5a48c348dcdbe15c778bd85aa6c332601416ca9aa38c6476f14cdd" [label="mkdir{path=/tmp/pfff-master}" shape="note"];
  "sha256:b81f854a21e0a8cb6243d8e93775d072114b92ef9fe1973d465ca450ed1bd2a3" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:aecdd64b5636fd7e30247498759de9811473828d23690682eb120f6115035430" [label="/bin/sh -c make depend" shape="box"];
  "sha256:7c18c3c7f1af5f02341574d88571195b79672838da3f8ef9e0b945da9d4204cb" [label="/bin/sh -c make install" shape="box"];
  "sha256:6da41867e393e60b3932a78e5fcd2ea5dc23548d1773a88e979d4ff400cd2e03" [label="mkdir{path=/project}" shape="note"];
  "sha256:9b8ec338fe6e29123c4efab9662fc0c1034d395e164e755d3e95b81de7ee635b" [label="sha256:9b8ec338fe6e29123c4efab9662fc0c1034d395e164e755d3e95b81de7ee635b" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:c947f8430f6e5b51712a43d4d90a93fd6e565fe5c883f076789df0e0365ba8ae" [label=""];
  "sha256:c947f8430f6e5b51712a43d4d90a93fd6e565fe5c883f076789df0e0365ba8ae" -> "sha256:b720444a4a386f81babb3be2ac2c513834ab71dc02835e5120bbfc6008c08c3a" [label=""];
  "sha256:b720444a4a386f81babb3be2ac2c513834ab71dc02835e5120bbfc6008c08c3a" -> "sha256:ca96aa6e9c5b01ae01b3f737c097def0446551e86602cbaa280398cf7f9bc032" [label=""];
  "sha256:ca96aa6e9c5b01ae01b3f737c097def0446551e86602cbaa280398cf7f9bc032" -> "sha256:6908f094be522071b473f3be858b29cdab8f7f3ed6914004076ec23fd2426cac" [label=""];
  "sha256:6908f094be522071b473f3be858b29cdab8f7f3ed6914004076ec23fd2426cac" -> "sha256:67a0aab48460c1c7723f77bd42c1287fd3be7ecee90fc71ab4bf64d8defaf180" [label=""];
  "sha256:67a0aab48460c1c7723f77bd42c1287fd3be7ecee90fc71ab4bf64d8defaf180" -> "sha256:ba047ebc4b57937e372143e30542b1d42ceaed56a044ad1b17e1f4e71ebdac44" [label=""];
  "sha256:ba047ebc4b57937e372143e30542b1d42ceaed56a044ad1b17e1f4e71ebdac44" -> "sha256:bf8feb3929c77a68cc2c3c57b40f35506924215267f405602551677925618841" [label=""];
  "sha256:bf8feb3929c77a68cc2c3c57b40f35506924215267f405602551677925618841" -> "sha256:c2258e1a3decd6a293a3f9dd37974291978e2a0053c9272b96b67984abfe0a54" [label=""];
  "sha256:c2258e1a3decd6a293a3f9dd37974291978e2a0053c9272b96b67984abfe0a54" -> "sha256:284df8fb86247ac07788187fe8be3564befa63b336211fc87d8776e68fd694ac" [label=""];
  "sha256:284df8fb86247ac07788187fe8be3564befa63b336211fc87d8776e68fd694ac" -> "sha256:652a694553e4e0c189d357b746fdae3e7537774bf52b5eb1667cb246bc1a9009" [label=""];
  "sha256:652a694553e4e0c189d357b746fdae3e7537774bf52b5eb1667cb246bc1a9009" -> "sha256:ef82424c1f5a48c348dcdbe15c778bd85aa6c332601416ca9aa38c6476f14cdd" [label=""];
  "sha256:ef82424c1f5a48c348dcdbe15c778bd85aa6c332601416ca9aa38c6476f14cdd" -> "sha256:b81f854a21e0a8cb6243d8e93775d072114b92ef9fe1973d465ca450ed1bd2a3" [label=""];
  "sha256:b81f854a21e0a8cb6243d8e93775d072114b92ef9fe1973d465ca450ed1bd2a3" -> "sha256:aecdd64b5636fd7e30247498759de9811473828d23690682eb120f6115035430" [label=""];
  "sha256:aecdd64b5636fd7e30247498759de9811473828d23690682eb120f6115035430" -> "sha256:7c18c3c7f1af5f02341574d88571195b79672838da3f8ef9e0b945da9d4204cb" [label=""];
  "sha256:7c18c3c7f1af5f02341574d88571195b79672838da3f8ef9e0b945da9d4204cb" -> "sha256:6da41867e393e60b3932a78e5fcd2ea5dc23548d1773a88e979d4ff400cd2e03" [label=""];
  "sha256:6da41867e393e60b3932a78e5fcd2ea5dc23548d1773a88e979d4ff400cd2e03" -> "sha256:9b8ec338fe6e29123c4efab9662fc0c1034d395e164e755d3e95b81de7ee635b" [label=""];
}

