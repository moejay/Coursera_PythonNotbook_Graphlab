# Coursera_PythonNotbook_Graphlab

## Setup
clone the repo

edit the docker file with your email and license key for graphlab

build the image
```
docker build -t ml-env .
```


## Running the notebook

```
docker run -d -v /path/to/notebook:/notebooks --name ml-env  ml-env
```

