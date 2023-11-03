Feature: Visualizar ordenes

  Scenario: Mayorista no visualiza ninguna Orden
    Given que el Mayorista no ha recibido ninguna orden
    When se desplace a la pestaña de órdenes
    Then visualizará la pestaña vacía

  Scenario: Mayorista Visualiza sus órdenes
    Given que el Mayorista ha recibido un pedido
    When se desplace a la pestaña de órdenes
    Then visualizará los detalles de sus órdenes

  Scenario Outline: Mayorista visualiza detalles de sus órdenes
    Given que el Mayorista ha recibido un pedido con número de orden <OrderNumber>
    When se desplace a la pestaña de órdenes
    Then visualizará los detalles de la orden con número <OrderNumber>

  Examples:
    | OrderNumber |
    | 12345       |
    | 67890       |
    | 54321       |
