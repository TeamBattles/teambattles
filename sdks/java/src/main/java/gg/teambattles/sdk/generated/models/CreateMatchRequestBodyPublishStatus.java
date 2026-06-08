package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Publish status (defaults to DRAFT).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum CreateMatchRequestBodyPublishStatus implements ValuedEnum {
    DRAFT("DRAFT"),
    PUBLISHED("PUBLISHED"),
    ARCHIVED("ARCHIVED");
    public final String value;
    CreateMatchRequestBodyPublishStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static CreateMatchRequestBodyPublishStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "DRAFT": return DRAFT;
            case "PUBLISHED": return PUBLISHED;
            case "ARCHIVED": return ARCHIVED;
            default: return null;
        }
    }
}
