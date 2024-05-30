#!/usr/bin/env bats

@test "evaluate twdps.io ingress" {
  run bash -c "curl https://httpbin.cdicohorts-twelve.com/status/418"
  [[ "${output}" =~ "-=[ teapot ]=-" ]]
}

@test "evaluate twdps.io certificate" {
  run bash -c "curl --cert-status -v https://httpbin.cdicohorts-twelve.com/status/418"
  [[ "${output}" =~ "SSL certificate verify ok" ]]
}
