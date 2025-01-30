# flake.nix
#
# This file packages licdata-iac-infrastructure as a Nix flake.
#
# Copyright (C) 2024-today acmsl/licdata-iac-infrastructure
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Nix flake for acmsl/licdata-iac-infrastructure";
  inputs = rec {
    acmsl-licdata-artifact-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:acmsl-def/licdata-artifact-events/0.0.31";
    };
    acmsl-licdata-artifact-events-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.acmsl-licdata-artifact-events.follows = "acmsl-licdata-artifact-events";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:acmsl-def/licdata-artifact-events-infrastructure/0.0.34";
    };
    acmsl-licdata-iac-domain = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      inputs.pythoneda-shared-iac-events.follows = "pythoneda-shared-iac-events";
      inputs.pythoneda-shared-iac-pulumi-azure.follows = "pythoneda-shared-iac-pulumi-azure";
      inputs.pythoneda-shared-iac-shared.follows = "pythoneda-shared-iac-shared";
      url = "github:acmsl-def/licdata-iac-domain/0.0.39";
    };
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    pythoneda-shared-iac-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-iac-def/events/0.0.30";
    };
    pythoneda-shared-iac-events-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-iac-def/events-infrastructure/0.0.16";
    };
    pythoneda-shared-iac-pulumi-azure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-iac-events.follows = "pythoneda-shared-iac-events";
      inputs.pythoneda-shared-iac-shared.follows = "pythoneda-shared-iac-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-iac-def/pulumi-azure/0.0.35";
    };
    pythoneda-shared-iac-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-iac-def/shared/0.0.27";
    };
    pythoneda-shared-pythonlang-banner = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:pythoneda-shared-pythonlang-def/banner/0.0.83";
    };
    pythoneda-shared-pythonlang-domain = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      url = "github:pythoneda-shared-pythonlang-def/domain/0.0.126";
    };
    pythoneda-shared-pythonlang-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-pythonlang-def/infrastructure/0.0.98";
    };
    pythoneda-shared-runtime-secrets-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-runtime-def/secrets-events/0.0.20";
    };
    pythoneda-shared-runtime-secrets-events-infrastructure = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-runtime-def/secrets-events-infrastructure/0.0.20";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "acmsl";
        repo = "licdata-iac-infrastructure";
        version = "0.0.20";
        sha256 = "0pimi161aqr1ygizxsipvc9xrz1mmvff62rwrs4f42rd9711ix87";
        pname = "${org}-${repo}";
        pythonpackage = "org.acmsl.iac.licdata.infrastructure";
        package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
        pkgs = import nixpkgs { inherit system; };
        description = "Licdata IaC Infrastructure layer";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = [ "rydnr <github@acm-sl.org>" ];
        archRole = "B";
        space = "I";
        layer = "A";
        nixpkgsVersion = builtins.readFile "${nixpkgs}/.version";
        nixpkgsRelease =
          builtins.replaceStrings [ "\n" ] [ "" ] "nixpkgs-${nixpkgsVersion}";
        shared = import "${pythoneda-shared-pythonlang-banner}/nix/shared.nix";
        acmsl-licdata-iac-infrastructure-for = {
            acmsl-licdata-artifact-events
          , acmsl-licdata-artifact-events-infrastructure
          , acmsl-licdata-iac-domain
          , python
          , pythoneda-shared-iac-events
          , pythoneda-shared-iac-events-infrastructure
          , pythoneda-shared-iac-pulumi-azure
          , pythoneda-shared-iac-shared
          , pythoneda-shared-pythonlang-banner
          , pythoneda-shared-pythonlang-domain
          , pythoneda-shared-pythonlang-infrastructure
          , pythoneda-shared-runtime-secrets-events
          , pythoneda-shared-runtime-secrets-events-infrastructure
        }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
            banner_file = "${package}/licdata_iac_banner.py";
            banner_class = "LicdataIacBanner";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTomlTemplate = ./templates/pyproject.toml.template;
            pyprojectToml = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              desc = description;
              inherit homepage pname pythonMajorMinorVersion package
                version;
              acmslLicdataArtifactEvents = acmsl-licdata-artifact-events.version;
              acmslLicdataArtifactEventsInfrastructure = acmsl-licdata-artifact-events-infrastructure.version;
              acmslLicdataIacDomain = acmsl-licdata-iac-domain.version;
              azureIdentity = python.pkgs.azure-identity.version;
              azureMgmtResource = python.pkgs.azure-mgmt-resource.version;
              pygobject3 = python.pkgs.pygobject3.version;
              pythonedaSharedIacEvents = pythoneda-shared-iac-events.version;
              pythonedaSharedIacEventsInfrastructure = pythoneda-shared-iac-events-infrastructure.version;
              pythonedaSharedIacPulumiAzure = pythoneda-shared-iac-pulumi-azure.version;
              pythonedaSharedIacShared = pythoneda-shared-iac-shared.version;
              pythonedaSharedPythonlangBanner =
                pythoneda-shared-pythonlang-banner.version;
              pythonedaSharedPythonlangDomain =
                pythoneda-shared-pythonlang-domain.version;
              pythonedaSharedPythonlangInfrastructure =
                pythoneda-shared-pythonlang-infrastructure.version;
              pythonedaSharedRuntimeSecretsEvents =
                pythoneda-shared-runtime-secrets-events.version;
              pythonedaSharedRuntimeSecretsEventsInfrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.version;
              pulumi = python.pkgs.pulumi.version;
              pulumiAzureNative = python.pkgs.pulumi-azure-native.version;
              src = pyprojectTomlTemplate;
            };

            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };

            format = "pyproject";

            nativeBuildInputs = [ python.pkgs.pip python.pkgs.poetry-core pkgs.docker ];
            propagatedBuildInputs = with python.pkgs; [
              acmsl-licdata-artifact-events
              acmsl-licdata-artifact-events-infrastructure
              acmsl-licdata-iac-domain
              azure-identity
              azure-mgmt-resource
              pygobject3
              pythoneda-shared-iac-events
              pythoneda-shared-iac-events-infrastructure
              pythoneda-shared-iac-pulumi-azure
              pythoneda-shared-iac-shared
              pythoneda-shared-pythonlang-banner
              pythoneda-shared-pythonlang-domain
              pythoneda-shared-pythonlang-infrastructure
              pythoneda-shared-runtime-secrets-events
              pythoneda-shared-runtime-secrets-events-infrastructure
              pulumi
              pulumi-azure-native
            ];

            # pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              command cp -r ${src}/* .
              command chmod -R +w .
              command cp ${pyprojectToml} ./pyproject.toml
            '';

            postInstall = with python.pkgs; ''
              for f in $(command find . -name '__init__.py'); do
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  command cp $f $out/lib/python${pythonMajorMinorVersion}/site-packages/$f;
                fi
              done
              command mkdir -p $out/dist $out/deps/flakes $out/deps/nixpkgs
              command cp dist/${wheelName} $out/dist
              for dep in ${acmsl-licdata-artifact-events} ${acmsl-licdata-artifact-events-infrastructure} ${acmsl-licdata-iac-domain} ${pythoneda-shared-iac-events} ${pythoneda-shared-iac-events-infrastructure} ${pythoneda-shared-iac-pulumi-azure} ${pythoneda-shared-iac-shared} ${pythoneda-shared-pythonlang-banner} ${pythoneda-shared-pythonlang-domain} ${pythoneda-shared-pythonlang-infrastructure} ${pythoneda-shared-runtime-secrets-events} ${pythoneda-shared-runtime-secrets-events-infrastructure}; do
                command cp -r $dep/dist/* $out/deps || true
                if [ -e $dep/deps ]; then
                  command cp -r $dep/deps/* $out/deps || true
                fi
                METADATA=$dep/lib/python${pythonMajorMinorVersion}/site-packages/*.dist-info/METADATA
                NAME="$(command grep -m 1 '^Name: ' $METADATA | command cut -d ' ' -f 2)"
                VERSION="$(command grep -m 1 '^Version: ' $METADATA | command cut -d ' ' -f 2)"
                command ln -s $dep $out/deps/flakes/$NAME-$VERSION || true
              done
              for nixpkgsDep in ${azure-identity} ${azure-mgmt-resource} ${pygobject3} ${pulumi} ${pulumi-azure-native}; do
                METADATA=$(command find $nixpkgsDep/lib/python${pythonMajorMinorVersion}/site-packages/ -maxdepth 2 -name METADATA 2> /dev/null || echo "");
                if [ ! -e "$METADATA" ]; then
                  METADATA=$(command find $nixpkgsDep/lib/python${pythonMajorMinorVersion}/site-packages -name '*.egg-info' 2> /dev/null || echo "")
                fi
                NAME="$(command grep -m 1 '^Name: ' $METADATA | command cut -d ' ' -f 2)"
                VERSION="$(command grep -m 1 '^Version: ' $METADATA | command cut -d ' ' -f 2)"
                command ln -s $nixpkgsDep $out/deps/nixpkgs/$NAME-$VERSION || true
              done
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        defaultPackage = packages.default;
        devShells = rec {
          default = acmsl-licdata-iac-infrastructure-python311;
          acmsl-licdata-iac-infrastructure-python39 =
            shared.devShell-for {
              banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39
              }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package = packages.acmsl-licdata-iac-infrastructure-python39;
              python = pkgs.python39;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-iac-infrastructure-python310 =
            shared.devShell-for {
              banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310
              }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package = packages.acmsl-licdata-iac-infrastructure-python310;
              python = pkgs.python310;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-iac-infrastructure-python311 =
            shared.devShell-for {
              banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311
              }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package = packages.acmsl-licdata-iac-infrastructure-python311;
              python = pkgs.python311;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-iac-infrastructure-python312 =
            shared.devShell-for {
              banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312
              }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package = packages.acmsl-licdata-iac-infrastructure-python312;
              python = pkgs.python312;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
              inherit archRole layer org pkgs repo space;
            };
          acmsl-licdata-iac-infrastructure-python313 =
            shared.devShell-for {
              banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313
              }/bin/banner.sh";
              extra-namespaces = "org";
              nixpkgs-release = nixpkgsRelease;
              package = packages.acmsl-licdata-iac-infrastructure-python313;
              python = pkgs.python313;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python313;
              inherit archRole layer org pkgs repo space;
            };
        };
        packages = rec {
          default = acmsl-licdata-iac-infrastructure-python311;
          acmsl-licdata-iac-infrastructure-python39 =
            acmsl-licdata-iac-infrastructure-for {
              acmsl-licdata-artifact-events = acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python39;
              acmsl-licdata-artifact-events-infrastructure = acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python39;
              acmsl-licdata-iac-domain = acmsl-licdata-iac-domain.packages.${system}.acmsl-licdata-iac-domain-python39;
              python = pkgs.python39;
              pythoneda-shared-iac-events =
                pythoneda-shared-iac-events.packages.${system}.pythoneda-shared-iac-events-python39;
              pythoneda-shared-iac-events-infrastructure =
                pythoneda-shared-iac-events-infrastructure.packages.${system}.pythoneda-shared-iac-events-infrastructure-python39;
              pythoneda-shared-iac-pulumi-azure =
                pythoneda-shared-iac-pulumi-azure.packages.${system}.pythoneda-shared-iac-pulumi-azure-python39;
              pythoneda-shared-iac-shared =
                pythoneda-shared-iac-shared.packages.${system}.pythoneda-shared-iac-shared-python39;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python39;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python39;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python39;
            };
          acmsl-licdata-iac-infrastructure-python310 =
            acmsl-licdata-iac-infrastructure-for {
              acmsl-licdata-artifact-events = acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python310;
              acmsl-licdata-artifact-events-infrastructure = acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python310;
              acmsl-licdata-iac-domain = acmsl-licdata-iac-domain.packages.${system}.acmsl-licdata-iac-domain-python310;
              python = pkgs.python310;
              pythoneda-shared-iac-events =
                pythoneda-shared-iac-events.packages.${system}.pythoneda-shared-iac-events-python310;
              pythoneda-shared-iac-events-infrastructure =
                pythoneda-shared-iac-events-infrastructure.packages.${system}.pythoneda-shared-iac-events-infrastructure-python310;
              pythoneda-shared-iac-pulumi-azure =
                pythoneda-shared-iac-pulumi-azure.packages.${system}.pythoneda-shared-iac-pulumi-azure-python310;
              pythoneda-shared-iac-shared =
                pythoneda-shared-iac-shared.packages.${system}.pythoneda-shared-iac-shared-python310;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python310;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python310;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python310;
            };
          acmsl-licdata-iac-infrastructure-python311 =
            acmsl-licdata-iac-infrastructure-for {
              acmsl-licdata-artifact-events = acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python311;
              acmsl-licdata-artifact-events-infrastructure = acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python311;
              acmsl-licdata-iac-domain = acmsl-licdata-iac-domain.packages.${system}.acmsl-licdata-iac-domain-python311;
              python = pkgs.python311;
              pythoneda-shared-iac-events =
                pythoneda-shared-iac-events.packages.${system}.pythoneda-shared-iac-events-python311;
              pythoneda-shared-iac-events-infrastructure =
                pythoneda-shared-iac-events-infrastructure.packages.${system}.pythoneda-shared-iac-events-infrastructure-python311;
              pythoneda-shared-iac-pulumi-azure =
                pythoneda-shared-iac-pulumi-azure.packages.${system}.pythoneda-shared-iac-pulumi-azure-python311;
              pythoneda-shared-iac-shared =
                pythoneda-shared-iac-shared.packages.${system}.pythoneda-shared-iac-shared-python311;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python311;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python311;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python311;
            };
          acmsl-licdata-iac-infrastructure-python312 =
            acmsl-licdata-iac-infrastructure-for {
              acmsl-licdata-artifact-events = acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python312;
              acmsl-licdata-artifact-events-infrastructure = acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python312;
              acmsl-licdata-iac-domain = acmsl-licdata-iac-domain.packages.${system}.acmsl-licdata-iac-domain-python312;
              python = pkgs.python312;
              pythoneda-shared-iac-events =
                pythoneda-shared-iac-events.packages.${system}.pythoneda-shared-iac-events-python312;
              pythoneda-shared-iac-events-infrastructure =
                pythoneda-shared-iac-events-infrastructure.packages.${system}.pythoneda-shared-iac-events-infrastructure-python312;
              pythoneda-shared-iac-pulumi-azure =
                pythoneda-shared-iac-pulumi-azure.packages.${system}.pythoneda-shared-iac-pulumi-azure-python312;
              pythoneda-shared-iac-shared =
                pythoneda-shared-iac-shared.packages.${system}.pythoneda-shared-iac-shared-python312;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python312;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python312;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python312;
            };
          acmsl-licdata-iac-infrastructure-python313 =
            acmsl-licdata-iac-infrastructure-for
              {
              acmsl-licdata-artifact-events = acmsl-licdata-artifact-events.packages.${system}.acmsl-licdata-artifact-events-python313;
              acmsl-licdata-artifact-events-infrastructure = acmsl-licdata-artifact-events-infrastructure.packages.${system}.acmsl-licdata-artifact-events-infrastructure-python313;
              acmsl-licdata-iac-domain = acmsl-licdata-iac-domain.packages.${system}.acmsl-licdata-iac-domain-python313;
              python = pkgs.python313;
              pythoneda-shared-iac-events =
                pythoneda-shared-iac-events.packages.${system}.pythoneda-shared-iac-events-python313;
              pythoneda-shared-iac-events-infrastructure =
                pythoneda-shared-iac-events-infrastructure.packages.${system}.pythoneda-shared-iac-events-infrastructure-python313;
              pythoneda-shared-iac-pulumi-azure =
                pythoneda-shared-iac-pulumi-azure.packages.${system}.pythoneda-shared-iac-pulumi-azure-python313;
              pythoneda-shared-iac-shared =
                pythoneda-shared-iac-shared.packages.${system}.pythoneda-shared-iac-shared-python313;
              pythoneda-shared-pythonlang-banner =
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python313;
              pythoneda-shared-pythonlang-infrastructure =
                pythoneda-shared-pythonlang-infrastructure.packages.${system}.pythoneda-shared-pythonlang-infrastructure-python313;
              pythoneda-shared-runtime-secrets-events =
                pythoneda-shared-runtime-secrets-events.packages.${system}.pythoneda-shared-runtime-secrets-events-python313;
              pythoneda-shared-runtime-secrets-events-infrastructure =
                pythoneda-shared-runtime-secrets-events-infrastructure.packages.${system}.pythoneda-shared-runtime-secrets-events-infrastructure-python313  ;
            };
        };
      });
}
