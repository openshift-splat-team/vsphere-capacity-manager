#!/bin/bash

set -o nounset
set -o pipefail

REPO_ROOT=$(dirname "${BASH_SOURCE}")/..

echo KUBEBUILDER_ASSETS=$KUBEBUILDER_ASSETS

GINKGO=${GINKGO:-"go run -race ${REPO_ROOT}/vendor/github.com/onsi/ginkgo/v2/ginkgo"}

${GINKGO} -r
