# docker-idris-custom

Custom Docker images for Idris.

## Idris versions

Images are built for the following Idris versions:

* Idris2
  * 0.3.0

Images are named `ejconlon/${IDRIS}-custom:${VERSION}`.

## Usage

    # Fill in your dockerhub username
    # By default, it's mine (ejconlon)
    export NAMESPACE=...

    # Build an image
    ./script/build.sh ${IDRIS} ${VERSION}

    # Drop into a shell to test it out
    ./script/repl.sh ${IDRIS} ${VERSION}

    # Push it to dockerhub
    ./script/push.sh ${IDRIS} ${VERSION}

    # Build and push all versions
    ./script/all.sh

## License

The `PATH` and build container stuff is cribbed from [here](https://gist.github.com/YBogomolov/dc49c610cf7d92c60fb4678bae3ab753#file-dockerfile).
You are free to use this how you wish.
