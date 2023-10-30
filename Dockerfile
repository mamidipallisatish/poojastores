FROM mcr.microsoft.com/dotnet/aspnet:5.0-node AS base
WORKDIR /app
EXPOSE 80

FROM base AS final
WORKDIR /app
COPY . .
ENTRYPOINT ["dotnet", "YourApp.dll"]
