[app/sources/314974081.Dockerfile]
digraph {
  "sha256:8dcfa9420aa2ad5755466999f2e0e776567dc5aa07e5805ebb8f6a60c3ad480d" [label="docker-image://docker.io/library/java:openjdk-8u111-alpine" shape="ellipse"];
  "sha256:f08e55eec3a64c84096f686ce88868994d95d1604f3f23d3b90bb6266de9add3" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:ec02a48dc730c1ec5719c7d219d4b12eec428caf2cb59ddfdf0e8f8afb0c0ad3" [label="local://context" shape="ellipse"];
  "sha256:4f818a297022bed8d353e703049a6867569abbe5534ea60a1807296b7cc74d7b" [label="copy{src=/build/libs/*-all.jar, dest=/foo.jar}" shape="note"];
  "sha256:43ace55f826ed6248c7385ab9ee0a507772e88cbd592c2d162b70fd5298b3e53" [label="sha256:43ace55f826ed6248c7385ab9ee0a507772e88cbd592c2d162b70fd5298b3e53" shape="plaintext"];
  "sha256:8dcfa9420aa2ad5755466999f2e0e776567dc5aa07e5805ebb8f6a60c3ad480d" -> "sha256:f08e55eec3a64c84096f686ce88868994d95d1604f3f23d3b90bb6266de9add3" [label=""];
  "sha256:f08e55eec3a64c84096f686ce88868994d95d1604f3f23d3b90bb6266de9add3" -> "sha256:4f818a297022bed8d353e703049a6867569abbe5534ea60a1807296b7cc74d7b" [label=""];
  "sha256:ec02a48dc730c1ec5719c7d219d4b12eec428caf2cb59ddfdf0e8f8afb0c0ad3" -> "sha256:4f818a297022bed8d353e703049a6867569abbe5534ea60a1807296b7cc74d7b" [label=""];
  "sha256:4f818a297022bed8d353e703049a6867569abbe5534ea60a1807296b7cc74d7b" -> "sha256:43ace55f826ed6248c7385ab9ee0a507772e88cbd592c2d162b70fd5298b3e53" [label=""];
}

