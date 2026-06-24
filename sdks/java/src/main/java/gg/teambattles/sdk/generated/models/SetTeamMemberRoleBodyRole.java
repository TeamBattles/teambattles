package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The new role for the member. Captaincy is changed via captaincy transfer.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum SetTeamMemberRoleBodyRole implements ValuedEnum {
    CO_CAPTAIN("CO_CAPTAIN"),
    MEMBER("MEMBER");
    public final String value;
    SetTeamMemberRoleBodyRole(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static SetTeamMemberRoleBodyRole forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "CO_CAPTAIN": return CO_CAPTAIN;
            case "MEMBER": return MEMBER;
            default: return null;
        }
    }
}
