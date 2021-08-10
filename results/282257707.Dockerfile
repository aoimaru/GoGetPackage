[app/sources/282257707.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:ddb082decd3f1b8bf8b7e94433a29658439a576263f0e93412e2ecf6d0e424af" [label="mkdir{path=/srv}" shape="note"];
  "sha256:a1bfc12d93c779668190bbcd607f42f2b1a4728acf5ddeca2107a36abc480841" [label="/bin/sh -c apk add --no-cache     build-base     gcc     python3     python3-dev     openssl-dev &&   python3 -m ensurepip &&   rm -r /usr/lib/python*/ensurepip &&   pip3 install --upgrade pip setuptools &&   if [[ ! -e /usr/bin/pip ]]; then ln -s pip3 /usr/bin/pip; fi &&   if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi &&   rm -r /root/.cache" shape="box"];
  "sha256:1899657515f17c1a5bbb7b403dd1f4100b2806024546d40941f2ef4bbf62668d" [label="local://context" shape="ellipse"];
  "sha256:ebea6f87f1b210929fec1f98cf1ca11796ad8787e44407304d03845fa03a05c9" [label="copy{src=/requirements.txt, dest=/srv/}" shape="note"];
  "sha256:749c69bb216db7bc5cd1a36e5311506e344a20c334b0e892ad896ae91c8986e1" [label="/bin/sh -c pip install -Ur requirements.txt" shape="box"];
  "sha256:30e8fe1195d96e09afdfc1979d9ec17655e01c39c586af2c65a808c46a243b9f" [label="copy{src=/, dest=/srv/}" shape="note"];
  "sha256:a34de3a8fa3c4f1be58d32e7036ccdb8ccd00dd7f00377f3974000316904ee8a" [label="/bin/sh -c python -m grpc_tools.protoc             --proto_path=.             --python_out=.             --grpc_python_out=.             helloworld.proto     && pip install -e .     && chmod +x server.py" shape="box"];
  "sha256:f5c91e17e13fd36211d5bd15f058d9a9f7486bf7dbe5ca1647ec6658ca05f931" [label="sha256:f5c91e17e13fd36211d5bd15f058d9a9f7486bf7dbe5ca1647ec6658ca05f931" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:ddb082decd3f1b8bf8b7e94433a29658439a576263f0e93412e2ecf6d0e424af" [label=""];
  "sha256:ddb082decd3f1b8bf8b7e94433a29658439a576263f0e93412e2ecf6d0e424af" -> "sha256:a1bfc12d93c779668190bbcd607f42f2b1a4728acf5ddeca2107a36abc480841" [label=""];
  "sha256:a1bfc12d93c779668190bbcd607f42f2b1a4728acf5ddeca2107a36abc480841" -> "sha256:ebea6f87f1b210929fec1f98cf1ca11796ad8787e44407304d03845fa03a05c9" [label=""];
  "sha256:1899657515f17c1a5bbb7b403dd1f4100b2806024546d40941f2ef4bbf62668d" -> "sha256:ebea6f87f1b210929fec1f98cf1ca11796ad8787e44407304d03845fa03a05c9" [label=""];
  "sha256:ebea6f87f1b210929fec1f98cf1ca11796ad8787e44407304d03845fa03a05c9" -> "sha256:749c69bb216db7bc5cd1a36e5311506e344a20c334b0e892ad896ae91c8986e1" [label=""];
  "sha256:749c69bb216db7bc5cd1a36e5311506e344a20c334b0e892ad896ae91c8986e1" -> "sha256:30e8fe1195d96e09afdfc1979d9ec17655e01c39c586af2c65a808c46a243b9f" [label=""];
  "sha256:1899657515f17c1a5bbb7b403dd1f4100b2806024546d40941f2ef4bbf62668d" -> "sha256:30e8fe1195d96e09afdfc1979d9ec17655e01c39c586af2c65a808c46a243b9f" [label=""];
  "sha256:30e8fe1195d96e09afdfc1979d9ec17655e01c39c586af2c65a808c46a243b9f" -> "sha256:a34de3a8fa3c4f1be58d32e7036ccdb8ccd00dd7f00377f3974000316904ee8a" [label=""];
  "sha256:a34de3a8fa3c4f1be58d32e7036ccdb8ccd00dd7f00377f3974000316904ee8a" -> "sha256:f5c91e17e13fd36211d5bd15f058d9a9f7486bf7dbe5ca1647ec6658ca05f931" [label=""];
}

