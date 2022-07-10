{
  description = "Home Manager configuration template";

  outputs = { self }: {
    templates = {
      basic = {
        path = ./basic;
        description = "Home Manager configuration template";
      };

      default = self.templates.basic;
    };
  };
}
