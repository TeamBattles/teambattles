from enum import Enum

class ApiStrategyShape_type(str, Enum):
    Ink = "ink",
    Line = "line",
    Arrow = "arrow",
    Rect = "rect",
    Ellipse = "ellipse",
    Polygon = "polygon",
    Text = "text",
    Token = "token",
    Image = "image",

