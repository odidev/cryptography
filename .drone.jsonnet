local Pipeline(name, image) = {
  kind: "pipeline",
  name: name,
  environment: [
    {
      DRONE_JSONNET_ENABLED: true
    }
  ],
  steps: [
    {
      name: "test",
      image: image,
      commands: [
        "pip install -r requirements.txt",
        "pytest"
      ]
    }
  ]
};

[
  Pipeline("python-2", "python:2"),
  Pipeline("python-3-3", "python:3.3"),
  Pipeline("python-3-4", "python:3.4"),
  Pipeline("python-3-5", "python:3.5"),
  Pipeline("python-3-6", "python:3.6"),
]
