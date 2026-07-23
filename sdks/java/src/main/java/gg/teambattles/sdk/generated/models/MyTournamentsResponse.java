package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The key owner&apos;s manageable tournaments.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentsResponse implements Parsable {
    /**
     * Number of tournaments returned.
     */
    private Integer count;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
     */
    private java.util.List<MyTournamentSummary> tournaments;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentsResponse}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentsResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentsResponse();
    }
    /**
     * Gets the count property value. Number of tournaments returned.
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
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("tournaments", (n) -> { this.setTournaments(n.getCollectionOfObjectValues(MyTournamentSummary::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Gets the tournaments property value. Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
     * @return a {@link java.util.List<MyTournamentSummary>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MyTournamentSummary> getTournaments() {
        return this.tournaments;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("count", this.getCount());
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeCollectionOfObjectValues("tournaments", this.getTournaments());
    }
    /**
     * Sets the count property value. Number of tournaments returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the tournaments property value. Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
     * @param value Value to set for the tournaments property.
     */
    public void setTournaments(@jakarta.annotation.Nullable final java.util.List<MyTournamentSummary> value) {
        this.tournaments = value;
    }
}
