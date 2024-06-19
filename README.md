<div style="display: flex; justify-content: center;">
<img src="https://i.imgur.com/bCERKil.png" alt="audacity" width="50%">
</div>
# Waifu-texto-ollama-xtts
### Un progreama  de python para interactuar por texto  con un modelo llm local mediante ollama con salida por voz con xtts

# Características
Interacción por Texto: Permite enviar consultas de texto y recibir respuestas generadas por un modelo LLM.

Salida de Voz: Convierte las respuestas generadas por el modelo en audio usando xTTS.

Modelo Local: Utiliza un modelo LLM almacenado localmente mediante el programa ollama para garantizar la privacidad y reducir la latencia.

### Requisitos
Python 3.10. : https://www.python.org/downloads/release/python-3109/

Ollama. Descargalo desde su web oficial : https://ollama.com/

Git. : https://git-scm.com/downloads

Minimo una grafica con 4 de VRAM

# Instalación
1. Clona el repositorio:

En una carpeta de tu eleccion en la barra de direcciones escribe Cmd y presiona enter.

Aparecera una consola donde debes pegar el siguiente codigo. 

```
git clone https://github.com/futurediffusion/Waifu-texto-ollama-xtts.git
```
2. Ejecuta el archivo Xtts-fullinstall.bat , y espera que se instalen todas las dependencias necesarias para el funcionamiento de Xtts . 
Esta consola se cerrara sola al terminar el proceso.

3. elige la voz que quieras usar, solo necesitas un audio de 10 segundos formato wav, de preferencia que sea mono, y de 22050 hz para mayor velocidad, puedes editar tu audio de esta manera con un programa gratuito como audacity.  https://www.audacityteam.org/
<div style="display: flex; justify-content: center;">
<img src="https://i.imgur.com/YUQsYjM.png" alt="audacity" width="50%">
</div>

De nombre colocale speaker y Luego guarda este archivo dentro de la ruta xtts-venv\Scripts\speakers 


5. Ejecutar el archivo xtts-Run.bat , se abrira una consola, espera a que aparezcan letras verdes, y manten esta consola abierta mientras utilices el programa. 

6. abre el archivo texto.py , con segundo click y elige bloc de notas o notepad ++ 
Y en la linea numero 15
```
llm_model = ollama.chat(model='NOMBREDETUMODELO', messages=[
```

Sustituye NOMBREDETUMODELO por el nombre de el modelo LLM de ollama que tengas instalado, y guarda el archivo. 

Para crear un modelo con una personalidad customizada, mira mi video sobre ollama que dejara en la seccion de links utiles 

6.  Ejecuta el archivo Run-texto.bat ,  Una vez abierto este instalara las dependencias necesarias , se conectara automaticamente con la api de Xtts . espera que aparezca el mensaje Por favor, ingrese el texto: y podras escribirle al modelo local. 

7. Para mas diversion utiliza este programa junto a un modelo Vtuber con el programa vtube studio el cual es gratuito en steam.  Asegurate de configurar tu salida de audio de escritorio , en la configuracion de audio de el programa,  y en el parametro mouth open de el personaje. 


# LINKS UTILES


# Video sobre esta herramienta.

[![Texto alternativo](https://i.imgur.com/bYkVb9V.png)](https://youtu.be/8zKrHNf9GxA)
   

## Guia de instalacion de Ollama


[![Texto alternativo](https://i.imgur.com/JH0clgd.png)](https://www.youtube.com/watch?v=psdU-CqFgcA)

## Guia de configuracion de personajes vtuber

[![Texto alternativo](https://i.imgur.com/fnHBRE9.png)](https://www.youtube.com/watch?v=b6D94bRp9cc)



