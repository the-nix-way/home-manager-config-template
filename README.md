# Nix Home Manager configuration template

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

Then, inside the directory with the templated contents, you need to personalize the [`username`][username] and [`system`][system] values, as you may not be using a `aarch64-darwin` system and you probably don't want to keep your username as `change-me-plz`!

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
[options]: https://nix-community.github.io/home-manager/options.html
[system]: ./template/flake.nix#L15
[template]: https://github.com/NixOS/templates
[username]: ./template/flake.nix#L14
