sh dl_node_latest.sh

docker build . -t partnernetsoftware/auto_alpine_glibc

sh docker_node.sh -p process.versions
