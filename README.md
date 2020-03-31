# twitter-vis-gephi
## Twitter -> Visualización en Rstudio -> Gephi

Este proyecto sólo consta de un script en R.
Utiliza las siguientes librerías, todas disponibles en *CRAN*:
- **rtweet**
- **graphTweets**
- **openxlsx**
- **dplyr**
- **sigmajs**

El script en R lleva por nombre `Captura + Visualización.R` y está explicado con comentarios, separado en secciones.
> No necesita cuenta de desarrollador: el paquete **rtweet** autoriza con el usuario personal sin necesidad de introducir en API de desarrollo. Basta con tener una cuenta en Twitter.

El objeto de este script es descargar los tuits que utilizan un *hashtag* o un conjunto de palabras (*n* variable). 
Funciona de la siguiente manera:
1. Hace la búsqueda en Twitter
2. Descarga a una base de datos (*tweets*)
3. Transforma aristas y nodos (*edges* y *nodes*)
5. Muestra una visualización -> útil sobre todo para comprobar que funciona todo.
6. Exporta aristas y nodos a dos tablas de excel (.xlsx) listas para ser importadas en Gephi




