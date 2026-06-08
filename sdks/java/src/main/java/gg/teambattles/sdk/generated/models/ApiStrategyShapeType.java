package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Shape primitive type.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum ApiStrategyShapeType implements ValuedEnum {
    Ink("ink"),
    Line("line"),
    Arrow("arrow"),
    Rect("rect"),
    Ellipse("ellipse"),
    Polygon("polygon"),
    Text("text"),
    Token("token"),
    Image("image");
    public final String value;
    ApiStrategyShapeType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static ApiStrategyShapeType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ink": return Ink;
            case "line": return Line;
            case "arrow": return Arrow;
            case "rect": return Rect;
            case "ellipse": return Ellipse;
            case "polygon": return Polygon;
            case "text": return Text;
            case "token": return Token;
            case "image": return Image;
            default: return null;
        }
    }
}
