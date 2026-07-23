package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * League placement-points configuration.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentLeaguePointsRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
     */
    private java.util.List<TournamentPlacementPointsEntry> leaguePointsByPlacement;
    /**
     * Whether finishing this tournament awards league points to the league season.
     */
    private Boolean leaguePointsEnabled;
    /**
     * Instantiates a new {@link TournamentLeaguePointsRequestBody} and sets the default values.
     */
    public TournamentLeaguePointsRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentLeaguePointsRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentLeaguePointsRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentLeaguePointsRequestBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("leaguePointsByPlacement", (n) -> { this.setLeaguePointsByPlacement(n.getCollectionOfObjectValues(TournamentPlacementPointsEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("leaguePointsEnabled", (n) -> { this.setLeaguePointsEnabled(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the leaguePointsByPlacement property value. The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
     * @return a {@link java.util.List<TournamentPlacementPointsEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentPlacementPointsEntry> getLeaguePointsByPlacement() {
        return this.leaguePointsByPlacement;
    }
    /**
     * Gets the leaguePointsEnabled property value. Whether finishing this tournament awards league points to the league season.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getLeaguePointsEnabled() {
        return this.leaguePointsEnabled;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("leaguePointsByPlacement", this.getLeaguePointsByPlacement());
        writer.writeBooleanValue("leaguePointsEnabled", this.getLeaguePointsEnabled());
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
     * Sets the leaguePointsByPlacement property value. The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
     * @param value Value to set for the leaguePointsByPlacement property.
     */
    public void setLeaguePointsByPlacement(@jakarta.annotation.Nullable final java.util.List<TournamentPlacementPointsEntry> value) {
        this.leaguePointsByPlacement = value;
    }
    /**
     * Sets the leaguePointsEnabled property value. Whether finishing this tournament awards league points to the league season.
     * @param value Value to set for the leaguePointsEnabled property.
     */
    public void setLeaguePointsEnabled(@jakarta.annotation.Nullable final Boolean value) {
        this.leaguePointsEnabled = value;
    }
}
