[app/sources/286127187.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:306c90f62008353dcad94d5fc7a2549e928baa533aa4facbefa3c81338b3a3ae" [label="/bin/sh -c apt-get -y update && apt-get install -y software-properties-common vim git ntp ntpdate python-opencv" shape="box"];
  "sha256:d73f5552ad94e630820cd28816094f955963230baa306a1082f9494dda832b76" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:d6e18a12b3f7cf2cc7ba757f5f8d663ef8946b2d8fd838c58a9b553ffb6e8137" [label="/bin/sh -c mkdir ~/.aws && echo \"[default]\" >> ~/.aws/config && echo \"region=us-east-1\" >> ~/.aws/config" shape="box"];
  "sha256:cf8b490bdfd024b68ea6e52df6d10edd05d2f54d493cc0938eae2e5a13ae5529" [label="/bin/sh -c echo \"[default]\" >> ~/.aws/credentials" shape="box"];
  "sha256:dd434cc22e4f4e5adf646455feeff2f0da47662a15277b8a8cff19f186dd47b4" [label="/bin/sh -c echo export TERM='xterm-256color' >> ~/.bashrc" shape="box"];
  "sha256:f071349695801d606076fc637af822090571296469225ae1e85568f61017dcdf" [label="/bin/sh -c echo export TERM='xterm-256color' >> ~/.profile" shape="box"];
  "sha256:3f2d963b9e99e2299ca080ae982064f4957f912f2cb641f5d53ed66c8aa17baf" [label="mkdir{path=/~}" shape="note"];
  "sha256:c458c887de385510c13d5e509d832844f746a0b677ab29840158344bdac54fdd" [label="/bin/sh -c git clone https://github.com/troylar/myvimrc.git myvimrc &&  cp myvimrc/.vimrc ~" shape="box"];
  "sha256:04e1f55dbe816874acac321607483df81897eb59cab49fe3cd939143bdf41bf8" [label="/bin/sh -c cp -r myvimrc/.vim ~" shape="box"];
  "sha256:f764a3530361f9196401c737210a9b931ef58e5930a38b36393c5b46c5520a1f" [label="/bin/sh -c cp -r myvimrc/.vim_runtime ~" shape="box"];
  "sha256:40f22427a84fdded2412e57f0c49152c9b00cc6840fa386c015210bc5ca0df1e" [label="/bin/sh -c service ntp restart" shape="box"];
  "sha256:c89021a30bf81da64144c742b02373c31302824323d3973578d0cc7e5c227713" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:2cb72e895c9b8e74c766f0adfa5acd56b4e6ab04395ae5c9a9f5771d9f8ed404" [label="/bin/sh -c virtualenv venv" shape="box"];
  "sha256:699c22c0e005cfd1e36066534aff2b8f9592e1288f2f9a9bd4f0812c773bd010" [label="/bin/sh -c source ./venv/bin/activate" shape="box"];
  "sha256:40dea383370dead8820c916ee8f6597c84135b066ab78b5586e0299ce700bb71" [label="mkdir{path=/mnt}" shape="note"];
  "sha256:ec1dec487c088a8b31ca32245cdd43767800e9fb58fc5b32d20218762a80184a" [label="/bin/sh -c usermod -a -G audio root" shape="box"];
  "sha256:a0061990e0b74fee96574bf854ded0ff76ce32b65ff35dbea13609dec9705eb7" [label="sha256:a0061990e0b74fee96574bf854ded0ff76ce32b65ff35dbea13609dec9705eb7" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:306c90f62008353dcad94d5fc7a2549e928baa533aa4facbefa3c81338b3a3ae" [label=""];
  "sha256:306c90f62008353dcad94d5fc7a2549e928baa533aa4facbefa3c81338b3a3ae" -> "sha256:d73f5552ad94e630820cd28816094f955963230baa306a1082f9494dda832b76" [label=""];
  "sha256:d73f5552ad94e630820cd28816094f955963230baa306a1082f9494dda832b76" -> "sha256:d6e18a12b3f7cf2cc7ba757f5f8d663ef8946b2d8fd838c58a9b553ffb6e8137" [label=""];
  "sha256:d6e18a12b3f7cf2cc7ba757f5f8d663ef8946b2d8fd838c58a9b553ffb6e8137" -> "sha256:cf8b490bdfd024b68ea6e52df6d10edd05d2f54d493cc0938eae2e5a13ae5529" [label=""];
  "sha256:cf8b490bdfd024b68ea6e52df6d10edd05d2f54d493cc0938eae2e5a13ae5529" -> "sha256:dd434cc22e4f4e5adf646455feeff2f0da47662a15277b8a8cff19f186dd47b4" [label=""];
  "sha256:dd434cc22e4f4e5adf646455feeff2f0da47662a15277b8a8cff19f186dd47b4" -> "sha256:f071349695801d606076fc637af822090571296469225ae1e85568f61017dcdf" [label=""];
  "sha256:f071349695801d606076fc637af822090571296469225ae1e85568f61017dcdf" -> "sha256:3f2d963b9e99e2299ca080ae982064f4957f912f2cb641f5d53ed66c8aa17baf" [label=""];
  "sha256:3f2d963b9e99e2299ca080ae982064f4957f912f2cb641f5d53ed66c8aa17baf" -> "sha256:c458c887de385510c13d5e509d832844f746a0b677ab29840158344bdac54fdd" [label=""];
  "sha256:c458c887de385510c13d5e509d832844f746a0b677ab29840158344bdac54fdd" -> "sha256:04e1f55dbe816874acac321607483df81897eb59cab49fe3cd939143bdf41bf8" [label=""];
  "sha256:04e1f55dbe816874acac321607483df81897eb59cab49fe3cd939143bdf41bf8" -> "sha256:f764a3530361f9196401c737210a9b931ef58e5930a38b36393c5b46c5520a1f" [label=""];
  "sha256:f764a3530361f9196401c737210a9b931ef58e5930a38b36393c5b46c5520a1f" -> "sha256:40f22427a84fdded2412e57f0c49152c9b00cc6840fa386c015210bc5ca0df1e" [label=""];
  "sha256:40f22427a84fdded2412e57f0c49152c9b00cc6840fa386c015210bc5ca0df1e" -> "sha256:c89021a30bf81da64144c742b02373c31302824323d3973578d0cc7e5c227713" [label=""];
  "sha256:c89021a30bf81da64144c742b02373c31302824323d3973578d0cc7e5c227713" -> "sha256:2cb72e895c9b8e74c766f0adfa5acd56b4e6ab04395ae5c9a9f5771d9f8ed404" [label=""];
  "sha256:2cb72e895c9b8e74c766f0adfa5acd56b4e6ab04395ae5c9a9f5771d9f8ed404" -> "sha256:699c22c0e005cfd1e36066534aff2b8f9592e1288f2f9a9bd4f0812c773bd010" [label=""];
  "sha256:699c22c0e005cfd1e36066534aff2b8f9592e1288f2f9a9bd4f0812c773bd010" -> "sha256:40dea383370dead8820c916ee8f6597c84135b066ab78b5586e0299ce700bb71" [label=""];
  "sha256:40dea383370dead8820c916ee8f6597c84135b066ab78b5586e0299ce700bb71" -> "sha256:ec1dec487c088a8b31ca32245cdd43767800e9fb58fc5b32d20218762a80184a" [label=""];
  "sha256:ec1dec487c088a8b31ca32245cdd43767800e9fb58fc5b32d20218762a80184a" -> "sha256:a0061990e0b74fee96574bf854ded0ff76ce32b65ff35dbea13609dec9705eb7" [label=""];
}

