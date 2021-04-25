# tslab-notebook

A docker image for Typescript support with jupyter service.

Base on:
- [jupyter/docker-stacks](https://github.com/jupyter/docker-stacks)
- [yunabe/tslab](https://github.com/yunabe/tslab)

## Usgae

```bash
docker-compose up
```

or

```bash
docker-compose -d up
```

Then open browser, change port to `10000` in the tip of output message.

```
http://127.0.0.1:10000/lab?token=<token>
```
