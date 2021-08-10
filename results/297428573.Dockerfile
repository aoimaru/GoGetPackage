[app/sources/297428573.Dockerfile]
digraph {
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" [label="docker-image://gcr.io/tensorflow/tensorflow:latest" shape="ellipse"];
  "sha256:92ef323ab8fbf6e4f69d35a39674056bff43c02caec4285c8c0e1cd6e6c29452" [label="/bin/sh -c pip install scikit-learn Pillow pyreadline" shape="box"];
  "sha256:dcfd4589b37e846dcb587c040a811a2d83880895455b6571816b565084af0e04" [label="local://context" shape="ellipse"];
  "sha256:a58fa7e4a3fbb22b7bd0e9f4647abe62dc8caaaf68a96922f6be5bf675994c24" [label="copy{src=/*.sh, dest=/installOpen/}" shape="note"];
  "sha256:da019a8d76cef5cc8bf50b06a49458621ff78ddaf642b55dac35567b59a43249" [label="copy{src=/*.py, dest=/installOpen/}" shape="note"];
  "sha256:3200084a8c0322cf905c804024c636af319f08c1cad9682dbd70aea07a1f6e0c" [label="mkdir{path=/installOpen}" shape="note"];
  "sha256:5c8850aef2446c92e5694ebe69403f954cf5406dd1b62bce2b34f51c3303e988" [label="/bin/sh -c bash installOpenCV.sh" shape="box"];
  "sha256:40950252121bcc5545e58a3361be5ccd09279574fda3def4efa00689fddfea86" [label="/bin/sh -c rm -rf /notebooks/*" shape="box"];
  "sha256:f03f5c32eebd0db049ed6b868471fa55365a99b6a2c8c31e3f574b420801b942" [label="copy{src=/*.ipynb, dest=/notebooks/}" shape="note"];
  "sha256:1c255f44a24e508464c53ec961200ca3f934b2467f7a62468afada6812034937" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:5bcf3d3b64a5de836d78a84f2152b6c32fd34f80e18184ef94d731a009174907" [label="sha256:5bcf3d3b64a5de836d78a84f2152b6c32fd34f80e18184ef94d731a009174907" shape="plaintext"];
  "sha256:bf80f3ad339bfbe6935383fd4e32cc81b90a0a95720d4c0383bc6f6310983847" -> "sha256:92ef323ab8fbf6e4f69d35a39674056bff43c02caec4285c8c0e1cd6e6c29452" [label=""];
  "sha256:92ef323ab8fbf6e4f69d35a39674056bff43c02caec4285c8c0e1cd6e6c29452" -> "sha256:a58fa7e4a3fbb22b7bd0e9f4647abe62dc8caaaf68a96922f6be5bf675994c24" [label=""];
  "sha256:dcfd4589b37e846dcb587c040a811a2d83880895455b6571816b565084af0e04" -> "sha256:a58fa7e4a3fbb22b7bd0e9f4647abe62dc8caaaf68a96922f6be5bf675994c24" [label=""];
  "sha256:a58fa7e4a3fbb22b7bd0e9f4647abe62dc8caaaf68a96922f6be5bf675994c24" -> "sha256:da019a8d76cef5cc8bf50b06a49458621ff78ddaf642b55dac35567b59a43249" [label=""];
  "sha256:dcfd4589b37e846dcb587c040a811a2d83880895455b6571816b565084af0e04" -> "sha256:da019a8d76cef5cc8bf50b06a49458621ff78ddaf642b55dac35567b59a43249" [label=""];
  "sha256:da019a8d76cef5cc8bf50b06a49458621ff78ddaf642b55dac35567b59a43249" -> "sha256:3200084a8c0322cf905c804024c636af319f08c1cad9682dbd70aea07a1f6e0c" [label=""];
  "sha256:3200084a8c0322cf905c804024c636af319f08c1cad9682dbd70aea07a1f6e0c" -> "sha256:5c8850aef2446c92e5694ebe69403f954cf5406dd1b62bce2b34f51c3303e988" [label=""];
  "sha256:5c8850aef2446c92e5694ebe69403f954cf5406dd1b62bce2b34f51c3303e988" -> "sha256:40950252121bcc5545e58a3361be5ccd09279574fda3def4efa00689fddfea86" [label=""];
  "sha256:40950252121bcc5545e58a3361be5ccd09279574fda3def4efa00689fddfea86" -> "sha256:f03f5c32eebd0db049ed6b868471fa55365a99b6a2c8c31e3f574b420801b942" [label=""];
  "sha256:dcfd4589b37e846dcb587c040a811a2d83880895455b6571816b565084af0e04" -> "sha256:f03f5c32eebd0db049ed6b868471fa55365a99b6a2c8c31e3f574b420801b942" [label=""];
  "sha256:f03f5c32eebd0db049ed6b868471fa55365a99b6a2c8c31e3f574b420801b942" -> "sha256:1c255f44a24e508464c53ec961200ca3f934b2467f7a62468afada6812034937" [label=""];
  "sha256:1c255f44a24e508464c53ec961200ca3f934b2467f7a62468afada6812034937" -> "sha256:5bcf3d3b64a5de836d78a84f2152b6c32fd34f80e18184ef94d731a009174907" [label=""];
}

