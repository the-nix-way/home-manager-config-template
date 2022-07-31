# Nix Home Manager configuration template

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

This repo provides a Nix [flake template][template] that you can use to create a new [Home Manager][hm] configuration for your environment.

To initialize the template inside an existing project:

```shell
nix flake init \
--template github:the-nix-way/home-manager-config-template
```

To create a new project using the template:

```shell
nix flake new \
--template github:the-nix-way/home-manager-config-template \
./my-home-manager-config
```

Then, inside the directory with the templated contents, you may need to personalize these values:

- [`username`][username]
- [`system`][system]
- [`stateVersion`][state]

Once those values are in place, build and run an activator executable, substituting your provided username for `${USER}`:

```shell
nix build '.#homeConfigurations.${USER}.activationPackage'
./result/activate
```

That creates the initial generation and installs the `home-manager` executable. From now on, you can update your Home Manager config using the provided shell script:

```shell
reload-home-manager-config
```

This is a very simple, baseline config, so feel free to [customize away][options]!

[hm]: https://github.com/nix-community/home-manager
[home]: ./basic/flake.nix#L20
[options]: https://nix-community.github.io/home-manager/options.html
[state]: ./basic/flake.nix#L17
[system]: ./basic/flake.nix#L16
[template]: https://github.com/NixOS/templates
[username]: ./basic/flake.nix#L15
