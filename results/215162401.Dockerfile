[app/sources/215162401.Dockerfile]
digraph {
  "sha256:8eb0177f25944060ae5a5f7ca9c387f634d102295c392f874be64dcc46931392" [label="docker-image://mcr.microsoft.com/windows/servercore:1809" shape="ellipse"];
  "sha256:e096b114b149b5a510f6884b8f477614e858c0ae087c1b5765d420b3ecd37b09" [label="powershell -command Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" shape="box"];
  "sha256:edf4adaaf1cf1d6de9d05490bac6541ba05052a9318c439368d085517f68d3fa" [label="powershell -command choco install -y python2 git jdk8" shape="box"];
  "sha256:b86ff81d20cafc7ce5f4f86306db3d20159102847ef35131e9df30bf67dc2ca9" [label="powershell -command choco install -y -i ant" shape="box"];
  "sha256:a6d3a92959434f0f938b5e311d84740674d32ae38166f073c467b78297b54c6d" [label="powershell -command git clone --branch v${env:version} --depth 1 https://github.com/${env:repository}.git c:\\src" shape="box"];
  "sha256:1b836fee930b80c423e514ea5abc466f96425c291f80387e01abcf3c5dcfd6d0" [label="mkdir{path=/c:/src}" shape="note"];
  "sha256:e1f0b57242c04afe373863f1dc95a4db08f46e7a59aa7ff0d46f7010e48bcfeb" [label="powershell -command ant" shape="box"];
  "sha256:d1df8a360664c5bfb107a33e09ddaff87e04235b9dd2fc8d787fd25666b363d2" [label="powershell -command ./bin/buck build -c buck.release_version=${env:version} -c buck.release_timestamp=${env:timestamp} buck" shape="box"];
  "sha256:a64c267cdfd5867e3bf60c5981f3a01b11781a02ab78aeaf5ba1cc36af5072b2" [label="local://context" shape="ellipse"];
  "sha256:a6f34816b1b37405bddf1ba2f39844f40c55eb3a44024a833c81d4e3c79b5092" [label="copy{src=/Changelog.md.new, dest=/c:/src/c:/src/tools/release/platforms/chocolatey/Changelog.md}" shape="note"];
  "sha256:be945cc1c3dfe9743bd19fcbf14db0759dea808c59a00269acf67917d2d577ff" [label="powershell -command ./bin/buck build -c buck.release_version=${env:version} -c buck.release_timestamp=${env:timestamp} tools/release/platforms/chocolatey --out buck.nupkg" shape="box"];
  "sha256:9319f2a8310807304deea1b06a4506557d50d3937615c5862e957b017913ca86" [label="sha256:9319f2a8310807304deea1b06a4506557d50d3937615c5862e957b017913ca86" shape="plaintext"];
  "sha256:8eb0177f25944060ae5a5f7ca9c387f634d102295c392f874be64dcc46931392" -> "sha256:e096b114b149b5a510f6884b8f477614e858c0ae087c1b5765d420b3ecd37b09" [label=""];
  "sha256:e096b114b149b5a510f6884b8f477614e858c0ae087c1b5765d420b3ecd37b09" -> "sha256:edf4adaaf1cf1d6de9d05490bac6541ba05052a9318c439368d085517f68d3fa" [label=""];
  "sha256:edf4adaaf1cf1d6de9d05490bac6541ba05052a9318c439368d085517f68d3fa" -> "sha256:b86ff81d20cafc7ce5f4f86306db3d20159102847ef35131e9df30bf67dc2ca9" [label=""];
  "sha256:b86ff81d20cafc7ce5f4f86306db3d20159102847ef35131e9df30bf67dc2ca9" -> "sha256:a6d3a92959434f0f938b5e311d84740674d32ae38166f073c467b78297b54c6d" [label=""];
  "sha256:a6d3a92959434f0f938b5e311d84740674d32ae38166f073c467b78297b54c6d" -> "sha256:1b836fee930b80c423e514ea5abc466f96425c291f80387e01abcf3c5dcfd6d0" [label=""];
  "sha256:1b836fee930b80c423e514ea5abc466f96425c291f80387e01abcf3c5dcfd6d0" -> "sha256:e1f0b57242c04afe373863f1dc95a4db08f46e7a59aa7ff0d46f7010e48bcfeb" [label=""];
  "sha256:e1f0b57242c04afe373863f1dc95a4db08f46e7a59aa7ff0d46f7010e48bcfeb" -> "sha256:d1df8a360664c5bfb107a33e09ddaff87e04235b9dd2fc8d787fd25666b363d2" [label=""];
  "sha256:d1df8a360664c5bfb107a33e09ddaff87e04235b9dd2fc8d787fd25666b363d2" -> "sha256:a6f34816b1b37405bddf1ba2f39844f40c55eb3a44024a833c81d4e3c79b5092" [label=""];
  "sha256:a64c267cdfd5867e3bf60c5981f3a01b11781a02ab78aeaf5ba1cc36af5072b2" -> "sha256:a6f34816b1b37405bddf1ba2f39844f40c55eb3a44024a833c81d4e3c79b5092" [label=""];
  "sha256:a6f34816b1b37405bddf1ba2f39844f40c55eb3a44024a833c81d4e3c79b5092" -> "sha256:be945cc1c3dfe9743bd19fcbf14db0759dea808c59a00269acf67917d2d577ff" [label=""];
  "sha256:be945cc1c3dfe9743bd19fcbf14db0759dea808c59a00269acf67917d2d577ff" -> "sha256:9319f2a8310807304deea1b06a4506557d50d3937615c5862e957b017913ca86" [label=""];
}

