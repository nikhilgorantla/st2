#!/usr/bin/env bash
# Licensed to the StackStorm, Inc ('StackStorm') under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and

COUNT=${1:-"100"}
SLEEP_DELAY=${2:-"0.5"}

i="0"
while [ $i -lt ${COUNT} ];
do
    i=$[$i+1]

    if [ $(( $RANDOM % 2)) -eq 0 ]; then
        echo "stderr line ${i}" >&2
    else
        echo "stdout line ${i}"
    fi

    sleep ${SLEEP_DELAY}
done
