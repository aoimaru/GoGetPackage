[app/sources/354984041.Dockerfile]
digraph {
  "sha256:41d64b45ac88ec4df4c503946d6744433ff9e2179d15c46678c79cbf5f704221" [label="docker-image://docker.io/archlinux/base:latest" shape="ellipse"];
  "sha256:c2f15f62c3a4a123fabffa1455b73dc96933e7889ff421e3845cf9fe2cf9b3ce" [label="/bin/sh -c pacman -Sy --noconfirm base-devel jupyter gnuplot maxima" shape="box"];
  "sha256:81b0ae49bf83a0998ade0aaffe083bd742509136740b7b3e2d183fe8d486c74e" [label="/bin/sh -c useradd --create-home --shell=/bin/false --uid=${NB_UID} ${NB_USER}" shape="box"];
  "sha256:ce8bde303e3553d6bb1def6773ba44ccbf34fd0e103fe51ae3935b4319235b38" [label="mkdir{path=/home/mj/maxima-jupyter}" shape="note"];
  "sha256:d9b7d94de3c33d927aa2bd27d83b465ae3b20dcdbda1380a659e6d637e13ef42" [label="local://context" shape="ellipse"];
  "sha256:cf6bb1213c8c5ee7d089848fb2ccc8b95a64615e0f7072ae328f91fd759fd3fc" [label="copy{src=/, dest=/home/mj/maxima-jupyter}" shape="note"];
  "sha256:e13f1fc97fa23164a90eeac77736007113e40e55cdff371bb691a4dc7e65bcbc" [label="copy{src=/maxima.js, dest=/usr/lib/python3.7/site-packages/notebook/static/components/codemirror/mode/maxima}" shape="note"];
  "sha256:a36e678407cf652eea7e84b50e61ea2fa16457197962079e1696a7b04652eaca" [label="copy{src=/maxima_lexer.py, dest=/usr/lib/python3.7/site-packages/pygments/lexers}" shape="note"];
  "sha256:e7fe1cf7c9b046c2eb75c866f6afcf3763b33803e2f42c8c7fdf892194fc7ee9" [label="/bin/sh -c patch /usr/lib/python3.7/site-packages/notebook/static/components/codemirror/mode/meta.js codemirror-mode-meta-patch" shape="box"];
  "sha256:0063fc38a26a6b4efbda77e51a4bfb168fb617e6b44bfbaee734a14ddbb8ec08" [label="/bin/sh -c patch /usr/lib/python3.7/site-packages/pygments/lexers/_mapping.py pygments-mapping-patch" shape="box"];
  "sha256:a0b01c390eb1305af1113394cf97078ed3e62660c8d7f5f38cade8a4e685e0af" [label="/bin/sh -c chown -R ${NB_UID} ${HOME} && chgrp -R ${NB_USER} ${HOME}" shape="box"];
  "sha256:e7b1879d8add9ea375784511f0b751439b4f8334f44418806186c1ae69fd753f" [label="/bin/sh -c curl -O https://beta.quicklisp.org/quicklisp.lisp" shape="box"];
  "sha256:ab4168732847f64c44fefd55419d391e5a9823cb2c578c39eb22961948affb39" [label="/bin/sh -c sbcl --load quicklisp.lisp --load docker-install-quicklisp.lisp" shape="box"];
  "sha256:9f63949b4cf22691cc2e80724ddb64304981e5553878defaa734c909de8efceb" [label="/bin/sh -c python install-maxima-jupyter.py --user --root=`pwd`" shape="box"];
  "sha256:fa04a1aca3fcb3a3365279bc64d338b720b45ac21ca0215ec1ce231410a40abd" [label="/bin/sh -c echo quit | jupyter-console --no-confirm-exit --kernel=maxima --ZMQTerminalInteractiveShell.kernel_timeout=240" shape="box"];
  "sha256:736ae053da9a284392eb0597d712b9ad11d2d4ca550ac08b131f83d77d092781" [label="mkdir{path=/home/mj/maxima-jupyter/examples}" shape="note"];
  "sha256:b31c676900b61f44a71c07e1e1d61f40e7268c39826a45b126fb48031862ede5" [label="sha256:b31c676900b61f44a71c07e1e1d61f40e7268c39826a45b126fb48031862ede5" shape="plaintext"];
  "sha256:41d64b45ac88ec4df4c503946d6744433ff9e2179d15c46678c79cbf5f704221" -> "sha256:c2f15f62c3a4a123fabffa1455b73dc96933e7889ff421e3845cf9fe2cf9b3ce" [label=""];
  "sha256:c2f15f62c3a4a123fabffa1455b73dc96933e7889ff421e3845cf9fe2cf9b3ce" -> "sha256:81b0ae49bf83a0998ade0aaffe083bd742509136740b7b3e2d183fe8d486c74e" [label=""];
  "sha256:81b0ae49bf83a0998ade0aaffe083bd742509136740b7b3e2d183fe8d486c74e" -> "sha256:ce8bde303e3553d6bb1def6773ba44ccbf34fd0e103fe51ae3935b4319235b38" [label=""];
  "sha256:ce8bde303e3553d6bb1def6773ba44ccbf34fd0e103fe51ae3935b4319235b38" -> "sha256:cf6bb1213c8c5ee7d089848fb2ccc8b95a64615e0f7072ae328f91fd759fd3fc" [label=""];
  "sha256:d9b7d94de3c33d927aa2bd27d83b465ae3b20dcdbda1380a659e6d637e13ef42" -> "sha256:cf6bb1213c8c5ee7d089848fb2ccc8b95a64615e0f7072ae328f91fd759fd3fc" [label=""];
  "sha256:cf6bb1213c8c5ee7d089848fb2ccc8b95a64615e0f7072ae328f91fd759fd3fc" -> "sha256:e13f1fc97fa23164a90eeac77736007113e40e55cdff371bb691a4dc7e65bcbc" [label=""];
  "sha256:d9b7d94de3c33d927aa2bd27d83b465ae3b20dcdbda1380a659e6d637e13ef42" -> "sha256:e13f1fc97fa23164a90eeac77736007113e40e55cdff371bb691a4dc7e65bcbc" [label=""];
  "sha256:e13f1fc97fa23164a90eeac77736007113e40e55cdff371bb691a4dc7e65bcbc" -> "sha256:a36e678407cf652eea7e84b50e61ea2fa16457197962079e1696a7b04652eaca" [label=""];
  "sha256:d9b7d94de3c33d927aa2bd27d83b465ae3b20dcdbda1380a659e6d637e13ef42" -> "sha256:a36e678407cf652eea7e84b50e61ea2fa16457197962079e1696a7b04652eaca" [label=""];
  "sha256:a36e678407cf652eea7e84b50e61ea2fa16457197962079e1696a7b04652eaca" -> "sha256:e7fe1cf7c9b046c2eb75c866f6afcf3763b33803e2f42c8c7fdf892194fc7ee9" [label=""];
  "sha256:e7fe1cf7c9b046c2eb75c866f6afcf3763b33803e2f42c8c7fdf892194fc7ee9" -> "sha256:0063fc38a26a6b4efbda77e51a4bfb168fb617e6b44bfbaee734a14ddbb8ec08" [label=""];
  "sha256:0063fc38a26a6b4efbda77e51a4bfb168fb617e6b44bfbaee734a14ddbb8ec08" -> "sha256:a0b01c390eb1305af1113394cf97078ed3e62660c8d7f5f38cade8a4e685e0af" [label=""];
  "sha256:a0b01c390eb1305af1113394cf97078ed3e62660c8d7f5f38cade8a4e685e0af" -> "sha256:e7b1879d8add9ea375784511f0b751439b4f8334f44418806186c1ae69fd753f" [label=""];
  "sha256:e7b1879d8add9ea375784511f0b751439b4f8334f44418806186c1ae69fd753f" -> "sha256:ab4168732847f64c44fefd55419d391e5a9823cb2c578c39eb22961948affb39" [label=""];
  "sha256:ab4168732847f64c44fefd55419d391e5a9823cb2c578c39eb22961948affb39" -> "sha256:9f63949b4cf22691cc2e80724ddb64304981e5553878defaa734c909de8efceb" [label=""];
  "sha256:9f63949b4cf22691cc2e80724ddb64304981e5553878defaa734c909de8efceb" -> "sha256:fa04a1aca3fcb3a3365279bc64d338b720b45ac21ca0215ec1ce231410a40abd" [label=""];
  "sha256:fa04a1aca3fcb3a3365279bc64d338b720b45ac21ca0215ec1ce231410a40abd" -> "sha256:736ae053da9a284392eb0597d712b9ad11d2d4ca550ac08b131f83d77d092781" [label=""];
  "sha256:736ae053da9a284392eb0597d712b9ad11d2d4ca550ac08b131f83d77d092781" -> "sha256:b31c676900b61f44a71c07e1e1d61f40e7268c39826a45b126fb48031862ede5" [label=""];
}

