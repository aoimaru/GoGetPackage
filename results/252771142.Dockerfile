[app/sources/252771142.Dockerfile]
digraph {
  "sha256:2838c7b6f9fcf1e25ebec34d58ca84d54abc3d4ee018cc32dbac2dbd62e3ba79" [label="local://context" shape="ellipse"];
  "sha256:9f9bbabc95c9138d1daf8af6bd7eff970e499d124e00c9c71cd60a375e49f7af" [label="docker-image://docker.io/library/ruby:2.2.2" shape="ellipse"];
  "sha256:159ecf970290609a51e16e72de04536dde05f97da87d0c9c7044a15fbacd5deb" [label="/bin/sh -c bundle config \\--global frozen 1" shape="box"];
  "sha256:8fc4c5770b9dc581aee929f53e64ea0451e3de1665436bfe2ec9bbf6c270c961" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:b3ecbff79f6c3431a7ced0ed3259f0598886f9cfaa11fa71f3de6a9ec6b93a4a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e9dd6a7aca7501be1bb257dbd3289f584f35a70273dcfdb5a4977f8fbb7c0416" [label="copy{src=/Gemfile, dest=/usr/src/app/}" shape="note"];
  "sha256:a7b71238f992e44af7c0167952209a525b1647816def4adb5355e31ba52558e1" [label="copy{src=/Gemfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:ff492368e051a768555c898b251f29aa31dcb17d766b714b75c8df30f06e0908" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:5ee49e9a6df26ad97d226421ff719cc3b7193538f2214b6b000ebe63b1c77cd3" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:ed47e8eed6045fac5b905e0189e45d09a0f2fa61ee3778052523d1309474342b" [label="sha256:ed47e8eed6045fac5b905e0189e45d09a0f2fa61ee3778052523d1309474342b" shape="plaintext"];
  "sha256:9f9bbabc95c9138d1daf8af6bd7eff970e499d124e00c9c71cd60a375e49f7af" -> "sha256:159ecf970290609a51e16e72de04536dde05f97da87d0c9c7044a15fbacd5deb" [label=""];
  "sha256:159ecf970290609a51e16e72de04536dde05f97da87d0c9c7044a15fbacd5deb" -> "sha256:8fc4c5770b9dc581aee929f53e64ea0451e3de1665436bfe2ec9bbf6c270c961" [label=""];
  "sha256:8fc4c5770b9dc581aee929f53e64ea0451e3de1665436bfe2ec9bbf6c270c961" -> "sha256:b3ecbff79f6c3431a7ced0ed3259f0598886f9cfaa11fa71f3de6a9ec6b93a4a" [label=""];
  "sha256:b3ecbff79f6c3431a7ced0ed3259f0598886f9cfaa11fa71f3de6a9ec6b93a4a" -> "sha256:e9dd6a7aca7501be1bb257dbd3289f584f35a70273dcfdb5a4977f8fbb7c0416" [label=""];
  "sha256:2838c7b6f9fcf1e25ebec34d58ca84d54abc3d4ee018cc32dbac2dbd62e3ba79" -> "sha256:e9dd6a7aca7501be1bb257dbd3289f584f35a70273dcfdb5a4977f8fbb7c0416" [label=""];
  "sha256:e9dd6a7aca7501be1bb257dbd3289f584f35a70273dcfdb5a4977f8fbb7c0416" -> "sha256:a7b71238f992e44af7c0167952209a525b1647816def4adb5355e31ba52558e1" [label=""];
  "sha256:2838c7b6f9fcf1e25ebec34d58ca84d54abc3d4ee018cc32dbac2dbd62e3ba79" -> "sha256:a7b71238f992e44af7c0167952209a525b1647816def4adb5355e31ba52558e1" [label=""];
  "sha256:a7b71238f992e44af7c0167952209a525b1647816def4adb5355e31ba52558e1" -> "sha256:ff492368e051a768555c898b251f29aa31dcb17d766b714b75c8df30f06e0908" [label=""];
  "sha256:ff492368e051a768555c898b251f29aa31dcb17d766b714b75c8df30f06e0908" -> "sha256:5ee49e9a6df26ad97d226421ff719cc3b7193538f2214b6b000ebe63b1c77cd3" [label=""];
  "sha256:2838c7b6f9fcf1e25ebec34d58ca84d54abc3d4ee018cc32dbac2dbd62e3ba79" -> "sha256:5ee49e9a6df26ad97d226421ff719cc3b7193538f2214b6b000ebe63b1c77cd3" [label=""];
  "sha256:5ee49e9a6df26ad97d226421ff719cc3b7193538f2214b6b000ebe63b1c77cd3" -> "sha256:ed47e8eed6045fac5b905e0189e45d09a0f2fa61ee3778052523d1309474342b" [label=""];
}

