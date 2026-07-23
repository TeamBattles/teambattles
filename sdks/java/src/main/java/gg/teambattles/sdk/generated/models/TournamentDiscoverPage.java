package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A page of publicly listed tournaments, featured entries first.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentDiscoverPage implements Parsable {
    /**
     * Number of tournaments in this page.
     */
    private Integer count;
    /**
     * Echo of the applied page size.
     */
    private Integer limit;
    /**
     * Echo of the requested 1-based page.
     */
    private Integer page;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Total tournaments matching the filters.
     */
    private Integer total;
    /**
     * Tournaments on this page.
     */
    private java.util.List<TournamentSummary> tournaments;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentDiscoverPage}
     */
    @jakarta.annotation.Nonnull
    public static TournamentDiscoverPage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentDiscoverPage();
    }
    /**
     * Gets the count property value. Number of tournaments in this page.
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("page", (n) -> { this.setPage(n.getIntegerValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("total", (n) -> { this.setTotal(n.getIntegerValue()); });
        deserializerMap.put("tournaments", (n) -> { this.setTournaments(n.getCollectionOfObjectValues(TournamentSummary::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the limit property value. Echo of the applied page size.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the page property value. Echo of the requested 1-based page.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getPage() {
        return this.page;
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
     * Gets the total property value. Total tournaments matching the filters.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTotal() {
        return this.total;
    }
    /**
     * Gets the tournaments property value. Tournaments on this page.
     * @return a {@link java.util.List<TournamentSummary>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentSummary> getTournaments() {
        return this.tournaments;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("count", this.getCount());
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeIntegerValue("page", this.getPage());
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeIntegerValue("total", this.getTotal());
        writer.writeCollectionOfObjectValues("tournaments", this.getTournaments());
    }
    /**
     * Sets the count property value. Number of tournaments in this page.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the limit property value. Echo of the applied page size.
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the page property value. Echo of the requested 1-based page.
     * @param value Value to set for the page property.
     */
    public void setPage(@jakarta.annotation.Nullable final Integer value) {
        this.page = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the total property value. Total tournaments matching the filters.
     * @param value Value to set for the total property.
     */
    public void setTotal(@jakarta.annotation.Nullable final Integer value) {
        this.total = value;
    }
    /**
     * Sets the tournaments property value. Tournaments on this page.
     * @param value Value to set for the tournaments property.
     */
    public void setTournaments(@jakarta.annotation.Nullable final java.util.List<TournamentSummary> value) {
        this.tournaments = value;
    }
}
