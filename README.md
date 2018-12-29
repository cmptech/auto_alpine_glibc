runtime docker with alpine + glibc, for some case may needed

```
docker run -ti -v $PWD:/work/ -w /work/ cmptech/auto_alpine_glibc ./alpine_node_latest/node-v11.6.0-linux-x64/bin/node -p "process.versions"
```
