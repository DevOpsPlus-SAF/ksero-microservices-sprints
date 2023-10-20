Feature: Agregar Productos a mi stock actual

  Como usuario registrado
  Quiero poder agregar productos a mi stock actual
  Para mantener un registro preciso de los productos en mi inventario

  Scenario: Agregar un producto al stock
    Given el usuario está autenticado en la aplicación
    And el usuario se encuentra en la página de gestión de stock
    When el usuario selecciona un producto para agregar al stock
    And especifica la cantidad de productos a agregar
    And hace clic en el botón "Agregar al Stock"
    Then el usuario debería ver una confirmación de que el producto ha sido agregado al stock

  Scenario: Agregar un producto con cantidad no válida
    Given el usuario está autenticado en la aplicación
    And el usuario se encuentra en la página de gestión de stock
    When el usuario selecciona un producto para agregar al stock
    And especifica una cantidad no válida (por ejemplo, una cantidad negativa)
    And hace clic en el botón "Agregar al Stock"
    Then el usuario debería ver un mensaje de error indicando que la cantidad especificada no es válida

  Scenario: Agregar un producto no existente
    Given el usuario está autenticado en la aplicación
    And el usuario se encuentra en la página de gestión de stock
    When el usuario intenta agregar un producto que no existe en el inventario
    Then el usuario debería ver un mensaje de error indicando que el producto no se puede agregar porque no existe en el inventario
