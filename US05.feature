Feature: Beneficios por registro

Scenario: usuario adquiere un bonus de bienvenida al registrarse a la pagina

    Given el usuario llena todos los campos del formulario de registro o elige una cuenta de Google o Microsoft
        And presione el boton de "Registrarse"
    When el sistema valide todos los datos y compruebe la identidad del usuario
    Then el sistema muestra el mensaje "Ahora eres parte de la familia. Bienvenido a Hecho en Peru."
        And el sistema asigna un bonus de descuento a la cuenta del usuario
        And el sistema muestra un instructivo sobre el <bonus> de bienvenida y las <consideraciones> a tener en cuenta

    Examples: Datos de salida
        | Campo  | Valor | Bonus         | Vencimiento                            |
        | Nombre | Juan  | 10% descuento | Tienes hasta el 23 de octubre del 2023 |
