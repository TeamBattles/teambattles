package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdateLeagueTicketRequestBodyStatus implements ValuedEnum {
    Open("open"),
    In_progress("in_progress"),
    Awaiting_response("awaiting_response"),
    Resolved("resolved"),
    Closed("closed");
    public final String value;
    UpdateLeagueTicketRequestBodyStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdateLeagueTicketRequestBodyStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "open": return Open;
            case "in_progress": return In_progress;
            case "awaiting_response": return Awaiting_response;
            case "resolved": return Resolved;
            case "closed": return Closed;
            default: return null;
        }
    }
}
