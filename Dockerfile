# Usa una imagen base oficial de Python más reciente
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requisitos a la imagen
COPY requirements.txt .

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido del directorio actual al contenedor
COPY . .

# Expone el puerto en el que Django correrá
EXPOSE 8000

# Define el comando por defecto a ejecutar
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
