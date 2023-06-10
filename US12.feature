Feature: Historial de compras

Scenario: Acceso a historial de compras

    Given el usuario cuenta con el rol de usuario autenticado
    When el usuario selecciona el ícono de su "perfil"
        And el usuario selecciona la opción "Mis compras"
    Then el sistema muestra un listado con las compras que ha realizado el usuario en la plataforma

    Examples: Datos de salida
        | Fecha de compra | Producto                        | Precio    |
        | 2023-05-15      | Poncho de lana                  | s/.150.00 |
        | 2023-05-28      | Poncho de lana tejido a crochet | s/.170.00 |
        | 2023-05-10      | Plato Urpi                      | s/.75.00  |
