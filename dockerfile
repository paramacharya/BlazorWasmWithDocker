FROM mcr.microsoft.com/dotnet/core/sdk:3.0-buster AS build
WORKDIR /src
COPY BlazorWasmDocker.csproj .
RUN dotnet restore "BlazorWasmDocker.csproj"
COPY . .
RUN dotnet build "BlazorWasmDocker.csproj" -c Release -o /app/build
