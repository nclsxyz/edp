## edp-2023-recursado-tp

## generador

```
cd 01-generador/
sudo docker build --tag edp1 .
sudo docker run -v $PWD/outputs_generador/:/tmp/outputs_generador -it --privileged edp1
```

## usuario

```
cd 02-usuario/
sudo docker build --tag edp2 .
sudo docker run -v $PWD/../01-generador/outputs_generador/:/app/inputs -v /../$(pwd)/textos/:/app/textos/ -v $(pwd)/outputs_clasificador/:/app/outputs -it --privileged edp2
sudo docker run -v /tmp/outputs_generador/:/app/inputs/ -v /..$(pwd)/textos/:/app/textos/ -v $(pwd)/outputs_clasificador/:/app/outputs -it --privileged edp2

 

