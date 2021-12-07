Build the base container:

```
docker run pwighton/neurodocker generate docker \
  --yes \
  --base-image python:3.8-buster \
  --pkg-manager apt \
  --freesurfer \
    version=7.1.1 \
| docker build -t 22011974/norway-docker-base - 
```

Build the derived container:

```
docker build -t 22011974/norway-docker .
```
