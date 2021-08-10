[app/sources/371364053.Dockerfile]
digraph {
  "sha256:039735ecf07e79560804dc42a9e8965a9e288f4da98002d0cf4a5cdb878006b8" [label="docker-image://docker.io/ipython/scipyserver:latest" shape="ellipse"];
  "sha256:c131f10e5e50cab88a9719324a5a477f88cacc75c47e02fd2a28ac87d31e3d4a" [label="/bin/sh -c apt-get update && apt-get install -y wget git vim unzip" shape="box"];
  "sha256:ff0f4c8acd57219917530d3840982fe9fcc2a05814da241fbf1b74df0f9e139d" [label="local://context" shape="ellipse"];
  "sha256:cebeab52ddcece9016ea11f64dee1c515694b5bc4764b074cb1317966c1222c7" [label="copy{src=/get_ipopt.sh, dest=/tmp/}" shape="note"];
  "sha256:83df9aa52125336bc5070743094beb5eba7ed11907adfd81f2c571a6b38b9b08" [label="copy{src=/get_cyipopt.sh, dest=/tmp/}" shape="note"];
  "sha256:b21f75224e9778b7399c57fc798a0f171f9959faeb00067f6586d1dde88eba2a" [label="/bin/sh -c bash /tmp/get_ipopt.sh" shape="box"];
  "sha256:a8f0707df759148e461d42f8b34af8d7bacb45971f54ed70ee858218cdc10a16" [label="/bin/sh -c bash --login /tmp/get_cyipopt.sh" shape="box"];
  "sha256:12fe32a973424db4af7fe3d7a1b0bbc835d66f32422174f1eb00a8277a3ebebb" [label="/bin/sh -c rm /tmp/get_ipopt.sh /tmp/get_cyipopt.sh" shape="box"];
  "sha256:9c63e19b095a3105dfa1b1faf7d250a980d1f2cc01297c3d39ef9ea766b8cc7b" [label="sha256:9c63e19b095a3105dfa1b1faf7d250a980d1f2cc01297c3d39ef9ea766b8cc7b" shape="plaintext"];
  "sha256:039735ecf07e79560804dc42a9e8965a9e288f4da98002d0cf4a5cdb878006b8" -> "sha256:c131f10e5e50cab88a9719324a5a477f88cacc75c47e02fd2a28ac87d31e3d4a" [label=""];
  "sha256:c131f10e5e50cab88a9719324a5a477f88cacc75c47e02fd2a28ac87d31e3d4a" -> "sha256:cebeab52ddcece9016ea11f64dee1c515694b5bc4764b074cb1317966c1222c7" [label=""];
  "sha256:ff0f4c8acd57219917530d3840982fe9fcc2a05814da241fbf1b74df0f9e139d" -> "sha256:cebeab52ddcece9016ea11f64dee1c515694b5bc4764b074cb1317966c1222c7" [label=""];
  "sha256:cebeab52ddcece9016ea11f64dee1c515694b5bc4764b074cb1317966c1222c7" -> "sha256:83df9aa52125336bc5070743094beb5eba7ed11907adfd81f2c571a6b38b9b08" [label=""];
  "sha256:ff0f4c8acd57219917530d3840982fe9fcc2a05814da241fbf1b74df0f9e139d" -> "sha256:83df9aa52125336bc5070743094beb5eba7ed11907adfd81f2c571a6b38b9b08" [label=""];
  "sha256:83df9aa52125336bc5070743094beb5eba7ed11907adfd81f2c571a6b38b9b08" -> "sha256:b21f75224e9778b7399c57fc798a0f171f9959faeb00067f6586d1dde88eba2a" [label=""];
  "sha256:b21f75224e9778b7399c57fc798a0f171f9959faeb00067f6586d1dde88eba2a" -> "sha256:a8f0707df759148e461d42f8b34af8d7bacb45971f54ed70ee858218cdc10a16" [label=""];
  "sha256:a8f0707df759148e461d42f8b34af8d7bacb45971f54ed70ee858218cdc10a16" -> "sha256:12fe32a973424db4af7fe3d7a1b0bbc835d66f32422174f1eb00a8277a3ebebb" [label=""];
  "sha256:12fe32a973424db4af7fe3d7a1b0bbc835d66f32422174f1eb00a8277a3ebebb" -> "sha256:9c63e19b095a3105dfa1b1faf7d250a980d1f2cc01297c3d39ef9ea766b8cc7b" [label=""];
}

