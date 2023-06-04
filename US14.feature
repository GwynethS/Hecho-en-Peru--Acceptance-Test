Feature: Verificar la disponibilidad de los productos

Scenario: Verificar disponibilidad de un producto
    
    Given el usuario cuenta con el rol de usuario autenticado
        And el sistema muestra la sección "Información del producto"
        And el sistema muestra el texto "Stock: X unidades "
    When el usuario realiza una compra
    Then el sistema actualiza el número de unidades en stock

    Examples: Datos de salida
        | Producto                        | Stock |
        | Poncho de lana                  | 10    |
        | Poncho de lana tejido a crochet | 5     |
        | Plato Urpi                      | 20    |