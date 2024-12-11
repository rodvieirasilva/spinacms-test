#!/bin/sh
#USAGE name "start-spina"
#USAGE bin "start-spina.sh"
#USAGE about "Initialize and start a Spina CMS project"
#USAGE version "1.0.0"
#USAGE author "Rodrigo Vieira da Silva"
#USAGE license "MIT"
#USAGE flag "-h --help" help="Print this help message"

echo "start-spina script running"
echo "start-spina run 'rails spina:install' to create first Spina entry"
echo "\n\n\n\n" | rails spina:install
if [ $? -ne 0 ]; then
    echo "start-spina rails spina:install failed"
    exit 1
fi
echo "start-spina rails spina:install success"
echo "start-spina run 'rails server' to start server"
rails server -b 0.0.0.0
if [ $? -ne 0 ]; then
    echo "start-spina rails server failed"
    exit 1
fi
echo "start-spina script finished"