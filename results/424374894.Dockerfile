[app/sources/424374894.Dockerfile]
digraph {
  "sha256:71c2bbbfb5e767a3a1b1891647b63fc7b4a43c1e258c2f3549c00481f19c2d85" [label="docker-image://docker.io/unzeroun/nginx:latest" shape="ellipse"];
  "sha256:4a6eb7bb85fc1798e650081b22690ac88300edc84de1471913098bd65e7e60bb" [label="local://context" shape="ellipse"];
  "sha256:68375bb3f32d74dd9294962399905d9316576c8d006971340d5b478efa99a3ed" [label="copy{src=/www.conf, dest=/etc/nginx/sites-available/www.conf}" shape="note"];
  "sha256:cd64fc1acd6efc5b187c6bf8478b9e346bff33b954124a1c59485f22553e5eaf" [label="sha256:cd64fc1acd6efc5b187c6bf8478b9e346bff33b954124a1c59485f22553e5eaf" shape="plaintext"];
  "sha256:71c2bbbfb5e767a3a1b1891647b63fc7b4a43c1e258c2f3549c00481f19c2d85" -> "sha256:68375bb3f32d74dd9294962399905d9316576c8d006971340d5b478efa99a3ed" [label=""];
  "sha256:4a6eb7bb85fc1798e650081b22690ac88300edc84de1471913098bd65e7e60bb" -> "sha256:68375bb3f32d74dd9294962399905d9316576c8d006971340d5b478efa99a3ed" [label=""];
  "sha256:68375bb3f32d74dd9294962399905d9316576c8d006971340d5b478efa99a3ed" -> "sha256:cd64fc1acd6efc5b187c6bf8478b9e346bff33b954124a1c59485f22553e5eaf" [label=""];
}

