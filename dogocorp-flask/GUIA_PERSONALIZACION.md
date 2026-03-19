# 🎨 Guía de Personalización - Dogocorp Flask

## 📚 ¿Cómo funciona esta página web?

Tu página web está hecha con **Flask** (Python) y tiene 2 archivos principales:

### 1️⃣ **HTML** (`templates/index.html`)
- Es la **estructura** de la página
- Define QUÉ elementos hay (títulos, cartas, botones, etc.)
- Como el "esqueleto" de tu sitio

### 2️⃣ **CSS** (`static/css/style.css`)
- Es el **diseño visual** de la página
- Define CÓMO se ven los elementos (colores, tamaños, animaciones, etc.)
- Como la "ropa" que viste el esqueleto

---

## 🎯 Cosas que puedes hacer FÁCILMENTE

### ✨ Cambiar colores

En el archivo `style.css`, busca estas líneas y cambia los colores:

```css
/* Color del título principal */
h1 {
    color: #ffeb3b;  /* 👈 Cambia este código de color */
}

/* Color de los subtítulos */
h2 {
    color: #ff69b4;  /* 👈 Rosa - cámbialo por otro */
}

/* Color de fondo (degradado) */
body {
    background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
    /* 👆 Estos son 3 colores del degradado */
}
```

**Códigos de colores útiles:**
- `#ff0000` = Rojo
- `#00ff00` = Verde
- `#0000ff` = Azul
- `#ffeb3b` = Amarillo
- `#9c27b0` = Morado
- `#00bcd4` = Cyan

### 🃏 Añadir más cartas

En `index.html`, dentro de `<div class="contenedor-cartas">`, copia esto:

```html
<div class="card">
    <div class="icon">⚡</div>  <!-- 👈 Cambia el emoji -->
    <h2>Tu Título</h2>
    <p>Tu descripción aquí.</p>
    <a href="https://tu-link.com" class="btn" target="_blank">Ver Más</a>
</div>
```

### 🔤 Cambiar el texto

Solo edita el texto entre las etiquetas HTML:

```html
<h1>Dogocorp Systems</h1>
     ↑ Cambia esto por tu texto ↑
```

### 🎭 Cambiar emojis

Los emojis funcionan como texto normal:

```html
<div class="icon">🔥</div>
              ↑ Cambia el emoji aquí
```

**Emojis sugeridos:** 🌟 ⚡ 🎮 💻 🚀 🎨 🎵 🌈 ⭐ 💎 🔮

---

## 🛠️ Conceptos importantes que aprendiste

### 📦 FLEXBOX - La magia de organizar elementos

```css
.contenedor-cartas {
    display: flex;           /* Activa el modo flexible */
    justify-content: center; /* Centra horizontalmente */
    gap: 35px;               /* Espacio entre elementos */
    flex-wrap: wrap;         /* Baja elementos si no caben */
}
```

**¿Por qué es importante?** Antes de Flexbox, centrar elementos era súper complicado. Ahora es fácil y automático.

### 🎬 ANIMACIONES con @keyframes

```css
@keyframes flotar {
    0%   { transform: translateY(0px); }   /* Inicio */
    50%  { transform: translateY(-20px); } /* Mitad */
    100% { transform: translateY(0px); }   /* Final */
}
```

Luego la aplicas:
```css
.luna-symbol {
    animation: flotar 3s infinite ease-in-out;
    /*         ↑      ↑   ↑        ↑
         nombre   duración repetir  suavidad
    */
}
```

### 🎨 GLASSMORPHISM - Efecto vidrio esmerilado

```css
.card {
    background: rgba(255, 255, 255, 0.1);  /* Fondo transparente */
    backdrop-filter: blur(10px);            /* Difumina lo de atrás */
}
```

### 📱 RESPONSIVE DESIGN - Adaptar a celulares

```css
@media (max-width: 768px) {
    /* 👆 "Cuando la pantalla sea menor a 768px..." */
    
    h1 {
        font-size: 2.5rem;  /* Letra más pequeña en celular */
    }
}
```

---

## 🎓 Ejercicios para practicar

### Nivel 1: Principiante
1. ✅ Cambia el color del título principal
2. ✅ Cambia el emoji de la luna por otro
3. ✅ Modifica el texto del footer

### Nivel 2: Intermedio
4. ✅ Añade una tercera carta con un nuevo servicio
5. ✅ Cambia los colores del degradado del fondo
6. ✅ Modifica el tamaño de los iconos de las cartas

### Nivel 3: Avanzado
7. ✅ Crea una nueva animación con @keyframes
8. ✅ Cambia la velocidad de las animaciones existentes
9. ✅ Añade efectos hover diferentes para cada carta

---

## 🌐 Recursos para seguir aprendiendo

### Colores
- **Coolors.co** - Generador de paletas de colores
- **Adobe Color** - Rueda de colores profesional

### Fuentes
- **Google Fonts** - Miles de fuentes gratis
- **Font Awesome** - Iconos profesionales

### Tutoriales
- **MDN Web Docs** - Documentación oficial de HTML/CSS
- **CSS-Tricks** - Trucos y guías de CSS
- **Flexbox Froggy** - Juego para aprender Flexbox

### Inspiración
- **Dribbble** - Diseños profesionales
- **CodePen** - Ejemplos de código interactivos

---

## 🐛 Solución de problemas comunes

### ❌ Los estilos no se aplican
1. Verifica que el archivo CSS esté en la ruta correcta
2. Fuerza la recarga: `Ctrl + Shift + R` (o `Cmd + Shift + R` en Mac)
3. Revisa la consola del navegador (F12) en busca de errores

### ❌ La página no es responsive
1. Verifica que tengas la etiqueta viewport en el `<head>`
2. Revisa que flex-wrap esté en `wrap`
3. Prueba los media queries con las herramientas de desarrollador

### ❌ Las animaciones no funcionan
1. Verifica que el nombre de la animación coincida con @keyframes
2. Asegúrate de tener `animation` correctamente escrita
3. Prueba con diferentes navegadores

---

## 💡 Tips profesionales

1. **Usa comentarios:** Siempre comenta tu código para recordar qué hace cada parte
2. **Mantén el código organizado:** Agrupa estilos relacionados
3. **Prueba en diferentes navegadores:** Chrome, Firefox, Safari
4. **Usa unidades relativas:** `rem`, `em`, `%` en lugar de `px` cuando sea posible
5. **Optimiza imágenes:** Usa formatos modernos como WebP
6. **Accesibilidad:** Añade `alt` a imágenes y buen contraste de colores

---

## 🚀 Próximos pasos

Una vez que domines esto, puedes aprender:

- **JavaScript** - Para hacer la página interactiva (botones, formularios, etc.)
- **Flask avanzado** - Bases de datos, autenticación de usuarios
- **Tailwind CSS** - Framework de CSS moderno
- **React** - Framework de JavaScript para aplicaciones complejas

---

**¡Éxito en tu aprendizaje! 🎉**

*Recuerda: Todos los desarrolladores empezaron donde estás tú ahora. La práctica constante es la clave.*
