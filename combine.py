from configparser import ConfigParser

config = ConfigParser()
with open("rclone.conf", "r") as f:
      contents = f.read()
      config.read_string(contents)
      if not config.has_section("combine"):
        upstreams = " ".join(f"{remote}={remote}:" for remote in config.sections())
        config.add_section("combine")
        config.set("combine", "type", "combine")
        config.set("combine", "upstreams", upstreams)
        with open("rclone.conf", "w") as f:
            config.write(f, space_around_delimiters=False)
