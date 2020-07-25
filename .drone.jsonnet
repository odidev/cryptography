local Pipeline(image) = {
  kind: "pipeline",
  name: "test",
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
