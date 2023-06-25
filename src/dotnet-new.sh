#!/bin/sh

dotnet new sln -n $2;
dotnet new $1 -n $2;
dotnet new xunit -n $2.Tests;
dotnet sln add $2/$2.csproj;
dotnet sln add $2.Tests/$2.Tests.csproj;
cd $2.Tests;
dotnet add reference ../$2/$2.csproj;
dotnet add package fluentassertions;