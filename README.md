# Image
[![](https://images.microbadger.com/badges/image/tunip/picons.svg)](https://microbadger.com/images/tunip/picons "Get your own image badge on microbadger.com")

# About
Picons based on Alpine Linux.

Create Picons for Tvheadend, VDR or Enigma2.

# Voluems
|Local|Container|Comment|
|---|---|---|
|/your path/picons|/data|Source files and picons|

# Usage
Create data/picons-source/build-input/backgrounds.conf
```
# Tvheadend/Kodi
264x198;264x198;light;transparent
```

Create one input source like Tvheadend in data/picons-source/build-input/tvheadend.serverconf
```
TVH_HOST="192.168.1.10"
TVH_PORT="9981"
TVH_USER="admin"
TVH_PASS="password"
```

```
docker run --rm --name="picons" -v /your path/picons:/data tunip/picons bash build-picons.sh
```

Output directory
```
/data/picons
```

