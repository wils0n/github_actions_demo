# Imagen base ligera de Python 3.11
FROM python:3.11-slim

# Metadata de la imagen
LABEL maintainer="tu-email@ejemplo.com"
LABEL description="GitHub Actions Demo - Python CI/CD"

# Establecer directorio de trabajo
WORKDIR /app

# Copiar requirements.txt primero (para aprovechar cache de Docker)
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente
COPY hello.py .

# Variables de entorno
ENV PYTHONUNBUFFERED=1

# Comando por defecto (puedes cambiarlo según tu app)
CMD ["python", "hello.py"]