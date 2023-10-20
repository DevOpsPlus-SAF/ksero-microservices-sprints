Feature: Hacer Pedido de Productos

  Como usuario registrado
  Quiero hacer un pedido de productos
  Para abastecer mi bodega

  Scenario: Hacer un pedido exitoso
    Given el usuario está autenticado en la aplicación
    And el usuario se encuentra en la página de pedidos
    When el usuario selecciona los productos que desea pedir
    And especifica la cantidad deseada de cada producto
    And hace clic en el botón "Realizar Pedido"
    Then el usuario debería recibir una confirmación de pedido exitoso

  Scenario: Pedido sin productos seleccionados
    Given el usuario está autenticado en la aplicación
    And el usuario se encuentra en la página de pedidos
    When el usuario hace clic en el botón "Realizar Pedido" sin seleccionar ningún producto
    Then el usuario debería ver un mensaje de error indicando que se debe seleccionar al menos un producto para hacer el pedido

  Scenario: Pedido con cantidades no válidas
    Given el usuario está autenticado en la aplicación
    And el usuario se encuentra en la página de pedidos
    When el usuario selecciona productos y especifica cantidades no válidas
    And hace clic en el botón "Realizar Pedido"
    Then el usuario debería ver un mensaje de error indicando que las cantidades especificadas no son válidas
