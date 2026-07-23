package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Tournament entry payload for a team the caller leads.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentTeamEntryBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * User IDs to register as the team&apos;s tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament&apos;s teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
     */
    private java.util.List<String> roster;
    /**
     * Instantiates a new {@link TournamentTeamEntryBody} and sets the default values.
     */
    public TournamentTeamEntryBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentTeamEntryBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentTeamEntryBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentTeamEntryBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(1);
        deserializerMap.put("roster", (n) -> { this.setRoster(n.getCollectionOfPrimitiveValues(String.class)); });
        return deserializerMap;
    }
    /**
     * Gets the roster property value. User IDs to register as the team&apos;s tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament&apos;s teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getRoster() {
        return this.roster;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("roster", this.getRoster());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the roster property value. User IDs to register as the team&apos;s tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament&apos;s teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
     * @param value Value to set for the roster property.
     */
    public void setRoster(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.roster = value;
    }
}
