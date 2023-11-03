Feature: Visualizar detalles de las órdenes

  Scenario: Mayorista Visualiza los detalles de las órdenes
    Given que el Mayorista ha recibido al menos un pedido
    When se desplace a la pestaña de órdenes
    Then podrá visualizar las órdenes con sus respectivos detalles

  Scenario: Mayorista no visualiza los detalles de las órdenes
    Given que el Mayorista no ha recibido ninguna orden
    When se desplace a la pestaña de órdenes
    Then visualizará la página vacía

Examples:
  | MayoristaHaRecibidoPedidos |
  | Sí                        |
  | No                        |
