Feature: Registro de Usuario

  Como usuario no registrado
  Quiero registrarme con mi correo electrónico y contraseña
  Para acceder a la aplicación

  Scenario: Registro exitoso
    Given el usuario está en la página de registro
    When el usuario completa el formulario de registro con una dirección de correo electrónico válida y una contraseña
    And el usuario hace clic en el botón "Registrarse"
    Then el usuario debería ver un mensaje de "Registro exitoso"

  Scenario: Registro con dirección de correo electrónico existente
    Given el usuario está en la página de registro
    When el usuario completa el formulario de registro con una dirección de correo electrónico que ya está registrada y una contraseña
    And el usuario hace clic en el botón "Registrarse"
    Then el usuario debería ver un mensaje de "La dirección de correo electrónico ya está en uso"

  Scenario: Registro sin completar todos los campos
    Given el usuario está en la página de registro
    When el usuario completa el formulario de registro sin proporcionar una dirección de correo electrónico o contraseña
    And el usuario hace clic en el botón "Registrarse"
    Then el usuario debería ver un mensaje de error indicando que se requiere completar todos los campos
