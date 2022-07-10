{
  description = "Home Manager configuration template";

  outputs = { self }: {
    templates = {
      default = {
        path = ./template;
        description = "Home Manager configuration template";
      };
    }
  }
}
