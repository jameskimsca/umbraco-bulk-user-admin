ECHO APPVEYOR_REPO_BRANCH: %APPVEYOR_REPO_BRANCH%
ECHO APPVEYOR_REPO_TAG: %APPVEYOR_REPO_TAG%
ECHO APPVEYOR_BUILD_NUMBER : %APPVEYOR_BUILD_NUMBER%
ECHO APPVEYOR_BUILD_VERSION : %APPVEYOR_BUILD_VERSION%

CALL src\.nuget\NuGet.exe restore src\Our.Umbraco.BulkUserAdmin.sln
CALL "%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe" build\package.proj