#!/bin/sh

set -x

/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user # Remove duplicates in the "Open With" menu
