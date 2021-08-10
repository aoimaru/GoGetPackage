[app/sources/252776550.Dockerfile]
digraph {
  "sha256:358e47dafb311e2d40c4a4759028530c26f6a3cd667f4111441a379e325051e8" [label="local://context" shape="ellipse"];
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" [label="docker-image://docker.io/microsoft/dotnet:latest" shape="ellipse"];
  "sha256:3d1f9f6a6a20aed170c813a0659e3406c073dbc4b40aa88cad138cbea7c2bc82" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:3cbfb14a32846adfb5584947adb962b67ec2946700d76cb5a5406c1d285eac37" [label="mkdir{path=/app}" shape="note"];
  "sha256:49aee3b1d6c8a2c96d2c5e0c3ccf75e771dacdc8ea9c5f028c53c8e4d3cb1535" [label="/bin/sh -c dotnet restore ./Cogs.Console.sln" shape="box"];
  "sha256:ab64ae2db414865152d5516aef629ac96915c5479cdca2564dc383d7e800caab" [label="/bin/sh -c dotnet build ./Cogs.Console.sln -c Release -o out" shape="box"];
  "sha256:a160565d9cb30c0470be7f90d1aec05e057ad87e7967d5807d90829921437b97" [label="sha256:a160565d9cb30c0470be7f90d1aec05e057ad87e7967d5807d90829921437b97" shape="plaintext"];
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" -> "sha256:3d1f9f6a6a20aed170c813a0659e3406c073dbc4b40aa88cad138cbea7c2bc82" [label=""];
  "sha256:358e47dafb311e2d40c4a4759028530c26f6a3cd667f4111441a379e325051e8" -> "sha256:3d1f9f6a6a20aed170c813a0659e3406c073dbc4b40aa88cad138cbea7c2bc82" [label=""];
  "sha256:3d1f9f6a6a20aed170c813a0659e3406c073dbc4b40aa88cad138cbea7c2bc82" -> "sha256:3cbfb14a32846adfb5584947adb962b67ec2946700d76cb5a5406c1d285eac37" [label=""];
  "sha256:3cbfb14a32846adfb5584947adb962b67ec2946700d76cb5a5406c1d285eac37" -> "sha256:49aee3b1d6c8a2c96d2c5e0c3ccf75e771dacdc8ea9c5f028c53c8e4d3cb1535" [label=""];
  "sha256:49aee3b1d6c8a2c96d2c5e0c3ccf75e771dacdc8ea9c5f028c53c8e4d3cb1535" -> "sha256:ab64ae2db414865152d5516aef629ac96915c5479cdca2564dc383d7e800caab" [label=""];
  "sha256:ab64ae2db414865152d5516aef629ac96915c5479cdca2564dc383d7e800caab" -> "sha256:a160565d9cb30c0470be7f90d1aec05e057ad87e7967d5807d90829921437b97" [label=""];
}

