Build the base container:
```
docker run pwighton/neurodocker generate docker \
  --yes \
  --base-image python:3.8-buster \
  --pkg-manager apt \
  --fsl \
    version=5.0.10 \
    method=binaries \
  --freesurfer \
    version=7.1.1 \
| docker build -t 22011974/norway-docker-base - 
```

Build the derived container:
```
docker buiuld -t 22011974/norway-docker
```
