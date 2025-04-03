# test_cowsay

## Standalone

Run with:
```
    $ uv run test_cowsay <stuff...>
```

## Within a Charliecloud image

Build the image:
```
    $ ch-image build -t test-cowsay -f Dockerfile .
    $ ch-convert test-cowsay cowsay.sqfs

```

Run with:
```
    $ ch-run cowsay.sqfs --cd=/usr/src/test_cowsay -- uv run --no-cache --no-sync test_cowsay foobar
```

