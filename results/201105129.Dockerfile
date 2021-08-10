[app/sources/201105129.Dockerfile]
digraph {
  "sha256:a26d49cdad057b4c49e43f4622eeb715085747326f455827e3b18b6f1aad3304" [label="docker-image://docker.io/progrium/busybox:latest" shape="ellipse"];
  "sha256:b7a790a8d1ceddd787edfba334d03c03717ca3655436fb45014b42b996e69535" [label="local://context" shape="ellipse"];
  "sha256:59485d622f8e6f57b8a26b1f232fc7bf19d4004b2ef32ba8264209b49d427ccb" [label="copy{src=/cadvisor, dest=/home/work/uploadCadviosrData/cadvisor}" shape="note"];
  "sha256:13cf541e816a90fdbd89a66700852f6e7af4de2e125363238db3e065b79783f4" [label="copy{src=/uploadCadvisorData, dest=/home/work/uploadCadviosrData/uploadCadvisorData}" shape="note"];
  "sha256:2556fb312c8d69d2abc5c285cdc7e9bb3b1dbf7ca7e2b72f469c8658de9a29db" [label="copy{src=/run, dest=/home/work/uploadCadviosrData/run}" shape="note"];
  "sha256:f3ba9fd909768cc1d7445bccf7fc135e152e3cd7e62660be672b273236aceb2c" [label="/bin/sh -c mkdir -p /home/work/uploadCadviosrData/log" shape="box"];
  "sha256:5866c28cd7506fb5090de450dc5ef3e921be6173f10cce6b880b4ddcc07fa461" [label="sha256:5866c28cd7506fb5090de450dc5ef3e921be6173f10cce6b880b4ddcc07fa461" shape="plaintext"];
  "sha256:a26d49cdad057b4c49e43f4622eeb715085747326f455827e3b18b6f1aad3304" -> "sha256:59485d622f8e6f57b8a26b1f232fc7bf19d4004b2ef32ba8264209b49d427ccb" [label=""];
  "sha256:b7a790a8d1ceddd787edfba334d03c03717ca3655436fb45014b42b996e69535" -> "sha256:59485d622f8e6f57b8a26b1f232fc7bf19d4004b2ef32ba8264209b49d427ccb" [label=""];
  "sha256:59485d622f8e6f57b8a26b1f232fc7bf19d4004b2ef32ba8264209b49d427ccb" -> "sha256:13cf541e816a90fdbd89a66700852f6e7af4de2e125363238db3e065b79783f4" [label=""];
  "sha256:b7a790a8d1ceddd787edfba334d03c03717ca3655436fb45014b42b996e69535" -> "sha256:13cf541e816a90fdbd89a66700852f6e7af4de2e125363238db3e065b79783f4" [label=""];
  "sha256:13cf541e816a90fdbd89a66700852f6e7af4de2e125363238db3e065b79783f4" -> "sha256:2556fb312c8d69d2abc5c285cdc7e9bb3b1dbf7ca7e2b72f469c8658de9a29db" [label=""];
  "sha256:b7a790a8d1ceddd787edfba334d03c03717ca3655436fb45014b42b996e69535" -> "sha256:2556fb312c8d69d2abc5c285cdc7e9bb3b1dbf7ca7e2b72f469c8658de9a29db" [label=""];
  "sha256:2556fb312c8d69d2abc5c285cdc7e9bb3b1dbf7ca7e2b72f469c8658de9a29db" -> "sha256:f3ba9fd909768cc1d7445bccf7fc135e152e3cd7e62660be672b273236aceb2c" [label=""];
  "sha256:f3ba9fd909768cc1d7445bccf7fc135e152e3cd7e62660be672b273236aceb2c" -> "sha256:5866c28cd7506fb5090de450dc5ef3e921be6173f10cce6b880b4ddcc07fa461" [label=""];
}

