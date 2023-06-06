Feature: Productos recomendados

    Scenario: Ver productos recomendados en la pagina del catálogo

        Given el usuario está en la seccion de los "catalogos" en el sitio web
        When el usuario hace scroll hacia abajo en la página
        Then el sistema muestra una sección de "productos que podrian interesarte"
        And se muestra una lista enlazada de productos relacionados a las búsquedas más recientes

        Examples: Datos de salida
            | Poncho de lana  |
            | Gorro de lana   |
            | Bufanda bouclé  |
            | Vasija cuzqueña |


