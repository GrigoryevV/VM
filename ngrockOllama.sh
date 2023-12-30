#!/bin/bash
output=$(ollama serve)
port=$(echo $output | grep -oP 'port: \K\d+' | grep -v '127.0.0.1:11434')
ngrok tcp $port
