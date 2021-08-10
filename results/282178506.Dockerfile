[app/sources/282178506.Dockerfile]
digraph {
  "sha256:fbe1d027c078bf2c94ec89d74c7e16385f6ed7e658d8b035c41018fec16179bd" [label="http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar" shape="ellipse"];
  "sha256:d0062d1e7c493722e9c76d8afc2268a76d8e53c8e2e51bcf60d085a32fb2be79" [label="docker-image://docker.io/wurstmeister/kafka:latest" shape="ellipse"];
  "sha256:77067c9e69f899b48935d7f9cc5376bdd6669a35ae74ddfe49f2ef25dc9c9460" [label="local://context" shape="ellipse"];
  "sha256:ab48fc757b2b860f9fdec9c051fdd8bea5bcea05f528acb03998b4c53532c8b7" [label="copy{src=/prom-jmx-agent-config.yml, dest=/usr/app/prom-jmx-agent-config.yml}" shape="note"];
  "sha256:a51409421a5db826e6a952242fb9c791c991dba3221867479b69dae24b75dd09" [label="copy{src=/jmx_prometheus_javaagent-0.10.jar, dest=/usr/app/jmx_prometheus_javaagent.jar}" shape="note"];
  "sha256:2f3b1fb8bd173ddece46aac978fe57e4ce02d0604dc93a476d583666ca60d0c2" [label="sha256:2f3b1fb8bd173ddece46aac978fe57e4ce02d0604dc93a476d583666ca60d0c2" shape="plaintext"];
  "sha256:d0062d1e7c493722e9c76d8afc2268a76d8e53c8e2e51bcf60d085a32fb2be79" -> "sha256:ab48fc757b2b860f9fdec9c051fdd8bea5bcea05f528acb03998b4c53532c8b7" [label=""];
  "sha256:77067c9e69f899b48935d7f9cc5376bdd6669a35ae74ddfe49f2ef25dc9c9460" -> "sha256:ab48fc757b2b860f9fdec9c051fdd8bea5bcea05f528acb03998b4c53532c8b7" [label=""];
  "sha256:ab48fc757b2b860f9fdec9c051fdd8bea5bcea05f528acb03998b4c53532c8b7" -> "sha256:a51409421a5db826e6a952242fb9c791c991dba3221867479b69dae24b75dd09" [label=""];
  "sha256:fbe1d027c078bf2c94ec89d74c7e16385f6ed7e658d8b035c41018fec16179bd" -> "sha256:a51409421a5db826e6a952242fb9c791c991dba3221867479b69dae24b75dd09" [label=""];
  "sha256:a51409421a5db826e6a952242fb9c791c991dba3221867479b69dae24b75dd09" -> "sha256:2f3b1fb8bd173ddece46aac978fe57e4ce02d0604dc93a476d583666ca60d0c2" [label=""];
}

