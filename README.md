<<<<<<< HEAD
# edp-2023-recursado-tp

## generador

```
$ cd 01-generador/
$ sudo docker build --tag edp1 .
sudo docker run -v $PWD/outputs_generador/:/tmp/outputs_generador -it --privileged edp
```

## usuario

```
cd 02-usuario/
sudo docker build --tag edp2 .
sudo docker run -v $(pwd)/../01-generador/outputs_generador/:/app/inputs -v /../$(pwd)/textos/:/app/textos/ -v $(pwd)/outputs_clasificador/:/app/outputs -it --privilegededp2 
```  
###=======
# edp
trabajo integrador final
>>>>>>> 6348fb9a95dd1421d66c5c157fb355648b6d04bc
