[app/sources/454019794.Dockerfile]
digraph {
  "sha256:189dfc7e2558e844b8ab0ff6d362bc2c530d37020f6c3e0a37bca32824ecda20" [label="docker-image://docker.io/library/node:0.10-slim" shape="ellipse"];
  "sha256:c13f17c6062342ee9041362b26466db8eeb62896fe3eb96cbf34d6f95f584176" [label="/bin/sh -c mkdir /home/angular" shape="box"];
  "sha256:990719b966decce89ad59b888c8073e04e9ede9833d4e232642d8e15b17c1ed7" [label="/bin/sh -c apt-get -y update     && apt-get install -y         git         bzip2         libfreetype6         libfontconfig         python         make         build-essential         && apt-get clean" shape="box"];
  "sha256:82fe63c3932d55353e3d74ac2a16b3f4f3b98aca0e1d2f04aa9328c5d18e7424" [label="/bin/sh -c npm install gulpjs/gulp-cli#4.0 -g && npm install bower -g" shape="box"];
  "sha256:c176cbcb4af09df4560d57ad22bf65f58d07af5d76baf658cad3c0e4a53e2fde" [label="mkdir{path=/home/angular}" shape="note"];
  "sha256:dadc9a76370a70d029dc29f488584e7f9ab989d8bd67a6ba71e12f7455fde74f" [label="local://context" shape="ellipse"];
  "sha256:e920657c19077448e2ad6388ea404e7dfd9e10a893421539aa2ed2d26de94234" [label="copy{src=/package.json, dest=/home/angular/package.json}" shape="note"];
  "sha256:8ac9450b65cdd8a798e99af5ed8a2dc864fbeb676812b5b85171a3631bdf4541" [label="/bin/sh -c npm install" shape="box"];
  "sha256:0cff46f8bbdc8ce1de7cbbe2fcf39787683d0856ec13c1cad59bf77448f0c003" [label="copy{src=/bower.json, dest=/home/angular/bower.json}" shape="note"];
  "sha256:2cce971b33a201d267634ac42445cbc7cc85c06d95f1d4acf013999bead31498" [label="copy{src=/.bowerrc, dest=/home/angular/.bowerrc}" shape="note"];
  "sha256:9017beab1255eefcabea0563411f5d975b3c7c868edc6b172843404aa89b4e44" [label="/bin/sh -c bower install --config.interactive=false --allow-root" shape="box"];
  "sha256:0486fcfebd949e4ee314aeb9f0086346f4630f4cfc9511dd86f332ddd29caae3" [label="copy{src=/, dest=/home/angular}" shape="note"];
  "sha256:02a19b32cc61fd5bb3f451419ddae9b345932f7d70ef18714c255bfcbbaf637b" [label="sha256:02a19b32cc61fd5bb3f451419ddae9b345932f7d70ef18714c255bfcbbaf637b" shape="plaintext"];
  "sha256:189dfc7e2558e844b8ab0ff6d362bc2c530d37020f6c3e0a37bca32824ecda20" -> "sha256:c13f17c6062342ee9041362b26466db8eeb62896fe3eb96cbf34d6f95f584176" [label=""];
  "sha256:c13f17c6062342ee9041362b26466db8eeb62896fe3eb96cbf34d6f95f584176" -> "sha256:990719b966decce89ad59b888c8073e04e9ede9833d4e232642d8e15b17c1ed7" [label=""];
  "sha256:990719b966decce89ad59b888c8073e04e9ede9833d4e232642d8e15b17c1ed7" -> "sha256:82fe63c3932d55353e3d74ac2a16b3f4f3b98aca0e1d2f04aa9328c5d18e7424" [label=""];
  "sha256:82fe63c3932d55353e3d74ac2a16b3f4f3b98aca0e1d2f04aa9328c5d18e7424" -> "sha256:c176cbcb4af09df4560d57ad22bf65f58d07af5d76baf658cad3c0e4a53e2fde" [label=""];
  "sha256:c176cbcb4af09df4560d57ad22bf65f58d07af5d76baf658cad3c0e4a53e2fde" -> "sha256:e920657c19077448e2ad6388ea404e7dfd9e10a893421539aa2ed2d26de94234" [label=""];
  "sha256:dadc9a76370a70d029dc29f488584e7f9ab989d8bd67a6ba71e12f7455fde74f" -> "sha256:e920657c19077448e2ad6388ea404e7dfd9e10a893421539aa2ed2d26de94234" [label=""];
  "sha256:e920657c19077448e2ad6388ea404e7dfd9e10a893421539aa2ed2d26de94234" -> "sha256:8ac9450b65cdd8a798e99af5ed8a2dc864fbeb676812b5b85171a3631bdf4541" [label=""];
  "sha256:8ac9450b65cdd8a798e99af5ed8a2dc864fbeb676812b5b85171a3631bdf4541" -> "sha256:0cff46f8bbdc8ce1de7cbbe2fcf39787683d0856ec13c1cad59bf77448f0c003" [label=""];
  "sha256:dadc9a76370a70d029dc29f488584e7f9ab989d8bd67a6ba71e12f7455fde74f" -> "sha256:0cff46f8bbdc8ce1de7cbbe2fcf39787683d0856ec13c1cad59bf77448f0c003" [label=""];
  "sha256:0cff46f8bbdc8ce1de7cbbe2fcf39787683d0856ec13c1cad59bf77448f0c003" -> "sha256:2cce971b33a201d267634ac42445cbc7cc85c06d95f1d4acf013999bead31498" [label=""];
  "sha256:dadc9a76370a70d029dc29f488584e7f9ab989d8bd67a6ba71e12f7455fde74f" -> "sha256:2cce971b33a201d267634ac42445cbc7cc85c06d95f1d4acf013999bead31498" [label=""];
  "sha256:2cce971b33a201d267634ac42445cbc7cc85c06d95f1d4acf013999bead31498" -> "sha256:9017beab1255eefcabea0563411f5d975b3c7c868edc6b172843404aa89b4e44" [label=""];
  "sha256:9017beab1255eefcabea0563411f5d975b3c7c868edc6b172843404aa89b4e44" -> "sha256:0486fcfebd949e4ee314aeb9f0086346f4630f4cfc9511dd86f332ddd29caae3" [label=""];
  "sha256:dadc9a76370a70d029dc29f488584e7f9ab989d8bd67a6ba71e12f7455fde74f" -> "sha256:0486fcfebd949e4ee314aeb9f0086346f4630f4cfc9511dd86f332ddd29caae3" [label=""];
  "sha256:0486fcfebd949e4ee314aeb9f0086346f4630f4cfc9511dd86f332ddd29caae3" -> "sha256:02a19b32cc61fd5bb3f451419ddae9b345932f7d70ef18714c255bfcbbaf637b" [label=""];
}

