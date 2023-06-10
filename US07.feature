Feature: Pago de compra con QR

Scenario: Usuario realiza el pago con la billetera electrónica del banco de su preferencia mediante un código QR

    Given el usuario se encuentra en la interfaz "Pago en línea"
    When presiona el botón "Generar codigo QR"
        And escanea el código QR con la <billetera electronica> del banco de su preferencia
    Then el sistema registrará el pago automáticamente
        And el sistema muestra el mensaje <Su pago se realizo con exito>

    Examples: Datos de salida
        | Billetera Electrónica | Mensaje de Confirmación        |
        | Banco A               | "Su pago se realizó con éxito" |
        | Banco B               | "Su pago se realizó con éxito" |
        | Banco C               | "Su pago se realizó con éxito" |
