Feature: Seguimiento del producto

    Scenario: Usuario visualiza el estado de su compra

        Given el usuario cuenta con el rol de usuario registrado
        And el usuario ha realizado una compra en la plataforma
        When el usuario selecciona la opción "Mis compras" en su "perfil"
        And el usuario selecciona el botón "Ver detalles"
        Then el sistema muestra el estado en el que se encuentra la compra y el proceso de envío del mismo

        Examples: Datos de salida
            | Productos                       | Estado      |
            | Poncho de lana                  | En proceso  |
            | Poncho de lana tejido a crochet | En tránsito |
            | Plato Urpi                      | Entregado   |
