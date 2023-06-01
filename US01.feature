Feature: Registro y log in en el website

    Scenario: usuario visualiza el formulario de registro de la pagina web
        Given el usuario cuenta con el rol de usuario no registrado o invitado
        When el usuario selecciona el logo de usuario
        And elige la opcion "Registrate"
        Then el sistema muestra en una nueva pagina el formulario "Registrarse" con los campos requeridos <Nombre>, <Apellido>, <Correo electronico> y <Contrasena> los cuales son requeridos
        And el sistema muestra el boton "Crear cuenta"

    Scenario: usuario se registra en la pagina web
        Given el usuario cuenta con el rol de usuario no registrado o invitado
        And el sistema muestra el formulario "Registrarse"
        And el usuario completa los campos <Nombre>, <apellido>, <correo electronico> y <Contrasena>
        When el usuario da click al boton "Crear cuenta"
        Then el sistema crea una cuenta con los datos proporcionados
        And el sistema muestra un mensaje de confirmacion que dice "Ahora eres parte de la familia. Bienvenido a Hecho en Peru."

        Examples: Datos de entrada
            | Registrarse |
            | Nombre      | Apellido | Correo | Contraseña | Mensaje |
            | Juan        | Perez | juan.perez@example.com | ********* | Ahora eres parte de la familia. Bienvenido a Hecho en Peru. |

    Scenario: usuario visualiza el formulario de iniciar sesion a la pagina web
        Given el usuario cuenta con el rol de usuario invitado
        When el usuario selecciona el logo de usuario
        Then el sistema muestra el formulario "Iniciar sesion" con los campos <correo electronico> y <contrasena>, los cuales son requeridos
        And el sistema muestra el boton "Iniciar sesion"

    Scenario: usuario inicia sesion a la pagina web con la cuenta registrada
        Given el usuario cuenta con el rol de usuario invitado
        And el sistema muestra el formulario "Iniciar sesion"
        And el usuario ingresa el <Correo electronico> y la <Contrasena> registrada
        When el usuario da click al boton "Iniciar sesion"
        Then el sistema redirecciona al usuario a la ubicacion previa

        Examples: Datos de entrada
            | Iniciar sesion         |
            | Correo electronico     | Contrasena |
            | juan.perez@example.com | ********* |
