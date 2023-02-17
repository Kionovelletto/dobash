#!/bin/bash

while :; do
  for i in / - \\ \|; do
    echo -ne "\b$i"
  done
done
