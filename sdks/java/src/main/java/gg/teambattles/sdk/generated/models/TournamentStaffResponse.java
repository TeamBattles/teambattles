package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The tournament staff roster.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentStaffResponse implements Parsable {
    /**
     * Number of staff rows returned.
     */
    private Integer count;
    /**
     * Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
     */
    private java.util.List<TournamentStaffMember> staff;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentStaffResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentStaffResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentStaffResponse();
    }
    /**
     * Gets the count property value. Number of staff rows returned.
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
        deserializerMap.put("staff", (n) -> { this.setStaff(n.getCollectionOfObjectValues(TournamentStaffMember::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the staff property value. Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
     * @return a {@link java.util.List<TournamentStaffMember>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentStaffMember> getStaff() {
        return this.staff;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("staff", this.getStaff());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. Number of staff rows returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the staff property value. Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
     * @param value Value to set for the staff property.
     */
    public void setStaff(@jakarta.annotation.Nullable final java.util.List<TournamentStaffMember> value) {
        this.staff = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}
