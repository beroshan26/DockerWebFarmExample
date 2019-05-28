# COMMON PATHS

$dockerFolder = (Get-Item -Path "./" -Verbose).FullName
$dOutputFolder = Join-Path $dockerFolder "outputs"
$slnFolder = Join-Path $dockerFolder "../"
$webapiFolder = Join-Path $slnFolder "DockerWebFarmExample"

## CLEAR ######################################################################

Remove-Item $dOutputFolder -Force -Recurse
New-Item -Path $dOutputFolder -ItemType Directory

## RESTORE NUGET PACKAGES #####################################################

Set-Location $slnFolder
dotnet restore

## PUBLISH WEB API PROJECT ###################################################

Set-Location $webapiFolder
dotnet publish --output (Join-Path $dOutputFolder "webapi")

## CREATE DOCKER IMAGES #######################################################

# Webapi
Set-Location (Join-Path $dOutputFolder "webapi")

docker rmi dockerwebfarm/webapi -f
docker build -t dockerwebfarm/webapi .

## FINALIZE ###################################################################

Set-Location $dockerFolder