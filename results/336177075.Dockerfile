[app/sources/336177075.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:ae5feea904d11c0c495d2a0c0200d9ca24fc8be213886613e344e12f3d71ab79" [label="local://context" shape="ellipse"];
  "sha256:93d52eb3c49942c56babe5444f244f620eb5d632edd78b74d2f094715c9205c8" [label="copy{src=/requirements.txt, dest=/vue/},copy{src=/manage.py, dest=/vue/},copy{src=/data.sqlite, dest=/vue/}" shape="note"];
  "sha256:260311ba1a90d7561e31c13bfda47b66c0372ec1b5e5f444a78a9ba274e36199" [label="mkdir{path=/vue}" shape="note"];
  "sha256:a153d28115e1f86628d12dc1aa8679a79c3e385c9445e27c7a3ca17dc88351d9" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:58a82a555efa239c768e4dcd8a1447268bd54441494b708131952d226e31815a" [label="sha256:58a82a555efa239c768e4dcd8a1447268bd54441494b708131952d226e31815a" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:93d52eb3c49942c56babe5444f244f620eb5d632edd78b74d2f094715c9205c8" [label=""];
  "sha256:ae5feea904d11c0c495d2a0c0200d9ca24fc8be213886613e344e12f3d71ab79" -> "sha256:93d52eb3c49942c56babe5444f244f620eb5d632edd78b74d2f094715c9205c8" [label=""];
  "sha256:93d52eb3c49942c56babe5444f244f620eb5d632edd78b74d2f094715c9205c8" -> "sha256:260311ba1a90d7561e31c13bfda47b66c0372ec1b5e5f444a78a9ba274e36199" [label=""];
  "sha256:260311ba1a90d7561e31c13bfda47b66c0372ec1b5e5f444a78a9ba274e36199" -> "sha256:a153d28115e1f86628d12dc1aa8679a79c3e385c9445e27c7a3ca17dc88351d9" [label=""];
  "sha256:a153d28115e1f86628d12dc1aa8679a79c3e385c9445e27c7a3ca17dc88351d9" -> "sha256:58a82a555efa239c768e4dcd8a1447268bd54441494b708131952d226e31815a" [label=""];
}

