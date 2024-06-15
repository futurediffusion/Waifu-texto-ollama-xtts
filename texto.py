import requests
from pydub import AudioSegment
# Usamos la biblioteca de reproducción de audio nativa de pygame
from pygame import mixer
import ollama
import os
mixer.init()    
# Obtener la ruta al directorio actual
current_dir = os.path.dirname(os.path.abspath(__file__))

# Ruta al intérprete de Python dentro del entorno virtual
VIRTUAL_ENV_PYTHON = os.path.join(current_dir, 'venv', 'Scripts', 'python.exe')

# Cargar el modelo de lenguaje una vez fuera del bucle
llm_model = ollama.chat(model='NOMBREDETUMODELO', messages=[
                        {"role": "user", "content": ""}])['model']


def get_llm_response(prompt, model=llm_model):
    response = ollama.chat(model=model, messages=[
        {
            "role": "user",
            "content": prompt,
        }
    ])
    return response['message']['content']


def synthesize_speech(text, url="http://localhost:8020/tts_to_audio/"):
    payload = {
        "text": text,
        "speaker_wav": "speaker.wav",  # Ruta al archivo WAV del hablante
        "language": "es"  # Ajusta el idioma según sea necesario
    }
    try:
        response = requests.post(url, json=payload)
        if response.status_code == 200:
            audio_data = response.content
            with open("temp_audio.wav", "wb") as audio_file:
                audio_file.write(audio_data)
            # Reproducir el audio usando pygame
            audio = AudioSegment.from_wav("temp_audio.wav")
            mixer.Sound("temp_audio.wav").play()
        else:
            print(f"Error: {response.status_code} - {response.text}")
    except requests.exceptions.RequestException as e:
        print(f"Error en la solicitud HTTP: {e}")
    except Exception as e:
        print(f"Error inesperado: {e}")


def process_text(text):
    response = get_llm_response(text)
    print("Respuesta del modelo:", response)
    synthesize_speech(response)


def main():
    while True:
        user_text = input("Por favor, ingrese el texto: ")
        process_text(user_text)


if __name__ == '__main__':
    main()
