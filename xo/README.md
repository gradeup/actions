# xo

## Usage

Executes xo i

```
action "XO" {
  uses = "gradeup/actions/xo@master"
  args = ["*.js"]
}
```

```
action "XO Fix" {
  uses = "gradeup/actions/xo@master"
  args = ["*.js --fix"]
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
