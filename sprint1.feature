Feature: Gestión de Productos

  Escenario: Actualizar Detalles del Producto
    Dado que existe un producto existente con los siguientes detalles:
      | nombreDelProducto |
      | Producto Existente |
    Cuando actualizo los detalles del producto a:
      | nombreDelProducto     |
      | Producto Actualizado |
    Entonces los detalles del producto deberían ser los siguientes:
      | nombreDelProducto |
      | Producto Actualizado |

  Escenario: Listar Todos los Productos
    Dado que existen varios productos con diferentes detalles
    Cuando listo todos los productos
    Entonces debería ver una lista de productos con sus detalles

  Escenario: Consultar Detalles del Producto
    Dado que existe un producto existente con los siguientes detalles:
      | nombreDelProducto |
      | Producto Y        |
    Cuando consulto los detalles del producto
    Entonces debería ver los detalles del producto de la siguiente manera:
      | nombreDelProducto |
      | Producto Y        |

  Escenario: Validar Detalles del Producto
    Dado los siguientes detalles de producto no válidos:
      | nombreDelProducto |
      |                  |  # Nombre de producto en blanco
    Cuando creo un nuevo producto
    Entonces el producto no debería guardarse
    Y debería ver un mensaje de error que indica que se requiere el nombre del producto

  Escenario: Eliminar un Producto
    Dado que existe un producto existente con los siguientes detalles:
      | nombreDelProducto |
      | Producto X        |
    Cuando elimino el producto
    Entonces el producto debería ser eliminado de la base de datos

Feature: Gestión de Productos

  Escenario: Crear un Producto
    Dado que el usuario se encuentra en la página de creación de productos
    Cuando proporciona los siguientes detalles del producto:
      | Nombre del Producto |
      | Nuevo Producto      |
      | Descripción         |
      | Detalles del Producto |
      | Precio              |
      | 19.99               |
    Y hace clic en el botón "Crear"
    Entonces se debería agregar un nuevo producto al sistema con los siguientes detalles:
      | Nombre del Producto |
      | Nuevo Producto      |
      | Descripción         |
      | Detalles del Producto |
      | Precio              |
      | 19.99               |
    Y el usuario debería ser redirigido a la página de detalles del producto nuevo

Feature: Registro de usuario (Wholesaler)
  Escenario 1: Registro exitoso de un nuevo usuario
  Dado que soy un nuevo usuario
  Cuando ingreso mi correo electrónico "nuevo@ejemplo.com" y contraseña "contrasena123"
  Y presiono el botón de registro
  Entonces debería ver un mensaje de confirmación "¡Registro exitoso!"
  Y debería estar logueado en la aplicación
  Escenario 2: Registro con un correo electrónico ya existente
  Dado que soy un nuevo usuario
  Cuando ingreso mi correo electrónico "usuario_existente@ejemplo.com" y contraseña "contrasena456"
  Y presiono el botón de registro
  Entonces debería ver un mensaje de error "El correo electrónico ya está registrado"
  Y no debería estar logueado en la aplicación
    
  Escenario 3: Registro sin ingresar correo electrónico
  Dado que soy un nuevo usuario
  Cuando no ingreso mi correo electrónico
  Y ingreso la contraseña "contrasena789"
  Y presiono el botón de registro
  Entonces debería ver un mensaje de error "Debes ingresar un correo electrónico"
  Y no debería estar logueado en la aplicación

  Escenario 4: Registro sin ingresar contraseña
  Dado que soy un nuevo usuario
  Cuando ingreso mi correo electrónico "nuevo@ejemplo.com"
  Y no ingreso una contraseña
  Y presiono el botón de registro
  Entonces debería ver un mensaje de error "Debes ingresar una contraseña"
  Y no debería estar logueado en la aplicación