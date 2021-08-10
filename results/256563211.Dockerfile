[app/sources/256563211.Dockerfile]
digraph {
  "sha256:5daa623bfd522bc7940f8c07146ca43135659782a7e58966ad16fb059419f4e5" [label="docker-image://docker.io/microsoft/vsts-agent:ubuntu-16.04" shape="ellipse"];
  "sha256:bd6d78421f520817991f3764e49b5c8d1a04e6a2c5bc00a811adebe015304e38" [label="/bin/sh -c set -x  && curl -fSL https://vstsagentpackage.azureedge.net/agent/2.140.2/vsts-agent-linux-x64-2.140.2.tar.gz -o agent.tgz  && mkdir agent  && cd agent  && tar -xz --no-same-owner -f ../agent.tgz  && cd ..  && rm agent.tgz" shape="box"];
  "sha256:f1ba7bb9a642a54d12713f1442bc659ba7278b7d4756221cea5b03deaa9c5678" [label="local://context" shape="ellipse"];
  "sha256:c8dfdad671ca8bef62a08ed148e02132a5e2e67b1c403e24160a64d2702c7bc1" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:f29ac24233d8f036d352c9627169cf20bc57d3929a027c851194796fc9fea6a7" [label="/bin/sh -c chmod +x start.sh" shape="box"];
  "sha256:ca240e9b96d3e4c747cb5aaefa851c9fa6724bac05e80a92d905c60b4dcfbbd7" [label="sha256:ca240e9b96d3e4c747cb5aaefa851c9fa6724bac05e80a92d905c60b4dcfbbd7" shape="plaintext"];
  "sha256:5daa623bfd522bc7940f8c07146ca43135659782a7e58966ad16fb059419f4e5" -> "sha256:bd6d78421f520817991f3764e49b5c8d1a04e6a2c5bc00a811adebe015304e38" [label=""];
  "sha256:bd6d78421f520817991f3764e49b5c8d1a04e6a2c5bc00a811adebe015304e38" -> "sha256:c8dfdad671ca8bef62a08ed148e02132a5e2e67b1c403e24160a64d2702c7bc1" [label=""];
  "sha256:f1ba7bb9a642a54d12713f1442bc659ba7278b7d4756221cea5b03deaa9c5678" -> "sha256:c8dfdad671ca8bef62a08ed148e02132a5e2e67b1c403e24160a64d2702c7bc1" [label=""];
  "sha256:c8dfdad671ca8bef62a08ed148e02132a5e2e67b1c403e24160a64d2702c7bc1" -> "sha256:f29ac24233d8f036d352c9627169cf20bc57d3929a027c851194796fc9fea6a7" [label=""];
  "sha256:f29ac24233d8f036d352c9627169cf20bc57d3929a027c851194796fc9fea6a7" -> "sha256:ca240e9b96d3e4c747cb5aaefa851c9fa6724bac05e80a92d905c60b4dcfbbd7" [label=""];
}

