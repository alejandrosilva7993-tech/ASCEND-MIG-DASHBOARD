# ASCEND Migration Conclusion Dashboard

Dashboard de cutover readiness para migraciones, con métricas de conclusión y puntos clave.

## Despliegue en GitHub Pages

1. Crea un repositorio en GitHub (puede estar vacío).
2. Ejecuta el script de subida:
   ```bash
   ./subir-a-github.sh
   ```
3. Cuando te pida la URL del repositorio, pega algo como:
   `https://github.com/TU_USUARIO/NOMBRE_REPO.git`
4. El sitio quedará disponible en:
   `https://TU_USUARIO.github.io/NOMBRE_REPO/`

## Configuración de GitHub Pages

En el repositorio: **Settings → Pages** → Source: **Deploy from a branch** → Branch: **main** → Folder: **/ (root)**.

## Archivos (repo autocontenido)

- `index.html` — Dashboard principal
- `ascend-*.css`, `ascend-lazy-reveal.js`, `Arganologo.png`, `icon-lightbulb.svg` — Mismo nivel que `index.html` (sin subcarpetas).
- Otros HTML/PNG en la raíz son referencias antiguas; no son necesarios para la pantalla homologada.

PrimeNG 17 se carga por CDN; requiere internet al abrir la pantalla.
