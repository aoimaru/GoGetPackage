[app/sources/192349939.Dockerfile]
digraph {
  "sha256:aac73e46fb7e998648b987e06d8699c91fcb4c9d2eaa4cb02744c0877427d8f0" [label="docker-image://docker.io/jboss/base-jdk:7" shape="ellipse"];
  "sha256:e536a7af5cdf107122b8992bcf733a86d985aea4444f853f2cef83d5a28ef69f" [label="/bin/sh -c cd /opt/jboss" shape="box"];
  "sha256:949bfee1cac20fe9bd28d16e658a25c6edb8cb314e3b4f3e1d04a05910e50ef8" [label="local://context" shape="ellipse"];
  "sha256:8b855960b58c5ae23ef958a8e192a302e966493add197b2a3f4926431a964ba7" [label="copy{src=/wildfly-openshift.zip, dest=/opt/jboss/}" shape="note"];
  "sha256:43fde6fe51b807a432d05e0835738073ceb5c48787e1e1ccc9ac443b9a7ebeb6" [label="/bin/sh -c unzip $HOME/wildfly-openshift.zip -d /opt/jboss" shape="box"];
  "sha256:c554f0a064a56d4ed8ac7a989e92022afaa82fa0034bfc182ec363a52d53834b" [label="sha256:c554f0a064a56d4ed8ac7a989e92022afaa82fa0034bfc182ec363a52d53834b" shape="plaintext"];
  "sha256:aac73e46fb7e998648b987e06d8699c91fcb4c9d2eaa4cb02744c0877427d8f0" -> "sha256:e536a7af5cdf107122b8992bcf733a86d985aea4444f853f2cef83d5a28ef69f" [label=""];
  "sha256:e536a7af5cdf107122b8992bcf733a86d985aea4444f853f2cef83d5a28ef69f" -> "sha256:8b855960b58c5ae23ef958a8e192a302e966493add197b2a3f4926431a964ba7" [label=""];
  "sha256:949bfee1cac20fe9bd28d16e658a25c6edb8cb314e3b4f3e1d04a05910e50ef8" -> "sha256:8b855960b58c5ae23ef958a8e192a302e966493add197b2a3f4926431a964ba7" [label=""];
  "sha256:8b855960b58c5ae23ef958a8e192a302e966493add197b2a3f4926431a964ba7" -> "sha256:43fde6fe51b807a432d05e0835738073ceb5c48787e1e1ccc9ac443b9a7ebeb6" [label=""];
  "sha256:43fde6fe51b807a432d05e0835738073ceb5c48787e1e1ccc9ac443b9a7ebeb6" -> "sha256:c554f0a064a56d4ed8ac7a989e92022afaa82fa0034bfc182ec363a52d53834b" [label=""];
}

