package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The API key owner&apos;s attendance status for this match.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdateAttendanceRequestBodyStatus implements ValuedEnum {
    ATTENDING("ATTENDING"),
    NOT_ATTENDING("NOT_ATTENDING"),
    TENTATIVE("TENTATIVE");
    public final String value;
    UpdateAttendanceRequestBodyStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdateAttendanceRequestBodyStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ATTENDING": return ATTENDING;
            case "NOT_ATTENDING": return NOT_ATTENDING;
            case "TENTATIVE": return TENTATIVE;
            default: return null;
        }
    }
}
