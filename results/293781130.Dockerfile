[app/sources/293781130.Dockerfile]
digraph {
  "sha256:b2935eee382bdf36bf64fd0f5082d105f31e8fc57dca138604dda67a073bea93" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:8258cd702deb5df7fc526cb5924191b2115bb84adf71a9007282f36942d71fd3" [label="/bin/sh -c apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get -y     install sudo xvfb     git wget python-virtualenv python-numpy python-scipy netpbm     python-pyqt5 ghostscript libffi-dev libjpeg-turbo-progs     python-dev python-setuptools     python3-dev cmake      libtiff5-dev libjpeg8-dev zlib1g-dev     libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev     python-tk python3-tk     libharfbuzz-dev libfribidi-dev && apt-get clean" shape="box"];
  "sha256:d8bcc441fc299f2e8eca418dedaf28b677317d0b401761961824ba742947e37c" [label="/bin/sh -c useradd pillow && addgroup pillow sudo &&     mkdir /home/pillow && chown pillow:pillow /home/pillow" shape="box"];
  "sha256:66ebde08a919724ad7e6c654cca05974625fb8a0230c7fede6aac1d1177c4d25" [label="/bin/sh -c virtualenv -p /usr/bin/python2.7 --system-site-packages /vpy &&     /vpy/bin/pip install --upgrade pip &&     /vpy/bin/pip install cffi olefile pytest pytest-cov &&     /vpy/bin/pip install numpy --only-binary=:all: || true &&     chown -R pillow:pillow /vpy &&     virtualenv -p /usr/bin/python3.5 --system-site-packages /vpy3 &&     /vpy3/bin/pip install --upgrade pip &&     /vpy3/bin/pip install cffi olefile pytest pytest-cov &&     /vpy3/bin/pip install numpy --only-binary=:all: || true &&     chown -R pillow:pillow /vpy3" shape="box"];
  "sha256:4e0d8e99ca49123777f8f9e0e10ee74aec5e61a5c469a2ae4fdbbfb0d76c984c" [label="copy{src=/depends, dest=/depends}" shape="note"];
  "sha256:8d0d727f331e6a5424dcf298dbe80247ff3c54207053dfb9041000f5e4047341" [label="/bin/sh -c cd /depends && ./install_openjpeg.sh && ./install_imagequant.sh && ./install_raqm.sh" shape="box"];
  "sha256:80bdb975a48f13396174bb3a501c8cd8e3126bc5e0a7bbaa65e41d1e6cbbf63d" [label="sha256:80bdb975a48f13396174bb3a501c8cd8e3126bc5e0a7bbaa65e41d1e6cbbf63d" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:8258cd702deb5df7fc526cb5924191b2115bb84adf71a9007282f36942d71fd3" [label=""];
  "sha256:8258cd702deb5df7fc526cb5924191b2115bb84adf71a9007282f36942d71fd3" -> "sha256:d8bcc441fc299f2e8eca418dedaf28b677317d0b401761961824ba742947e37c" [label=""];
  "sha256:d8bcc441fc299f2e8eca418dedaf28b677317d0b401761961824ba742947e37c" -> "sha256:66ebde08a919724ad7e6c654cca05974625fb8a0230c7fede6aac1d1177c4d25" [label=""];
  "sha256:66ebde08a919724ad7e6c654cca05974625fb8a0230c7fede6aac1d1177c4d25" -> "sha256:4e0d8e99ca49123777f8f9e0e10ee74aec5e61a5c469a2ae4fdbbfb0d76c984c" [label=""];
  "sha256:b2935eee382bdf36bf64fd0f5082d105f31e8fc57dca138604dda67a073bea93" -> "sha256:4e0d8e99ca49123777f8f9e0e10ee74aec5e61a5c469a2ae4fdbbfb0d76c984c" [label=""];
  "sha256:4e0d8e99ca49123777f8f9e0e10ee74aec5e61a5c469a2ae4fdbbfb0d76c984c" -> "sha256:8d0d727f331e6a5424dcf298dbe80247ff3c54207053dfb9041000f5e4047341" [label=""];
  "sha256:8d0d727f331e6a5424dcf298dbe80247ff3c54207053dfb9041000f5e4047341" -> "sha256:80bdb975a48f13396174bb3a501c8cd8e3126bc5e0a7bbaa65e41d1e6cbbf63d" [label=""];
}

