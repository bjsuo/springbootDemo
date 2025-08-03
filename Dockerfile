# 使用openjdk:21-jdk-alpine作为基础镜像
FROM openjdk:21-jdk-alpine

# 设置工作目录
WORKDIR /app

# 将构建好的JAR文件复制到容器中
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 容器启动时运行JAR文件
CMD ["java", "-jar", "app.jar"]
