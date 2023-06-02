Feature: Notificaciones a través de correo electronico

    Scenario: usuario recibe notificaciones por correo electrónico sobre nuevos productos

        Given el usuario cuenta con el rol de usuario autenticado
        And el usuario activó las notificaciones por correo electrónico en la configuración de su perfil
        When la tienda de productos artesanales peruanos añade un nuevo producto a su catálogo o tiene ofertas especiales
        Then el sistema envia al usuario un correo electronico con información detallada sobre el nuevo producto o evento
        And el correo electrónico incluye un enlace directo a la página web

        Examples: Datos de salida
            | Usuario  | Notificaciones | Mensaje                                                    |
            | Juan Maltipo  | Sí             | Se añadió un collar de perlas que podría interesarte       |
            | Maria Montoya | Sí             | Solo por hoy ofertas al 50% en compras mayores a S/.200.00 |
            | Kimberly Solorzano | No             | 
