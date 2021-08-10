[app/sources/378868917.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:4fc12fd20a02ca50d38eb95ee94397d7829c91747695a76eef13d4a5c55617d2" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:b1bdabb0226866ce03affa716c389bf096783e3265ff200cbb465f177ced2990" [label="mkdir{path=/app}" shape="note"];
  "sha256:ef71f0376151c84fff3b799bd6b045efc20b7c3b7f7d531ea0fba7e9f53a37f1" [label="/bin/sh -c apk add --update git && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:b4b9275e3cc3c39fb5bcbc217a32bf85043fed08a53d00a17badde5163555644" [label="local://context" shape="ellipse"];
  "sha256:0b6b8f8695152637f773cd3c7af8a5788b7999819ba073da8e48261070af3cff" [label="copy{src=/requirements.txt, dest=/app}" shape="note"];
  "sha256:5ed026205a960cd027f1302e9d78d4baeb6bb1664587d25a9a6006f96d8abe35" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:329043782ea2f01b85be083f362c02cd8abe42145d839ea453ddec0ca98b72c1" [label="/bin/sh -c git clone --depth 1 https://github.com/wdas/reposado &&     cp -R reposado/code/reposadolib reposadolib &&     rm -rf reposado" shape="box"];
  "sha256:04ecfff79ec886682ff29481090cc604121f0c760d729185c7e81ca7a3f7b30e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e0a320f96d2c6da8edcd7a383207199b0bb3a23b87fbcf413478a5db782c0bd0" [label="sha256:e0a320f96d2c6da8edcd7a383207199b0bb3a23b87fbcf413478a5db782c0bd0" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:4fc12fd20a02ca50d38eb95ee94397d7829c91747695a76eef13d4a5c55617d2" [label=""];
  "sha256:4fc12fd20a02ca50d38eb95ee94397d7829c91747695a76eef13d4a5c55617d2" -> "sha256:b1bdabb0226866ce03affa716c389bf096783e3265ff200cbb465f177ced2990" [label=""];
  "sha256:b1bdabb0226866ce03affa716c389bf096783e3265ff200cbb465f177ced2990" -> "sha256:ef71f0376151c84fff3b799bd6b045efc20b7c3b7f7d531ea0fba7e9f53a37f1" [label=""];
  "sha256:ef71f0376151c84fff3b799bd6b045efc20b7c3b7f7d531ea0fba7e9f53a37f1" -> "sha256:0b6b8f8695152637f773cd3c7af8a5788b7999819ba073da8e48261070af3cff" [label=""];
  "sha256:b4b9275e3cc3c39fb5bcbc217a32bf85043fed08a53d00a17badde5163555644" -> "sha256:0b6b8f8695152637f773cd3c7af8a5788b7999819ba073da8e48261070af3cff" [label=""];
  "sha256:0b6b8f8695152637f773cd3c7af8a5788b7999819ba073da8e48261070af3cff" -> "sha256:5ed026205a960cd027f1302e9d78d4baeb6bb1664587d25a9a6006f96d8abe35" [label=""];
  "sha256:5ed026205a960cd027f1302e9d78d4baeb6bb1664587d25a9a6006f96d8abe35" -> "sha256:329043782ea2f01b85be083f362c02cd8abe42145d839ea453ddec0ca98b72c1" [label=""];
  "sha256:329043782ea2f01b85be083f362c02cd8abe42145d839ea453ddec0ca98b72c1" -> "sha256:04ecfff79ec886682ff29481090cc604121f0c760d729185c7e81ca7a3f7b30e" [label=""];
  "sha256:b4b9275e3cc3c39fb5bcbc217a32bf85043fed08a53d00a17badde5163555644" -> "sha256:04ecfff79ec886682ff29481090cc604121f0c760d729185c7e81ca7a3f7b30e" [label=""];
  "sha256:04ecfff79ec886682ff29481090cc604121f0c760d729185c7e81ca7a3f7b30e" -> "sha256:e0a320f96d2c6da8edcd7a383207199b0bb3a23b87fbcf413478a5db782c0bd0" [label=""];
}

