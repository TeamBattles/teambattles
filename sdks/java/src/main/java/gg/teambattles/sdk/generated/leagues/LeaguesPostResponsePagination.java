package gg.teambattles.sdk.generated.leagues;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeaguesPostResponsePagination implements Parsable {
    /**
     * The limit property
     */
    private Integer limit;
    /**
     * The page property
     */
    private Integer page;
    /**
     * The total property
     */
    private Integer total;
    /**
     * The totalPages property
     */
    private Integer totalPages;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeaguesPostResponsePagination}
     */
    @jakarta.annotation.Nonnull
    public static LeaguesPostResponsePagination createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeaguesPostResponsePagination();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("page", (n) -> { this.setPage(n.getIntegerValue()); });
        deserializerMap.put("total", (n) -> { this.setTotal(n.getIntegerValue()); });
        deserializerMap.put("totalPages", (n) -> { this.setTotalPages(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the limit property value. The limit property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the page property value. The page property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getPage() {
        return this.page;
    }
    /**
     * Gets the total property value. The total property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTotal() {
        return this.total;
    }
    /**
     * Gets the totalPages property value. The totalPages property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTotalPages() {
        return this.totalPages;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeIntegerValue("page", this.getPage());
        writer.writeIntegerValue("total", this.getTotal());
        writer.writeIntegerValue("totalPages", this.getTotalPages());
    }
    /**
     * Sets the limit property value. The limit property
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the page property value. The page property
     * @param value Value to set for the page property.
     */
    public void setPage(@jakarta.annotation.Nullable final Integer value) {
        this.page = value;
    }
    /**
     * Sets the total property value. The total property
     * @param value Value to set for the total property.
     */
    public void setTotal(@jakarta.annotation.Nullable final Integer value) {
        this.total = value;
    }
    /**
     * Sets the totalPages property value. The totalPages property
     * @param value Value to set for the totalPages property.
     */
    public void setTotalPages(@jakarta.annotation.Nullable final Integer value) {
        this.totalPages = value;
    }
}
