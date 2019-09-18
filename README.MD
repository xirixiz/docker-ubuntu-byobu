[![BuyMeCoffee][buymecoffeebedge]][buymecoffee]

# Build the Docker image (docker-cli)
```bash
docker build . -t docker-cli
```

# Run the Docker container (byobu)
```bash
docker rm -f docker-cli
docker run --rm -ti --name docker-cli --net host --hostname byobu docker-cli byobu -S work
```

# Run the Docker container (shell only)
```bash
docker rm -f docker-cli
docker run --rm -ti --hostname byobu docker-cli bash
```

[buymecoffee]: https://www.buymeacoffee.com/xirixiz
[buymecoffeebedge]: https://camo.githubusercontent.com/cd005dca0ef55d7725912ec03a936d3a7c8de5b5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6275792532306d6525323061253230636f666665652d646f6e6174652d79656c6c6f772e737667
