<<<<<<< HEAD
# edp-2023-recursado-tp

## generador

```
$ cd 01-generador/
$ sudo docker build --tag edp1 .
$ sudo docker run -v $PWD/outputs_generador/:/outputs_generador -it --privileged edp1
```

## usuario

```
$ cd 02-usuario/
$ sudo docker build --tag edp2
$ sudo docker run -v $(pwd)/../01-generador/outputs_generador/:/app/inputs -v $(pwd)/textos/:/app/textos/ -v $(pwd)/outputs_usuario/:/app/outputs -it --privileged

```  
###=======
# edp
trabajo integrador final
>>>>>>> 6348fb9a95dd1421d66c5c157fb355648b6d04bc
