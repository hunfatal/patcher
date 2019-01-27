#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'frameworks/av'
    'hardware/ril-caf'
    'packages/apps/LockClock'
    'system/core'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/YumeMichi/${repository}"/*

    cd "${ROOT}"
done
