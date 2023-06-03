GIFeature: Chatbot interactivo

    Scenario: El usuario accede al chatbot de la plataforma

        Given el usuario esta en la pagina de la plataforma
        When el usuario haga click en el boton de chatbot
        Then el sistema muestra un chat en la esquina inferior derecha
        And el sistema muestra las <preguntas frecuentes> automatizadas

        Examples: Datos de entrada
            | Pacha la Llama                       |
            | Preguntas Frecuentes                 |
            | ¿Cuales son los dias laborables?     |
            | ¿Tienen descuentos especiales?       |
            | ¿Como puedo realizar una devolucion? |

    Scenario: usuario selecciona una pregunta frecuente a traves del chatbot de la plataforma

        Given el sistema muestra el chat de la plataforma
        And el usuario visualiza las <preguntas frecuentes> automatizadas
        When el usuario haga click en una pregunta frecuente
        Then el chatbot proporciona una <respuesta> precisa y relevante a su consulta

        Examples: Datos de salida
            | Pacha la Llama                   |
            | Preguntas Frecuentes             | Respuesta |
            | ¿Cuales son los dias laborables? | Los dias laborables son de lunes a viernes. |

            | ¿Tienen descuentos especiales? | Si, tenemos descuentos especiales en determinadas epocas del año. |
