Feature: Conocer la historia del artesano

    Scenario: usuario visualiza información del artesano desde la sección "Regiones"

        Given el usuario selecciona la sección "Regiones"
        And elige la opción de la región a explorar
        When el usuario se deslice hacía el apartado "Artesanos Locales"
        Then el sistema muestra el <nombre> y una pequeña <biografia de los artesanos> que pertenecen a dicha región

        Examples: Datos de Salida
            | Cusco                  |
            | Nombre del artesano    | Biografia |
            | Carlos Quispe Cárdenas | Talentoso orfebre que crea joyas únicas inspiradas en la rica historia y cultura de Cusco... |


    Scenario: usuario visualiza información del artesano desde la página del producto

        Given  el usuario se encuentra en el carrito de compra de un producto
        When el usuario se desplace hacía la información del producto
        Then el sistema muestra <informacion del artesano> fabricante del producto

        Examples: Datos de Salida
            | Poncho de lana           |
            | Informacion del Artesano |
            | Artesana                 | Ubicacion | Especialidad | Experiencia | Historia |
            | Fátima Quispe Huamaní    | Cusco, Perú | Tejidos andinos | Más de 15 años en el tejido de textiles tradicionales | Fátima Quispe es una talentosa artesana peruana con un profundo amor por su cultura y tradiciones... |


