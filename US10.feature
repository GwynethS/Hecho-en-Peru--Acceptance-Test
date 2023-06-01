Feature: Visualizar fotografías del producto

    Scenario: Usuario visualiza fotografías del producto

        Given el usuario se encuentra en la sección "Catalogo"
        When el usuario selecciona el producto
        And hace clic en el botón "Ver producto"
        Then el sistema muestra la fotografía principal del producto
        And el sistema muestra tres fotografías más pequeñas del producto en distintos ángulos en el lado izquierdo de la pantalla

        Examples: Datos de salida
            | Imagenes del producto | Imagenes del producto | Imagenes del producto |
            | Imagen 1 de poncho    | Imagen 2 de poncho    | Imagen 3 de poncho    |
