Feature: Añadir multiples articulos

Scenario: usuario agrega productos al carrito de compra

    Given el usuario cuenta con el rol de usuario autenticado
        And el sistema muestra la seccion "Catalogo"
    When el usuario selecciona el boton "Agregar al carrito"
    Then el sistema agrega los <productos seleccionados> al carrito de compras del usuario

    Examples: Datos de Salida
        | Productos seleccionados   |
        | Camiseta, Collar, Pulsera |
