# Aplicación Móvil Segura

Una aplicación Flutter que implementa protección contra captura de pantalla en todas las vistas excepto en el login.

## Características

### Protección contra Captura de Pantalla
- **Login**: Sin protección - permite capturas de pantalla
- **Pantalla Principal**: Protegida - bloquea capturas de pantalla
- **Pantalla de Perfil**: Protegida - bloquea capturas de pantalla

### Funcionalidades

#### Pantalla de Login
- Formulario de autenticación funcional
- Validación de campos
- Interfaz moderna y atractiva
- Acepta cualquier usuario/contraseña para demostración

#### Pantalla Principal (Home)
- Dashboard con tareas pendientes
- Estadísticas rápidas
- Lista de tareas interactiva
- Navegación a perfil
- Protección activa contra capturas

#### Pantalla de Perfil
- Información personal editable
- Configuraciones de la aplicación
- Opciones de notificaciones
- Cambio de idioma
- Protección activa contra capturas

##### Tecnologías Utilizadas

- **Flutter**: Framework de desarrollo multiplataforma
- **screen_protector**: Plugin para bloquear capturas de pantalla y protección de datos
- **Material Design 3**: Sistema de diseño moderno de Google

### Instalación y Ejecución

1. Asegúrate de tener Flutter instalado
2. Clona el repositorio
3. Ejecuta `flutter pub get` para instalar dependencias
4. Ejecuta `flutter run` para iniciar la aplicación

### Estructura del Proyecto

```
lib/
├── main.dart           # Punto de entrada de la aplicación
├── login_screen.dart   # Pantalla de login (sin protección)
├── home_screen.dart    # Pantalla principal (protegida)
└── profile_screen.dart # Pantalla de perfil (protegida)
```

### Cómo Funciona la Protección

## Mecanismo de Protección

La aplicación utiliza `screen_protector` para implementar protección contra capturas de pantalla:

- **Activación automática**: Se activa al entrar a las pantallas principales
- **Desactivación automática**: Se desactiva al salir o hacer logout
- **Indicador visual**: Muestra el estado de protección en tiempo real
- **Compatibilidad**: Funciona en dispositivos Android e iOS
- **Protección avanzada**: Incluye protección contra grabación de pantalla y filtrado de datos

La protección se activa automáticamente al entrar a las pantallas protegidas y se desactiva al salir de ellas.

### Navegación

1. **Login** → **Home**: Después de autenticación exitosa
2. **Home** → **Perfil**: Mediante navegación en bottom bar
3. **Perfil** → **Login**: Mediante logout
4. **Home** → **Login**: Mediante logout

### Notas de Seguridad

- La protección contra capturas solo funciona en dispositivos Android reales
- En emuladores y dispositivos iOS, la funcionalidad puede ser limitada
- La aplicación muestra indicadores visuales cuando la protección está activa
