﻿FROM nginx:latest
ENTRYPOINT ["nginx", "-g", "daemon off;"]

#FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
#WORKDIR /app
#EXPOSE 99
#EXPOSE 98
#
#FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
#WORKDIR /src
#COPY ["Docker.csproj", "./"]
#RUN dotnet restore "Docker.csproj"
#COPY . .
#WORKDIR "/src/"
#RUN dotnet build "Docker.csproj" -c Release -o /app/build
#
#FROM build AS publish
#RUN dotnet publish "Docker.csproj" -c Release -o /app/publish /p:UseAppHost=false
#
#FROM base AS final
#WORKDIR /app
#COPY  --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "Docker.dll"]

