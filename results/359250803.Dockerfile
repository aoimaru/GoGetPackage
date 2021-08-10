[app/sources/359250803.Dockerfile]
digraph {
  "sha256:bcdbdb9168add2b17c889caebcaf03b1816943db95b31d28c016389748d84b0e" [label="docker-image://docker.io/stimela/meqtrees:1.0.1" shape="ellipse"];
  "sha256:b4777d31474d2c4a7c9afc80d52e963ac819632176c98bc07150da174ced0723" [label="local://context" shape="ellipse"];
  "sha256:f21ecdc06f6739605fb444e1702c870cff0f6cbc914654e208b823e9bcf9a7a0" [label="copy{src=/src, dest=/scratch/code}" shape="note"];
  "sha256:a77bac91ef912b8d963fd770a80fb1e23b77f46483378de50e5e416bf341e455" [label="sha256:a77bac91ef912b8d963fd770a80fb1e23b77f46483378de50e5e416bf341e455" shape="plaintext"];
  "sha256:bcdbdb9168add2b17c889caebcaf03b1816943db95b31d28c016389748d84b0e" -> "sha256:f21ecdc06f6739605fb444e1702c870cff0f6cbc914654e208b823e9bcf9a7a0" [label=""];
  "sha256:b4777d31474d2c4a7c9afc80d52e963ac819632176c98bc07150da174ced0723" -> "sha256:f21ecdc06f6739605fb444e1702c870cff0f6cbc914654e208b823e9bcf9a7a0" [label=""];
  "sha256:f21ecdc06f6739605fb444e1702c870cff0f6cbc914654e208b823e9bcf9a7a0" -> "sha256:a77bac91ef912b8d963fd770a80fb1e23b77f46483378de50e5e416bf341e455" [label=""];
}

