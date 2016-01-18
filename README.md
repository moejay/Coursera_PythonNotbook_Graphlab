# Coursera_PythonNotbook_Graphlab

## Requirements
- docker 
- 10 minutes

## Setup
clone the repo

edit the docker file with replacing {email} with your email and {license} with your license key for graphlab

build the image
```
docker build -t ml-env .
```


## Running the notebook

```
docker run -d -v /path/to/notebook:/notebooks --name ml-env -p 8888:8888  ml-env
```

goto http://docker-host-ip:8888 

