package gg.teambattles.sdk.generated.orgs.item.teams;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ApiTeamSummary;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope containing teams, count, and a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamsGetResponse implements Parsable {
    /**
     * The count property
     */
    private Integer count;
    /**
     * The teams property
     */
    private java.util.List<ApiTeamSummary> teams;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TeamsGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static TeamsGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TeamsGetResponse();
    }
    /**
     * Gets the count property value. The count property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("teams", (n) -> { this.setTeams(n.getCollectionOfObjectValues(ApiTeamSummary::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the teams property value. The teams property
     * @return a {@link java.util.List<ApiTeamSummary>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiTeamSummary> getTeams() {
        return this.teams;
    }
    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("teams", this.getTeams());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. The count property
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the teams property value. The teams property
     * @param value Value to set for the teams property.
     */
    public void setTeams(@jakarta.annotation.Nullable final java.util.List<ApiTeamSummary> value) {
        this.teams = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}
