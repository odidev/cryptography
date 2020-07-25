local Pipeline(name1, image1) = {
  kind: "pipeline",
  name: name1,
  platform:
    arch: "arm64"
  steps: [
    {
      name: "test",
      image: image1,
      commands: [
        "pip install -r requirements.txt"
      ]
      environment: [
        {
          TOXENV: "py38"
          LIBRESSL: "2.9.2"
        }
      ]
    }
  ]
};

[
  Pipeline("test", "python:3.8"),
]