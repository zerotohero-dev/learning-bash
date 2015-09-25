#!/usr/bin/env bash

function info () {
    date
    who
    uptime
}

info >> log.log
