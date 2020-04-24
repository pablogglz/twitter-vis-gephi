# twitter-vis-gephi
## Twitter -> Visualización en Rstudio -> Gephi


El objeto de este script es descargar los tuits que utilizan un *hashtag* o un conjunto de palabras (*n* variable). 
Funciona de la siguiente manera:
1. Hace la búsqueda en Twitter
2. Descarga a una base de datos (*tweets*)
3. Transforma aristas y nodos (*edges* y *nodes*)
5. Muestra una visualización -> útil sobre todo para comprobar que funciona todo.
6. Exporta aristas y nodos a dos tablas de excel (.xlsx) listas para ser importadas en Gephi

> NOTA
> No es necesaria una cuenta de desarrollador de Twitter: para este caso, el paquete **rtweet** autoriza con el usuario normal sin necesidad de necesitar acceder a la API de desarrollo. Basta con tener una cuenta normal en Twitter.


El proyecto sólo consta de un script en R.
Utiliza las siguientes librerías, todas disponibles en *CRAN*:
- **rtweet**
- **graphTweets**
- **openxlsx**
- **dplyr**
- **sigmajs**

El script en R lleva por nombre `Captura + Visualización.R` y está explicado con los correspondientes comentarios, separado en secciones.
