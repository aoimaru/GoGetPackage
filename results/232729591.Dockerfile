[app/sources/232729591.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:23439b1edc09548c1d013aca228af41ce8759f51a71e46adf6d54242954183af" [label="/bin/sh -c apk --no-cache add perl wget xz tar fontconfig-dev freetype-dev &&     mkdir /tmp/install-tl-unx &&     wget -qO - ftp://tug.org/historic/systems/texlive/2019/install-tl-unx.tar.gz |     tar -xz -C /tmp/install-tl-unx --strip-components=1 &&     printf \"%s\\n\"       \"selected_scheme scheme-basic\"       \"option_doc 0\"       \"option_src 0\"       > /tmp/install-tl-unx/texlive.profile &&     /tmp/install-tl-unx/install-tl       --profile=/tmp/install-tl-unx/texlive.profile &&     tlmgr install       collection-basic collection-latex       collection-latexrecommended collection-latexextra       collection-fontsrecommended collection-langjapanese       latexmk xetex &&     rm -fr /tmp/install-tl-unx &&     apk --no-cache del xz tar" shape="box"];
  "sha256:48f9622b193de84997974e0c9c19b159c1452401114746a678834304589a8a9c" [label="/bin/sh -c apk --no-cache add bash" shape="box"];
  "sha256:7763793844dc1ef2af32b02745178dc782ba0390777e5a0e5220d81215505289" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:99b408fd0d12ac4b7b459b79cbc567c8cf53bc66dc7b672b3003421e5bbba52c" [label="sha256:99b408fd0d12ac4b7b459b79cbc567c8cf53bc66dc7b672b3003421e5bbba52c" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:23439b1edc09548c1d013aca228af41ce8759f51a71e46adf6d54242954183af" [label=""];
  "sha256:23439b1edc09548c1d013aca228af41ce8759f51a71e46adf6d54242954183af" -> "sha256:48f9622b193de84997974e0c9c19b159c1452401114746a678834304589a8a9c" [label=""];
  "sha256:48f9622b193de84997974e0c9c19b159c1452401114746a678834304589a8a9c" -> "sha256:7763793844dc1ef2af32b02745178dc782ba0390777e5a0e5220d81215505289" [label=""];
  "sha256:7763793844dc1ef2af32b02745178dc782ba0390777e5a0e5220d81215505289" -> "sha256:99b408fd0d12ac4b7b459b79cbc567c8cf53bc66dc7b672b3003421e5bbba52c" [label=""];
}

