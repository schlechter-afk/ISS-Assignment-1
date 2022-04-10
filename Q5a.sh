#!/bin/bash
read string
output=$(rev<<<"${string}")
echo "$output"

