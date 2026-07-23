package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * A tournament field whose edit requires staff re-approval once approved.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentMaterialField implements ValuedEnum {
    Name("name"),
    Description("description"),
    Rules("rules"),
    GameId("gameId"),
    PlaylistId("playlistId"),
    TeamSize("teamSize"),
    Format("format"),
    FormatConfig("formatConfig"),
    MinParticipants("minParticipants"),
    MaxParticipants("maxParticipants"),
    RegistrationMode("registrationMode"),
    RegistrationStartsAt("registrationStartsAt"),
    RegistrationEndsAt("registrationEndsAt"),
    CheckInRequired("checkInRequired"),
    CheckInOpensMinutesBefore("checkInOpensMinutesBefore"),
    StartsAt("startsAt"),
    EndsAt("endsAt"),
    PrizePool("prizePool"),
    PrizeCurrency("prizeCurrency"),
    PrizeBreakdown("prizeBreakdown"),
    PrizeDescription("prizeDescription"),
    BannerStorageId("bannerStorageId"),
    LogoStorageId("logoStorageId"),
    SponsorTags("sponsorTags"),
    SocialLinks("socialLinks"),
    Visibility("visibility");
    public final String value;
    TournamentMaterialField(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentMaterialField forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "name": return Name;
            case "description": return Description;
            case "rules": return Rules;
            case "gameId": return GameId;
            case "playlistId": return PlaylistId;
            case "teamSize": return TeamSize;
            case "format": return Format;
            case "formatConfig": return FormatConfig;
            case "minParticipants": return MinParticipants;
            case "maxParticipants": return MaxParticipants;
            case "registrationMode": return RegistrationMode;
            case "registrationStartsAt": return RegistrationStartsAt;
            case "registrationEndsAt": return RegistrationEndsAt;
            case "checkInRequired": return CheckInRequired;
            case "checkInOpensMinutesBefore": return CheckInOpensMinutesBefore;
            case "startsAt": return StartsAt;
            case "endsAt": return EndsAt;
            case "prizePool": return PrizePool;
            case "prizeCurrency": return PrizeCurrency;
            case "prizeBreakdown": return PrizeBreakdown;
            case "prizeDescription": return PrizeDescription;
            case "bannerStorageId": return BannerStorageId;
            case "logoStorageId": return LogoStorageId;
            case "sponsorTags": return SponsorTags;
            case "socialLinks": return SocialLinks;
            case "visibility": return Visibility;
            default: return null;
        }
    }
}
