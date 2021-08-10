[app/sources/204066068.Dockerfile]
digraph {
  "sha256:39fd7941d3b250de4670872f35b17ba5ad4725dbdb0ee6772c600503a83b08a3" [label="docker-image://docker.io/library/python:2.7.12-alpine" shape="ellipse"];
  "sha256:de55c58a870d8455cc7806ff4ea62a25f112e9bdea75ca1f51bdc633968f47ba" [label="/bin/sh -c mkdir -p $PYTHON_PATH" shape="box"];
  "sha256:7425466f7dc681cc9a297c51c12d1120ed95da0df224b128a309ef2ecf211401" [label="mkdir{path=/python}" shape="note"];
  "sha256:d0e85bfebd8471f3208f18e45c21b1bb2e12330fc3889be2f58da7098bcf0b37" [label="local://context" shape="ellipse"];
  "sha256:61562faf4564fade0987b3d83f0b567e9faab489533015c0137da0c05293f84d" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:da0cde774ecedcd91d71affc8b478515eeb481c14a885a961853dd8360e1e090" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:b5e8b5604334dba5bf6e7b274bb10caa0620a67a50e2e13de5bf435f6fd78df0" [label="sha256:b5e8b5604334dba5bf6e7b274bb10caa0620a67a50e2e13de5bf435f6fd78df0" shape="plaintext"];
  "sha256:39fd7941d3b250de4670872f35b17ba5ad4725dbdb0ee6772c600503a83b08a3" -> "sha256:de55c58a870d8455cc7806ff4ea62a25f112e9bdea75ca1f51bdc633968f47ba" [label=""];
  "sha256:de55c58a870d8455cc7806ff4ea62a25f112e9bdea75ca1f51bdc633968f47ba" -> "sha256:7425466f7dc681cc9a297c51c12d1120ed95da0df224b128a309ef2ecf211401" [label=""];
  "sha256:7425466f7dc681cc9a297c51c12d1120ed95da0df224b128a309ef2ecf211401" -> "sha256:61562faf4564fade0987b3d83f0b567e9faab489533015c0137da0c05293f84d" [label=""];
  "sha256:d0e85bfebd8471f3208f18e45c21b1bb2e12330fc3889be2f58da7098bcf0b37" -> "sha256:61562faf4564fade0987b3d83f0b567e9faab489533015c0137da0c05293f84d" [label=""];
  "sha256:61562faf4564fade0987b3d83f0b567e9faab489533015c0137da0c05293f84d" -> "sha256:da0cde774ecedcd91d71affc8b478515eeb481c14a885a961853dd8360e1e090" [label=""];
  "sha256:da0cde774ecedcd91d71affc8b478515eeb481c14a885a961853dd8360e1e090" -> "sha256:b5e8b5604334dba5bf6e7b274bb10caa0620a67a50e2e13de5bf435f6fd78df0" [label=""];
}

