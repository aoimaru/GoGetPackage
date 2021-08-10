[app/sources/321807820.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:a3d85ed460098a45db4febd5594750f7bc7e5cfa1d24fdfaa18b96bd5d91d6aa" [label="/bin/sh -c set -e -x ;        apk add --no-cache gcc python3-dev musl-dev ;        pip install nameko" shape="box"];
  "sha256:d73ddffe16319c7c0a30d532ccbb63bfd5e5900e0921ed4e7ca06ffea5f8c869" [label="/bin/sh -c set -e -x ;        mkdir /app ;        adduser -S app" shape="box"];
  "sha256:5c3dc844c8a3cc47250f2822106e9c6548ae50f6900c4c3048bf27361d3bea6e" [label="local://context" shape="ellipse"];
  "sha256:2e4e280be7481bcc046bba19ca6d3268342e9f3c2a1fe60a076e3891f84703df" [label="copy{src=/config.yaml, dest=/app/}" shape="note"];
  "sha256:f5363b8a77511ccaac9aefee8ce49866525be3517624553f8ddef36792ecfb0b" [label="copy{src=/healthcheck.py, dest=/app/}" shape="note"];
  "sha256:cbdaa8f7f8b9ef99ac5249fbdae55033a85f652d6210897fa6391a4282eb2576" [label="copy{src=/solution, dest=/app/}" shape="note"];
  "sha256:69502a4ce2b5583f8fa1bf09fffc91ea19c5a40cd5716347c2acb53df3ede75f" [label="/bin/sh -c set -e -x ;        chown -R app /app" shape="box"];
  "sha256:1ad94f0d5886b68768fdec56e78467b7a75ca728f28cca1f2533781a67f82a9c" [label="mkdir{path=/app}" shape="note"];
  "sha256:e132f27313fa812f702ff97f5b9b69e3ed9f527e8855d0dcfed11548a5d50829" [label="sha256:e132f27313fa812f702ff97f5b9b69e3ed9f527e8855d0dcfed11548a5d50829" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:a3d85ed460098a45db4febd5594750f7bc7e5cfa1d24fdfaa18b96bd5d91d6aa" [label=""];
  "sha256:a3d85ed460098a45db4febd5594750f7bc7e5cfa1d24fdfaa18b96bd5d91d6aa" -> "sha256:d73ddffe16319c7c0a30d532ccbb63bfd5e5900e0921ed4e7ca06ffea5f8c869" [label=""];
  "sha256:d73ddffe16319c7c0a30d532ccbb63bfd5e5900e0921ed4e7ca06ffea5f8c869" -> "sha256:2e4e280be7481bcc046bba19ca6d3268342e9f3c2a1fe60a076e3891f84703df" [label=""];
  "sha256:5c3dc844c8a3cc47250f2822106e9c6548ae50f6900c4c3048bf27361d3bea6e" -> "sha256:2e4e280be7481bcc046bba19ca6d3268342e9f3c2a1fe60a076e3891f84703df" [label=""];
  "sha256:2e4e280be7481bcc046bba19ca6d3268342e9f3c2a1fe60a076e3891f84703df" -> "sha256:f5363b8a77511ccaac9aefee8ce49866525be3517624553f8ddef36792ecfb0b" [label=""];
  "sha256:5c3dc844c8a3cc47250f2822106e9c6548ae50f6900c4c3048bf27361d3bea6e" -> "sha256:f5363b8a77511ccaac9aefee8ce49866525be3517624553f8ddef36792ecfb0b" [label=""];
  "sha256:f5363b8a77511ccaac9aefee8ce49866525be3517624553f8ddef36792ecfb0b" -> "sha256:cbdaa8f7f8b9ef99ac5249fbdae55033a85f652d6210897fa6391a4282eb2576" [label=""];
  "sha256:5c3dc844c8a3cc47250f2822106e9c6548ae50f6900c4c3048bf27361d3bea6e" -> "sha256:cbdaa8f7f8b9ef99ac5249fbdae55033a85f652d6210897fa6391a4282eb2576" [label=""];
  "sha256:cbdaa8f7f8b9ef99ac5249fbdae55033a85f652d6210897fa6391a4282eb2576" -> "sha256:69502a4ce2b5583f8fa1bf09fffc91ea19c5a40cd5716347c2acb53df3ede75f" [label=""];
  "sha256:69502a4ce2b5583f8fa1bf09fffc91ea19c5a40cd5716347c2acb53df3ede75f" -> "sha256:1ad94f0d5886b68768fdec56e78467b7a75ca728f28cca1f2533781a67f82a9c" [label=""];
  "sha256:1ad94f0d5886b68768fdec56e78467b7a75ca728f28cca1f2533781a67f82a9c" -> "sha256:e132f27313fa812f702ff97f5b9b69e3ed9f527e8855d0dcfed11548a5d50829" [label=""];
}

