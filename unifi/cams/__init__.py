from unifi.cams.dahua import DahuaCam
from unifi.cams.frigate import FrigateCam
from unifi.cams.hikvision import HikvisionCam
from unifi.cams.reolink import Reolink
from unifi.cams.reolink_nvr import ReolinkNVRCam
from unifi.cams.rtsp import RTSPCam
from unifi.cams.custom import CustomCam

__all__ = [
    "FrigateCam",
    "HikvisionCam",
    "DahuaCam",
    "RTSPCam",
    "Reolink",
    "ReolinkNVRCam",
    "CustomCam"
]
