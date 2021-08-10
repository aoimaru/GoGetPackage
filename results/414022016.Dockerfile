[app/sources/414022016.Dockerfile]
digraph {
  "sha256:a29d2d09b4088f0bdca82bb08b9b5e23f57437180477c17ab2a7f54222bf9984" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:eb8bb7cea403e81a0f42e6e693fa492c77675abc24f62f32d2a198becd018a89" [label="/bin/sh -c mkdir /webapps" shape="box"];
  "sha256:844984be47a23d154c845fe41e126e08bbbe5bfd81aa0efa7bfff8c348cfb4fe" [label="mkdir{path=/webapps}" shape="note"];
  "sha256:9454bdb80a49669d7363ba6eae32e81abae7cb83561494cfdeb87ad971d55bcc" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y libsqlite3-dev" shape="box"];
  "sha256:ba8036edec21da40131987534efb04bea96b7b37fbeaa11b8289cbe98fe6fa4c" [label="/bin/sh -c pip install -U pip setuptools" shape="box"];
  "sha256:118f1a1394e4fb1e8288f02d04fc0f1ea310cce23f1db8b5b9e3109bd563293d" [label="copy{src=/requirements.txt, dest=/webapps/}" shape="note"];
  "sha256:cae28d8b9fb2f0a6527eaa7e776a63534321ca4df8bf10e094e03cd391cfce3e" [label="/bin/sh -c pip install -r /webapps/requirements.txt" shape="box"];
  "sha256:a8c8e0975ac9c18d22676dec23f98097f25cd1b35af68a397afa2bc3c3d15845" [label="copy{src=/, dest=/webapps/}" shape="note"];
  "sha256:e6552611f3bf067cbfc7e43a7b52b9d45aa7724eefe333852e1fc7526f1426bf" [label="sha256:e6552611f3bf067cbfc7e43a7b52b9d45aa7724eefe333852e1fc7526f1426bf" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:eb8bb7cea403e81a0f42e6e693fa492c77675abc24f62f32d2a198becd018a89" [label=""];
  "sha256:eb8bb7cea403e81a0f42e6e693fa492c77675abc24f62f32d2a198becd018a89" -> "sha256:844984be47a23d154c845fe41e126e08bbbe5bfd81aa0efa7bfff8c348cfb4fe" [label=""];
  "sha256:844984be47a23d154c845fe41e126e08bbbe5bfd81aa0efa7bfff8c348cfb4fe" -> "sha256:9454bdb80a49669d7363ba6eae32e81abae7cb83561494cfdeb87ad971d55bcc" [label=""];
  "sha256:9454bdb80a49669d7363ba6eae32e81abae7cb83561494cfdeb87ad971d55bcc" -> "sha256:ba8036edec21da40131987534efb04bea96b7b37fbeaa11b8289cbe98fe6fa4c" [label=""];
  "sha256:ba8036edec21da40131987534efb04bea96b7b37fbeaa11b8289cbe98fe6fa4c" -> "sha256:118f1a1394e4fb1e8288f02d04fc0f1ea310cce23f1db8b5b9e3109bd563293d" [label=""];
  "sha256:a29d2d09b4088f0bdca82bb08b9b5e23f57437180477c17ab2a7f54222bf9984" -> "sha256:118f1a1394e4fb1e8288f02d04fc0f1ea310cce23f1db8b5b9e3109bd563293d" [label=""];
  "sha256:118f1a1394e4fb1e8288f02d04fc0f1ea310cce23f1db8b5b9e3109bd563293d" -> "sha256:cae28d8b9fb2f0a6527eaa7e776a63534321ca4df8bf10e094e03cd391cfce3e" [label=""];
  "sha256:cae28d8b9fb2f0a6527eaa7e776a63534321ca4df8bf10e094e03cd391cfce3e" -> "sha256:a8c8e0975ac9c18d22676dec23f98097f25cd1b35af68a397afa2bc3c3d15845" [label=""];
  "sha256:a29d2d09b4088f0bdca82bb08b9b5e23f57437180477c17ab2a7f54222bf9984" -> "sha256:a8c8e0975ac9c18d22676dec23f98097f25cd1b35af68a397afa2bc3c3d15845" [label=""];
  "sha256:a8c8e0975ac9c18d22676dec23f98097f25cd1b35af68a397afa2bc3c3d15845" -> "sha256:e6552611f3bf067cbfc7e43a7b52b9d45aa7724eefe333852e1fc7526f1426bf" [label=""];
}

