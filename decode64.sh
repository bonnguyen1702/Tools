#!/bin/bash
decode=$1
echo -n "$decode" | base64 --decode
echo
