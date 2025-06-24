# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements. See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership. The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
#
FROM openjdk:19-jdk AS builder

ENV JAR_URL="https://api.github.com/repos/Ksarfo69/App.Fineract/releases/assets/266932013"
ENV JAR_NAME="fineract-provider.jar"

WORKDIR /app

# Download the JAR file
RUN microdnf install -y curl && curl -v \
                                -H "Accept: application/octet-stream" \
                                -H 'Authorization: token $GITHUB_PAT' \
                                -L $JAR_URL \
                                -o $JAR_NAME && microdnf clean all

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "fineract-provider.jar"]
