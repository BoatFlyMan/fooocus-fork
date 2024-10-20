FROM ghcr.io/lllyasviel/fooocus

USER root

ARG FOOOCUS_USERNAME
ARG FOOOCUS_PASSWORD

RUN if [ -n "$FOOOCUS_USERNAME" -a -n "$FOOOCUS_PASSWORD" ]; then echo "[ { \"user\": \"$FOOOCUS_USERNAME\", \"pass\": \"$FOOOCUS_PASSWORD\" } ]" > /content/app/auth.json; fi
