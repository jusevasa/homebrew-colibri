# homebrew-colibri

Tap de Homebrew para [Colibrí](https://github.com/jusevasa/colibri), la terminal para macOS pensada para correr varios agentes de código en pestañas.

```sh
brew tap jusevasa/colibri
brew trust --cask jusevasa/colibri/colibri
brew install --cask jusevasa/colibri/colibri
```

Homebrew (desde la versión 7) solo carga casks de fuera de su catálogo oficial si se añade su tap y se marcan como de confianza; `brew trust --cask` confía solo en este cask, no en todo el tap.

Para actualizar: `brew upgrade --cask colibri`. Colibrí enseña entonces el botón «Actualizar», que la reinicia con la versión nueva. Lo que esté corriendo en las pestañas se detiene, así que espera a que terminen tus agentes; las pestañas se reabren si está activada «Recuperar pestañas al abrir» (lo está por defecto).

`Casks/colibri.rb` lo escribe solo el flujo de publicación de [jusevasa/colibri](https://github.com/jusevasa/colibri/blob/main/.github/workflows/release.yml) con `scripts/cask.sh` en cada versión: no lo edites a mano.
