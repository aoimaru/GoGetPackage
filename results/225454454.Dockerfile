[app/sources/225454454.Dockerfile]
digraph {
  "sha256:896b29a225b80baec3d2e64670db78721089d0bf29652aadd62effcf57fca664" [label="docker-image://gcr.io/google_containers/spark-base:latest@sha256:8dc6ef8a0e7341806bd49a8ab99540ffe0dde0ddae60c9b98fd3190da6c81a81" shape="ellipse"];
  "sha256:b83058c1623ed719b3dd3cd178e492f770c6df3760af178c07a4e7949914dbc6" [label="local://context" shape="ellipse"];
  "sha256:88bba467b37f0d9c5b440c40caf005cac6358be902aa981533905ad67164532c" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:43fcf4f7651cca0bb1a25985a48d691faeb257fc2d6d6f44b1641c69caeba2c6" [label="sha256:43fcf4f7651cca0bb1a25985a48d691faeb257fc2d6d6f44b1641c69caeba2c6" shape="plaintext"];
  "sha256:896b29a225b80baec3d2e64670db78721089d0bf29652aadd62effcf57fca664" -> "sha256:88bba467b37f0d9c5b440c40caf005cac6358be902aa981533905ad67164532c" [label=""];
  "sha256:b83058c1623ed719b3dd3cd178e492f770c6df3760af178c07a4e7949914dbc6" -> "sha256:88bba467b37f0d9c5b440c40caf005cac6358be902aa981533905ad67164532c" [label=""];
  "sha256:88bba467b37f0d9c5b440c40caf005cac6358be902aa981533905ad67164532c" -> "sha256:43fcf4f7651cca0bb1a25985a48d691faeb257fc2d6d6f44b1641c69caeba2c6" [label=""];
}

