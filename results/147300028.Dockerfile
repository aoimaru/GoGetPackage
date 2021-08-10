[app/sources/147300028.Dockerfile]
digraph {
  "sha256:184fb090ce5af241d1a302136666cdb878f5be373f1fa583a6bb0a1031c5f555" [label="docker-image://docker.io/pandoc/core:edge" shape="ellipse"];
  "sha256:410c88aa9f118dd1b74ba73d2e490aa4180a999a68a2630ba4a95c9b0d2c0d4f" [label="/bin/sh -c apk --no-cache add         freetype         fontconfig         gnupg         gzip         librsvg         perl         tar         wget" shape="box"];
  "sha256:815f0ef52e5ba504ee509d0c905cf4c5b7da369135d8c30c37e88731f8fbcda6" [label="mkdir{path=/root}" shape="note"];
  "sha256:4e86ad947299484aa64ba3291e8284b9b6ca45606e9fd9494f398103fafca85d" [label="local://context" shape="ellipse"];
  "sha256:05e45e1effd7554802a521bb2a4b2685b23533215db00792557804f305c821be" [label="copy{src=/latex-common/texlive.profile, dest=/root/texlive.profile}" shape="note"];
  "sha256:197be618aec72e4f795d17fe2437ef3535703da14757c57594f61d54a78a5058" [label="copy{src=/latex-common/install-texlive.sh, dest=/root/install-texlive.sh}" shape="note"];
  "sha256:731746ebde98792e3c73074916543868dc640235c13b9ef7fc01167ce479be9f" [label="/bin/sh -c /root/install-texlive.sh" shape="box"];
  "sha256:0c063e1f35f437becaef1f4c95f0198c7593f2b054f6ce051ff176c7139a96db" [label="copy{src=/latex-common/install-tex-packages.sh, dest=/root/install-tex-packages.sh}" shape="note"];
  "sha256:9e5d568f2439699101bc7e8bc1a8910916730f53b1cd5dd6d6ef16a0bcf9a7ad" [label="/bin/sh -c /root/install-tex-packages.sh" shape="box"];
  "sha256:d6a7973036e39eb5ae541c15c21cce8c463d0f5db69eda93cc71635fb722067f" [label="/bin/sh -c rm -f /root/texlive.profile           /root/install-texlive.sh           /root/install-tex-packages.sh" shape="box"];
  "sha256:f57ade71e702b04cfd8b5a1248e781de627c70c99d78617f66a4ddc4bc1963c2" [label="/bin/sh -c wget --quiet https://downloads.sourceforge.net/project/biblatex-biber/biblatex-biber/development/binaries/Linux-musl/biber-linux_x86_64-musl.tar.gz   && tar -xf biber-linux_x86_64-musl.tar.gz   && mv biber-linux_x86_64-musl /opt/texlive/texdir/bin/x86_64-linuxmusl/biber   && rm -f biber-linux_x86_64-musl.tar.gz   && tlmgr uninstall --no-depends biblatex   && rm -rf /opt/texlive/texdir/tlpkg/backups/*   && wget --quiet https://downloads.sourceforge.net/project/biblatex/development/biblatex-3.13.tgz   && tar -xf biblatex-3.13.tgz   && rm biblatex-3.13.tgz   && cd /root/biblatex   && mv latex /opt/texlive/texmf-local/tex/latex/biblatex   && mv bibtex/bst /opt/texlive/texmf-local/bibtex/bst/biblatex   && mv bibtex/bib /opt/texlive/texmf-local/bibtex/bib/biblatex   && texhash   && cd /root   && rm -rf biblatex*" shape="box"];
  "sha256:69f9fa5fba5beab3cc1e6d45457404e3c8e53707f32bf69ef84cc3fe07c32b45" [label="mkdir{path=/data}" shape="note"];
  "sha256:bfd2d1950c9e7800a62a0caf7600b8f35b1070e1f8f6c0d2dec672e5987c9f28" [label="sha256:bfd2d1950c9e7800a62a0caf7600b8f35b1070e1f8f6c0d2dec672e5987c9f28" shape="plaintext"];
  "sha256:184fb090ce5af241d1a302136666cdb878f5be373f1fa583a6bb0a1031c5f555" -> "sha256:410c88aa9f118dd1b74ba73d2e490aa4180a999a68a2630ba4a95c9b0d2c0d4f" [label=""];
  "sha256:410c88aa9f118dd1b74ba73d2e490aa4180a999a68a2630ba4a95c9b0d2c0d4f" -> "sha256:815f0ef52e5ba504ee509d0c905cf4c5b7da369135d8c30c37e88731f8fbcda6" [label=""];
  "sha256:815f0ef52e5ba504ee509d0c905cf4c5b7da369135d8c30c37e88731f8fbcda6" -> "sha256:05e45e1effd7554802a521bb2a4b2685b23533215db00792557804f305c821be" [label=""];
  "sha256:4e86ad947299484aa64ba3291e8284b9b6ca45606e9fd9494f398103fafca85d" -> "sha256:05e45e1effd7554802a521bb2a4b2685b23533215db00792557804f305c821be" [label=""];
  "sha256:05e45e1effd7554802a521bb2a4b2685b23533215db00792557804f305c821be" -> "sha256:197be618aec72e4f795d17fe2437ef3535703da14757c57594f61d54a78a5058" [label=""];
  "sha256:4e86ad947299484aa64ba3291e8284b9b6ca45606e9fd9494f398103fafca85d" -> "sha256:197be618aec72e4f795d17fe2437ef3535703da14757c57594f61d54a78a5058" [label=""];
  "sha256:197be618aec72e4f795d17fe2437ef3535703da14757c57594f61d54a78a5058" -> "sha256:731746ebde98792e3c73074916543868dc640235c13b9ef7fc01167ce479be9f" [label=""];
  "sha256:731746ebde98792e3c73074916543868dc640235c13b9ef7fc01167ce479be9f" -> "sha256:0c063e1f35f437becaef1f4c95f0198c7593f2b054f6ce051ff176c7139a96db" [label=""];
  "sha256:4e86ad947299484aa64ba3291e8284b9b6ca45606e9fd9494f398103fafca85d" -> "sha256:0c063e1f35f437becaef1f4c95f0198c7593f2b054f6ce051ff176c7139a96db" [label=""];
  "sha256:0c063e1f35f437becaef1f4c95f0198c7593f2b054f6ce051ff176c7139a96db" -> "sha256:9e5d568f2439699101bc7e8bc1a8910916730f53b1cd5dd6d6ef16a0bcf9a7ad" [label=""];
  "sha256:9e5d568f2439699101bc7e8bc1a8910916730f53b1cd5dd6d6ef16a0bcf9a7ad" -> "sha256:d6a7973036e39eb5ae541c15c21cce8c463d0f5db69eda93cc71635fb722067f" [label=""];
  "sha256:d6a7973036e39eb5ae541c15c21cce8c463d0f5db69eda93cc71635fb722067f" -> "sha256:f57ade71e702b04cfd8b5a1248e781de627c70c99d78617f66a4ddc4bc1963c2" [label=""];
  "sha256:f57ade71e702b04cfd8b5a1248e781de627c70c99d78617f66a4ddc4bc1963c2" -> "sha256:69f9fa5fba5beab3cc1e6d45457404e3c8e53707f32bf69ef84cc3fe07c32b45" [label=""];
  "sha256:69f9fa5fba5beab3cc1e6d45457404e3c8e53707f32bf69ef84cc3fe07c32b45" -> "sha256:bfd2d1950c9e7800a62a0caf7600b8f35b1070e1f8f6c0d2dec672e5987c9f28" [label=""];
}

