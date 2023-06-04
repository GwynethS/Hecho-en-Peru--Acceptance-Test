Feature: Información técnica del producto

Scenario: Usuario visualiza la información técnica del producto seleccionado

    Given el sistema muestra la información general del producto seleccionado
    When el usuario se desplaza a la sección "Detalles del producto"
    Then el sistema muestra la información técnica del producto, como los materiales que se utilizaron
    
    Examples: Datos de salida
        | Materiales                                          | Diseño                              | Colores             | Funcionalidad                                             |
        | Fibras de alpaca y lana de oveja de primera calidad | Cada poncho presenta diseños únicos | gama de tonalidades | brindar calidez y protección contra el frío y los vientos |
