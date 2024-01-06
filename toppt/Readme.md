# Marowdown to PowerPoint

Génération des fichiers Power Point

## Installation

## Utilisation

Exemple d'utilisaiton

```bash
toppt Validation-livrables.md  -d  E:\cnmh\gestion-projet -t E:\cnmh\gestion-projet\Template_pptx\template.potx
toppt Validation-livrables.md  -t ../toppt/template.potx 
```

## Configuration des slides

```html
The possible actions
<!-- layout : Titre et contenu --> : change layout
<!-- zone : Colone 1 --> : define zone
<!-- note --> : write to zone to notes
<!-- end note --> : switch to wrtie to zone
<!-- new slide : Titre et contenu -->
<!-- new slide -->
<!-- use : slide 1 --> : use Slide 1 that exist in the file : OutputfileName.slides.pptx
<!-- g layout : t 6-3 6-9 --> : Geneate layout, t: titre, 6-3 ligne 1, 6-9 ligne 2
<!-- new zone -->
```

## Ajouter une note 

```html
<!-- note -->

Dans cette session, nous allons voir de façon simplifiée, ce que c'est le **web** et sa différence avec **internet** .

<!-- end note -->
```

## Configuration du layout à 12 colonne

```html
<!-- g layout : t 12-7  -->
<!-- g layout : t 12-3 12-6 p-70  -->
```

## Nouvelle slide 

```html
<!-- new slide -->
```