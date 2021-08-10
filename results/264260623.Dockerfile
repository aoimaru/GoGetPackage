[app/sources/264260623.Dockerfile]
digraph {
  "sha256:8eb0177f25944060ae5a5f7ca9c387f634d102295c392f874be64dcc46931392" [label="docker-image://mcr.microsoft.com/windows/servercore:1809" shape="ellipse"];
  "sha256:4c1add182013851d318ab018ed70883f72329b1d03279af500c7129cf74a6292" [label="docker-image://docker.io/livepeerci/build:latest" shape="ellipse"];
  "sha256:85f9b2d65d014e82ee8d2cf4d622485038432cb0721e9f755f788c3d35bea583" [label="/bin/sh -c ./upload_build.sh" shape="box"];
  "sha256:5fbc60cc1cdda63f7400c4ee5cad177a1f83d2ac23ba91e1f8fb88a32eea1a3c" [label="copy{src=/C:\\msys64\\go\\src\\github.com\\livepeer\\go-livepeer\\livepeer-windows-amd64, dest=/C:\\livepeer-windows-amd64}" shape="note"];
  "sha256:1630ff1fc132410cd89b4bd2900882a90f9ce2dafe1fd07e0e97033f2b291a1f" [label="sha256:1630ff1fc132410cd89b4bd2900882a90f9ce2dafe1fd07e0e97033f2b291a1f" shape="plaintext"];
  "sha256:4c1add182013851d318ab018ed70883f72329b1d03279af500c7129cf74a6292" -> "sha256:85f9b2d65d014e82ee8d2cf4d622485038432cb0721e9f755f788c3d35bea583" [label=""];
  "sha256:8eb0177f25944060ae5a5f7ca9c387f634d102295c392f874be64dcc46931392" -> "sha256:5fbc60cc1cdda63f7400c4ee5cad177a1f83d2ac23ba91e1f8fb88a32eea1a3c" [label=""];
  "sha256:85f9b2d65d014e82ee8d2cf4d622485038432cb0721e9f755f788c3d35bea583" -> "sha256:5fbc60cc1cdda63f7400c4ee5cad177a1f83d2ac23ba91e1f8fb88a32eea1a3c" [label=""];
  "sha256:5fbc60cc1cdda63f7400c4ee5cad177a1f83d2ac23ba91e1f8fb88a32eea1a3c" -> "sha256:1630ff1fc132410cd89b4bd2900882a90f9ce2dafe1fd07e0e97033f2b291a1f" [label=""];
}

