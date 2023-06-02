Feature: Revisar comentarios y la valoración de los productos

    Scenario: Usuario revisa los comentarios de otros compradores sobre un producto

        Given el sistema muestra la informacion del producto
        When el usuario hace clic en el enlace "Comentarios"
        Then el sistema mostrara en la parte final el apartado "Comentarios"
        And el sistema muestra la valoración del producto realizada por los usuarios

        Examples: Datos de salida
            | valoracion  | comentarios                                                                                                                                                                                                                               |
            | 5 estrellas | "No puedo expresar lo feliz que estoy con mi nuevo poncho de lana cusqueño! Es una verdadera obra de arte tejida a mano. El cuidado y la atención al detalle que se pusieron en cada puntada se reflejan en su hermoso diseño y calidad." |
            | 4 estrellas | "Este poncho de lana cusqueño es simplemente espectacular. Me encanta su diseño tradicional y los colores vibrantes que lo adornan. Ademas de ser una pieza de arte, es increíblemente cálido y suave al tacto."                          |
