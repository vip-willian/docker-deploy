FROM adoptopenjdk/openjdk8

VOLUME /tmp

# 拷贝 jar 包到容器内
COPY ./sentinel-dashboard-1.8.6.jar /sentinel-dashboard.jar
# 定义时区参数
ENV TZ=Asia/Shanghai
# 设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone
# 暴露端口
EXPOSE 8718
# 配置启动命令
ENTRYPOINT ["java", "-jar", "/sentinel-dashboard.jar"]