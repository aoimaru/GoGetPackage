[app/sources/227815929.Dockerfile]
digraph {
  "sha256:12bd236f3ba7ed87631b52ed58b51dc99a23d97eed4442044167d8d58763fe71" [label="docker-image://docker.io/pritunl/archlinux:latest" shape="ellipse"];
  "sha256:ad847e0473bd266c76ed75c46c85182b70f2f8999c1dd052a6050482dffa9b39" [label="/bin/sh -c echo 'Server = https://mirrors.kernel.org/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist" shape="box"];
  "sha256:48db4b02d58be1ed40bf10fcc390776b5ae9931de93f492884c6e4cf8d5f2618" [label="/bin/sh -c pacman -Syyu --noconfirm" shape="box"];
  "sha256:7302613eb9b7192a38c6c6d573b1f2cb9e1ccdd04aee2c4dd83541c80cfe937a" [label="/bin/sh -c pacman -S --noconfirm --needed go go-tools zeromq jupyter jupyter-notebook git base-devel mathjax pandoc texlive-core wget" shape="box"];
  "sha256:3665b2bb9e8d535b8b88ba593db35311c4666dc143bc2af030fd24ce6ca6e9b1" [label="/bin/sh -c pacman -S --needed --noconfirm ipython python-ipykernel python-setuptools python-jinja python-pyzmq python-jsonschema python-mistune python-pygments python-setuptools python2-setuptools npm jupyter-nbconvert qt5-svg python-pyqt5 python-sip" shape="box"];
  "sha256:8d3542079e965c6e05825f814b35204aef50874be3340d6f883398c02326607e" [label="/bin/sh -c usermod -d /tmp/ nobody" shape="box"];
  "sha256:35996b06bd3a742b9953c3d6ec1487c70a79d46c933f3090b6b39c396c24c388" [label="/bin/sh -c cd /tmp && git clone https://aur.archlinux.org/jupyterlab-git.git" shape="box"];
  "sha256:ea9e3b72e47195bc8eda74a90ebf6f6d4d25a3027d2151cfb844400b1b1ee7d8" [label="/bin/sh -c cd /tmp/jupyterlab-git/ && makepkg --noconfirm" shape="box"];
  "sha256:3ebaf121b7491bf6b840bd0113e213565b2f0cad8181d9ce739bf0e03e33c451" [label="/bin/sh -c cd /tmp/jupyterlab-git && pacman -U --noconfirm *.pkg.tar.xz" shape="box"];
  "sha256:9e13499e2fa9a17367dce5ea1b6bd53a87ad13bf421ed8f3f61ab8a12612a464" [label="/bin/sh -c mkdir /var/jupyter &&     useradd -M -U -d /var/jupyter jupyter &&     mkdir /var/user &&     chown jupyter -R /var/user &&     chown jupyter -R /var/jupyter" shape="box"];
  "sha256:442d35a70e26ab8af29322cd3c94f8b24cfdf75f732e50982622b4710e56ec17" [label="/bin/sh -c mkdir /tmp/go" shape="box"];
  "sha256:5ac93aa0dc82ee1549313611cd4598d1bccd53a2dd0135803d091ad07f007923" [label="/bin/sh -c GOPATH=/tmp/go     go get github.com/fabian-z/gopherlab" shape="box"];
  "sha256:9742c4c6c1b676e5cb6c93a1d9b6559ec17478d9a01e9ce2d23a15ee22200682" [label="/bin/sh -c mkdir -p ~/.local/share/jupyter/kernels/gopherlab" shape="box"];
  "sha256:44f222c25f35550908213d2ecc8cb27da702cb0b1488303b7aa47d26a581d2aa" [label="/bin/sh -c cp -a /tmp/go/src/github.com/fabian-z/gopherlab/kernel/* ~/.local/share/jupyter/kernels/gopherlab/" shape="box"];
  "sha256:16627e13fa1a1b0b9e47616ff5d1baa281ed6ca7933299e3c175a932997f1048" [label="/bin/sh -c cp -a /tmp/go/bin/gopherlab ~/.local/share/jupyter/kernels/gopherlab/" shape="box"];
  "sha256:5d68acf890602a34980da905b527a21145a16b57ca4215c08759c8f523fada3e" [label="/bin/sh -c sed -i \"s#/go/bin/gopherlab#$HOME/.local/share/jupyter/kernels/gopherlab/gopherlab#g\" $HOME/.local/share/jupyter/kernels/gopherlab/kernel.json" shape="box"];
  "sha256:d084cbd8460e150267bbd3f3d2ebcf4a6c70777d8c79013b0100fb5edf48b25d" [label="/bin/sh -c jupyter serverextension enable --py jupyterlab" shape="box"];
  "sha256:e8687e6a379772b2946bb8faefdeae6dc7244ff8beee2fc7573fb23bb6c9bc0b" [label="mkdir{path=/var/user}" shape="note"];
  "sha256:aafd2695dc1419bd5b5257a69ca94ecf86bc86c47d414d1703d4c440155be1fe" [label="sha256:aafd2695dc1419bd5b5257a69ca94ecf86bc86c47d414d1703d4c440155be1fe" shape="plaintext"];
  "sha256:12bd236f3ba7ed87631b52ed58b51dc99a23d97eed4442044167d8d58763fe71" -> "sha256:ad847e0473bd266c76ed75c46c85182b70f2f8999c1dd052a6050482dffa9b39" [label=""];
  "sha256:ad847e0473bd266c76ed75c46c85182b70f2f8999c1dd052a6050482dffa9b39" -> "sha256:48db4b02d58be1ed40bf10fcc390776b5ae9931de93f492884c6e4cf8d5f2618" [label=""];
  "sha256:48db4b02d58be1ed40bf10fcc390776b5ae9931de93f492884c6e4cf8d5f2618" -> "sha256:7302613eb9b7192a38c6c6d573b1f2cb9e1ccdd04aee2c4dd83541c80cfe937a" [label=""];
  "sha256:7302613eb9b7192a38c6c6d573b1f2cb9e1ccdd04aee2c4dd83541c80cfe937a" -> "sha256:3665b2bb9e8d535b8b88ba593db35311c4666dc143bc2af030fd24ce6ca6e9b1" [label=""];
  "sha256:3665b2bb9e8d535b8b88ba593db35311c4666dc143bc2af030fd24ce6ca6e9b1" -> "sha256:8d3542079e965c6e05825f814b35204aef50874be3340d6f883398c02326607e" [label=""];
  "sha256:8d3542079e965c6e05825f814b35204aef50874be3340d6f883398c02326607e" -> "sha256:35996b06bd3a742b9953c3d6ec1487c70a79d46c933f3090b6b39c396c24c388" [label=""];
  "sha256:35996b06bd3a742b9953c3d6ec1487c70a79d46c933f3090b6b39c396c24c388" -> "sha256:ea9e3b72e47195bc8eda74a90ebf6f6d4d25a3027d2151cfb844400b1b1ee7d8" [label=""];
  "sha256:ea9e3b72e47195bc8eda74a90ebf6f6d4d25a3027d2151cfb844400b1b1ee7d8" -> "sha256:3ebaf121b7491bf6b840bd0113e213565b2f0cad8181d9ce739bf0e03e33c451" [label=""];
  "sha256:3ebaf121b7491bf6b840bd0113e213565b2f0cad8181d9ce739bf0e03e33c451" -> "sha256:9e13499e2fa9a17367dce5ea1b6bd53a87ad13bf421ed8f3f61ab8a12612a464" [label=""];
  "sha256:9e13499e2fa9a17367dce5ea1b6bd53a87ad13bf421ed8f3f61ab8a12612a464" -> "sha256:442d35a70e26ab8af29322cd3c94f8b24cfdf75f732e50982622b4710e56ec17" [label=""];
  "sha256:442d35a70e26ab8af29322cd3c94f8b24cfdf75f732e50982622b4710e56ec17" -> "sha256:5ac93aa0dc82ee1549313611cd4598d1bccd53a2dd0135803d091ad07f007923" [label=""];
  "sha256:5ac93aa0dc82ee1549313611cd4598d1bccd53a2dd0135803d091ad07f007923" -> "sha256:9742c4c6c1b676e5cb6c93a1d9b6559ec17478d9a01e9ce2d23a15ee22200682" [label=""];
  "sha256:9742c4c6c1b676e5cb6c93a1d9b6559ec17478d9a01e9ce2d23a15ee22200682" -> "sha256:44f222c25f35550908213d2ecc8cb27da702cb0b1488303b7aa47d26a581d2aa" [label=""];
  "sha256:44f222c25f35550908213d2ecc8cb27da702cb0b1488303b7aa47d26a581d2aa" -> "sha256:16627e13fa1a1b0b9e47616ff5d1baa281ed6ca7933299e3c175a932997f1048" [label=""];
  "sha256:16627e13fa1a1b0b9e47616ff5d1baa281ed6ca7933299e3c175a932997f1048" -> "sha256:5d68acf890602a34980da905b527a21145a16b57ca4215c08759c8f523fada3e" [label=""];
  "sha256:5d68acf890602a34980da905b527a21145a16b57ca4215c08759c8f523fada3e" -> "sha256:d084cbd8460e150267bbd3f3d2ebcf4a6c70777d8c79013b0100fb5edf48b25d" [label=""];
  "sha256:d084cbd8460e150267bbd3f3d2ebcf4a6c70777d8c79013b0100fb5edf48b25d" -> "sha256:e8687e6a379772b2946bb8faefdeae6dc7244ff8beee2fc7573fb23bb6c9bc0b" [label=""];
  "sha256:e8687e6a379772b2946bb8faefdeae6dc7244ff8beee2fc7573fb23bb6c9bc0b" -> "sha256:aafd2695dc1419bd5b5257a69ca94ecf86bc86c47d414d1703d4c440155be1fe" [label=""];
}

