[app/sources/252784809.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:f32658c8c8d2a51fe29c6334f7ad5b2d575f9f39aa70ec04389674fe23ce323f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends sqlite3 && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6f46eccd8e7e326cd4e138b6b539f59ff626864c46d3041efc300e74a39475be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e61368061b72cab627ffdfb359fbadaddf3789ea21095ba6f792645e6d70b67a" [label="local://context" shape="ellipse"];
  "sha256:7da8be9f3b7bfb0e28603ef690a112cd4a00b19056a8f3a5e98cfccabbbe73c5" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:0f3b590dbe9f81dbd64e8dfd0afc99dc4500599743501653b4c1e23abf15a690" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:e33d3df84f35c95f53ea284b24ee4b63fffd1f7faf082be427db7e53317d7f49" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:f9d2d0a84ef1c87748d8c0a0edbea7c9e3604a416b1c4b498d380bfd0f1c7b37" [label="sha256:f9d2d0a84ef1c87748d8c0a0edbea7c9e3604a416b1c4b498d380bfd0f1c7b37" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:f32658c8c8d2a51fe29c6334f7ad5b2d575f9f39aa70ec04389674fe23ce323f" [label=""];
  "sha256:f32658c8c8d2a51fe29c6334f7ad5b2d575f9f39aa70ec04389674fe23ce323f" -> "sha256:6f46eccd8e7e326cd4e138b6b539f59ff626864c46d3041efc300e74a39475be" [label=""];
  "sha256:6f46eccd8e7e326cd4e138b6b539f59ff626864c46d3041efc300e74a39475be" -> "sha256:7da8be9f3b7bfb0e28603ef690a112cd4a00b19056a8f3a5e98cfccabbbe73c5" [label=""];
  "sha256:e61368061b72cab627ffdfb359fbadaddf3789ea21095ba6f792645e6d70b67a" -> "sha256:7da8be9f3b7bfb0e28603ef690a112cd4a00b19056a8f3a5e98cfccabbbe73c5" [label=""];
  "sha256:7da8be9f3b7bfb0e28603ef690a112cd4a00b19056a8f3a5e98cfccabbbe73c5" -> "sha256:0f3b590dbe9f81dbd64e8dfd0afc99dc4500599743501653b4c1e23abf15a690" [label=""];
  "sha256:0f3b590dbe9f81dbd64e8dfd0afc99dc4500599743501653b4c1e23abf15a690" -> "sha256:e33d3df84f35c95f53ea284b24ee4b63fffd1f7faf082be427db7e53317d7f49" [label=""];
  "sha256:e61368061b72cab627ffdfb359fbadaddf3789ea21095ba6f792645e6d70b67a" -> "sha256:e33d3df84f35c95f53ea284b24ee4b63fffd1f7faf082be427db7e53317d7f49" [label=""];
  "sha256:e33d3df84f35c95f53ea284b24ee4b63fffd1f7faf082be427db7e53317d7f49" -> "sha256:f9d2d0a84ef1c87748d8c0a0edbea7c9e3604a416b1c4b498d380bfd0f1c7b37" [label=""];
}

