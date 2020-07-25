local Pipeline(image) = {
  kind: "pipeline",
  name: version,
  steps: [
    {
      name: "test",
      image: image,
      commands: [
        "ls -l"
      ]
    }
  ]
};

[
  Pipeline("python3.8")
]
