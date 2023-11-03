Feature: Estado de órdenes

  Scenario: Bodeguero visualiza el estado de sus órdenes
    Given que el Bodeguero ha realizado un pedido
    When se desplaza a la pestaña de órdenes
    Then visualizará el estado de sus órdenes

  Scenario Outline: Bodeguero visualiza el estado de sus órdenes con diferentes estados
    Given que el Bodeguero ha realizado un pedido con estado "<Estado>"
    When se desplaza a la pestaña de órdenes
    Then visualizará el estado "<Estado>" de sus órdenes

  Examples:
    | Estado       |
    | Aceptada     |
    | Pendiente    |
    | Rechazada    |

  Scenario: Bodeguero no visualiza ninguna orden
    Given que el Bodeguero no ha realizado ninguna orden
    When se desplaza a la pestaña de órdenes
    Then visualizará la pestaña vacía
