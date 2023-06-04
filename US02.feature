Feature: Visualizar informacion turistica de las regiones del Peru

Scenario: usuario visualiza informacion de las regiones del Peru

    Given el usuario se encuentra en la seccion "Regiones"
    When el usuario selecciona el boton de una <region>
    Then el sistema muestra una nueva pantalla con informacion detallada de la region que eligio

    Examples: Datos de entrada
        | Lima     |
        | Arequipa |
        | Cusco    |
        | Piura    |