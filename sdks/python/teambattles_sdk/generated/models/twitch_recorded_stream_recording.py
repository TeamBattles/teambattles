from enum import Enum

class TwitchRecordedStream_recording(str, Enum):
    Available = "available",
    Unverified = "unverified",
    Removed = "removed",

