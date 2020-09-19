#!/bin/bash

create_alias_cmd="alias ll='ls -alF'"
$create_alias_cmd >> ~/.bashrc

source_cmd=". ~/.bashrc"

$source_cmd