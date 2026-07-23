package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Tournament staff role.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentStaffRole implements ValuedEnum {
    ADMIN("ADMIN"),
    MODERATOR("MODERATOR");
    public final String value;
    TournamentStaffRole(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentStaffRole forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ADMIN": return ADMIN;
            case "MODERATOR": return MODERATOR;
            default: return null;
        }
    }
}
