#!/bin/bash
sudo apt update -o Acquire::http::AllowRedirect=false && sudo apt --dry-run -o Acquire::http::AllowRedirect=false -y dist-upgrade 
