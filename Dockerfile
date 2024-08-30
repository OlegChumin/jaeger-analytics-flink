# Базовый образ с Amazon Corretto 11
FROM amazoncorretto:11

# Копируем собранный JAR файл в контейнер
COPY build/libs/jaeger-analytics.jar /app/jaeger-analytics.jar

# Указываем команду для запуска приложения
ENTRYPOINT ["java", "-jar", "/app/jaeger-analytics.jar"]

# Команда для создания образа из jar файла сборки
# docker build -t jaeger-analytics-flink .

# Команда для сохранения образа в tar файл
# docker save -o jaeger-analytics-flink.tar jaeger-analytics-flink
