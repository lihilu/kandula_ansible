#!/usr/bin/env bash
set -e

ps -Af | grep "jenkins" | grep -v grep | awk '{print$2}'