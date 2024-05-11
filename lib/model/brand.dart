enum Brand {
  flutter("Flutter", "assets/icon_flutter.svg"),
  spring("Spring", "assets/icon_spring.svg"),
  nodejs("Node.js", "assets/icon_nodejs.svg"),
  git("Git", "assets/icon_git.svg"),
  docker("Docker", "assets/icon_docker.svg"),
  figma("Figma", "assets/icon_figma.svg"),
  github("GitHub", "assets/icon_github.svg",
      url: "https://github.com/KilianDeveloper"),
  linkedin("LinkedIn", "assets/icon_linkedin.svg",
      url: "https://www.linkedin.com/in/kilian-markgraf"),
  firebase("Firebase", "assets/icon_firebase.svg");

  const Brand(this.name, this.resourcePath, {this.url});

  final String name;
  final String resourcePath;
  final String? url;
}
