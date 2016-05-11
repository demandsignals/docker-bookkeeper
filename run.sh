#!/usr/bin/env sh

/bookkeeper-server-4.3.2/bin/bookkeeper shell metaformat --nonInteractive
/bookkeeper-server-4.3.2/bin/bookkeeper bookie
