[app/sources/315585000.Dockerfile]
digraph {
  "sha256:0f20df26c4049e15b4b72b12776ce0451b9b48b98be3a5718ed3fdb7914c446d" [label="local://context" shape="ellipse"];
  "sha256:927824cf5aa2787d36eae56516dcc5b9084f6b88e2c95d7fa241fdae71902ab6" [label="copy{src=/prometheusadapter, dest=/usr/local/bin/}" shape="note"];
  "sha256:43997a4aa2cdf1d0a677500916b3d756d3e899f2b9c74b7e6d67c47ab7da6d3e" [label="sha256:43997a4aa2cdf1d0a677500916b3d756d3e899f2b9c74b7e6d67c47ab7da6d3e" shape="plaintext"];
  "sha256:0f20df26c4049e15b4b72b12776ce0451b9b48b98be3a5718ed3fdb7914c446d" -> "sha256:927824cf5aa2787d36eae56516dcc5b9084f6b88e2c95d7fa241fdae71902ab6" [label=""];
  "sha256:927824cf5aa2787d36eae56516dcc5b9084f6b88e2c95d7fa241fdae71902ab6" -> "sha256:43997a4aa2cdf1d0a677500916b3d756d3e899f2b9c74b7e6d67c47ab7da6d3e" [label=""];
}

