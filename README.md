# Seguimiento de priorizados (versión web)

Interfaz del tablero, sin datos. La página se abre vacía y arma las vistas cuando se le carga
el archivo `datos_priorizados.json` que genera la aplicación de escritorio.

## Uso

1. Abrir la página.
2. Pulsar **Cargar datos** (o arrastrar el archivo a la ventana) y elegir `datos_priorizados.json`.

El archivo se lee en el navegador. No se sube a ningún servidor ni queda guardado al cerrar la página.

## Qué no hace

- No lee las bases de origen: eso lo hace la aplicación de escritorio, que produce el JSON.
- "Exportar" descarga un CSV con la primera hoja; el Excel con varias hojas sale solo de la aplicación.

## Actualizar la página

`index.html` y `echarts.min.js` son copias de la interfaz de la aplicación. Para publicar una
versión nueva se ejecuta `publicar.bat`, que vuelve a copiarlos y los sube.
