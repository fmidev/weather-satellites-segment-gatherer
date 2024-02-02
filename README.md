# Segment gatherer container recipe for OpenShift

This recipe is automatically built on new version tags, and the image
is available from
https://quay.io/repository/fmi/weather-satellites-segment-gatherer

Segment gatherer is  a part of Pytroll  pytroll-collectors package. It
is used to  collect metadata of segmented satellite data  for a single
time  step and  then publishing  that  collection to  be processed  by
Trollflow2.

## Configuration

To use the container, mount configuration files to `/config` directory
and place the configuration for `segment-gatherer.py` to
`/config/segment_gatherer.yaml` or `segment_gatherer.conf` files. In
addition environment variables are read from `/config/env-variables`
and the file is thus required (can be empty).

For details on segment gatherer configuration refer to
https://github.com/pytroll/pytroll-collectors
