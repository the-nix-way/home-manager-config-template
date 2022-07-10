# Nix Home Manager configuration template

In an existing project:

```shell
nix flake init \
--template github:the-nix-way/home-manager-config-template
```

To create a new project:

```shell
nix flake new \
--template github:the-nix-way/home-manager-config-template \
./my-home-manager-config
```
