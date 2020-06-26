# Optimizador de la red de intercambiadores de calor del sistema de acondicionamiento ambiental de una aeronave (ECS)
 
 ---

Proyecto para la materia de termofluidos de séptimo semestre de la carrera Ing. en Aeronaútica del Instituto Politécnico Nacional Unidad Interdisciplinaria de Ingeniería Campus Guanajuato

---

## ¿Qué incluye?

Este repositorio incluye la Validación del modelado de una red de intercambiadores de calor de un ECS de una aeronave hecho con el método 'Heat Current'.  
Dicha validación se puede obtener desde el archivo solver.m, haciendo uso del archivo Validacion.m (que contiene el sistema de ecuaciones de gobierno), este soluciona el sistema de ecuaciones (no lineales) de gobierno del modelo en una condición de vuelo de una aeronave, usando F Solve de Matlab. Se valida cuando los resultados del modelado con el método 'Heat Current' concuerdan con los resultados de un modelado con un método tradicional. En este caso obteniendo un error menor al 10%

También incluye el optimizador de la red de intercambiadores de calor en el archivo solver_hxn.m, el archivo hxn.m contiene el conjunto de ecuaciones derivadas del método de optimización de multiplicadores de Lagrange.

---

## ¿Cómo usarlo?

En el archivo hxn.m están los parámetros de la condición de vuelo y de la aeronave cuyo ECS desea optimizarse.  
Colocamos en este archivo los parámetros de condición de vuelo y aeronave según nuestro caso y con las unidades que ahí se especifican. Una vez hecho esto continuar en el archivo solver_hxn.m  
En solver_hxn.m se especifica un punto inicial a partir del cual el solucionador de sistemas de ecuaciones no lineales 'F Solve' de Matlab comienza sus iteraciones hasta llegar a la convergencia.