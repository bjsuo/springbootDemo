# 使用eclipse-temurin:21-jdk-alpine作为基础镜像
# eclipse-temurin是OpenJDK的一个发行版，由Adoptium项目维护
FROM eclipse-temurin:21-jdk-alpine

# 设置工作目录
WORKDIR /app

# 将构建好的JAR文件复制到容器中
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 暴露端口
EXPOSE 8080

# 容器启动时运行JAR文件
CMD ["java", "-jar", "app.jar"]
