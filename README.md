# Stow linka el contenido de la carpeta contenedora, con el ~/.folder correspondiente

stow neovim

# Para comprobar que hay link con stow
ls -la ~| grep .config

# Como cambiar el color

- Buscar tu theme favorito en https://vimcolors.com/
- Copiar el fichero en colors/theme_name
- Actualizar settings/configs.vim `set color theme_name`
