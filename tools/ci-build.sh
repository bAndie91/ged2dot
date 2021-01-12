#!/bin/bash -ex
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

#
# Baseline: Ubuntu latest and macOS 10.15.
#

pip install -r requirements.txt

if [ -n "${GITHUB_JOB}" -a "$(uname -s)" == "Darwin" ]; then
    brew install graphviz
fi

make -j$(getconf _NPROCESSORS_ONLN) check

# vim:set shiftwidth=4 softtabstop=4 expandtab:
