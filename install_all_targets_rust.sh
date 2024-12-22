#!/bin/bash

rustup target list | awk '{print $1}' | xargs -I% rustup target add "%"