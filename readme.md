## iBeacon Finder iOS Demo
This is a sample iOS app skeleton for interacting with iBeacons in Swift. Given a fixed iBeacon proximity UUID (provided by the beacon manufacturer) this app listens for iBeacons in both monitoring and ranging mode. Monitoring and ranging events are printed to the console. This app is intended to demonstrate the iBeacon programming model. There is no meaningful UI, all output is printed to the console.

All relevant code is in `ViewController.swift`.

## Sample Output
The console output looks like this

```
monitoring started
DID ENTER REGION: uuid: 74278BDA-B644-4520-8F0C-720EAF059935
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Unknown
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Unknown
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Unknown
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Unknown
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Unknown
DID EXIT REGION: uuid: 74278BDA-B644-4520-8F0C-720EAF059935
DID ENTER REGION: uuid: 74278BDA-B644-4520-8F0C-720EAF059935
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Far
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Near
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Near
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Near
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Immediate
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Immediate
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Immediate
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Immediate
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Immediate
BEACON RANGED: uuid: 74278BDA-B644-4520-8F0C-720EAF059935 major: 65504  minor: 65505 proximity: Immediate
```
