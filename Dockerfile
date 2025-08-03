# 使用openjdk:21-jdk-alpine作为基础镜像
FROM openjdk:21-jdk-alpine

# 设置工作目录
WORKDIR /app
 

# 容器启动时运行JAR文件
CMD ["java", "-version", " "]
