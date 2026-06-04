package gg.teambattles.sdk.generated.leagues;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.LeagueSummary;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeaguesPostResponse implements Parsable {
    /**
     * The count property
     */
    private Integer count;
    /**
     * The leagues property
     */
    private java.util.List<LeagueSummary> leagues;
    /**
     * The pagination property
     */
    private LeaguesPostResponsePagination pagination;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeaguesPostResponse}
     */
    @jakarta.annotation.Nonnull
    public static LeaguesPostResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeaguesPostResponse();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("leagues", (n) -> { this.setLeagues(n.getCollectionOfObjectValues(LeagueSummary::createFromDiscriminatorValue)); });
        deserializerMap.put("pagination", (n) -> { this.setPagination(n.getObjectValue(LeaguesPostResponsePagination::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the leagues property value. The leagues property
     * @return a {@link java.util.List<LeagueSummary>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueSummary> getLeagues() {
        return this.leagues;
    }
    /**
     * Gets the pagination property value. The pagination property
     * @return a {@link LeaguesPostResponsePagination}
     */
    @jakarta.annotation.Nullable
    public LeaguesPostResponsePagination getPagination() {
        return this.pagination;
    }
    /**
     * Gets the timestamp property value. The timestamp property
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
        writer.writeCollectionOfObjectValues("leagues", this.getLeagues());
        writer.writeObjectValue("pagination", this.getPagination());
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
     * Sets the leagues property value. The leagues property
     * @param value Value to set for the leagues property.
     */
    public void setLeagues(@jakarta.annotation.Nullable final java.util.List<LeagueSummary> value) {
        this.leagues = value;
    }
    /**
     * Sets the pagination property value. The pagination property
     * @param value Value to set for the pagination property.
     */
    public void setPagination(@jakarta.annotation.Nullable final LeaguesPostResponsePagination value) {
        this.pagination = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}
