package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * registration = registration deadline, checkin = check-in opens, start = tournament start.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentCalendarEventKind implements ValuedEnum {
    Registration("registration"),
    Checkin("checkin"),
    Start("start");
    public final String value;
    TournamentCalendarEventKind(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentCalendarEventKind forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "registration": return Registration;
            case "checkin": return Checkin;
            case "start": return Start;
            default: return null;
        }
    }
}
