package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * API key owner&apos;s apply-to-join eligibility.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueApplyEligibilityEligibility implements Parsable {
    /**
     * The eligibleTeams property
     */
    private java.util.List<LeagueApplyEligibilityEligibilityEligibleTeams> eligibleTeams;
    /**
     * The hasApprovedTeamHere property
     */
    private Boolean hasApprovedTeamHere;
    /**
     * The isAuthed property
     */
    private Boolean isAuthed;
    /**
     * The pendingTeams property
     */
    private java.util.List<LeagueApplyEligibilityEligibilityPendingTeams> pendingTeams;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueApplyEligibilityEligibility}
     */
    @jakarta.annotation.Nonnull
    public static LeagueApplyEligibilityEligibility createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueApplyEligibilityEligibility();
    }
    /**
     * Gets the eligibleTeams property value. The eligibleTeams property
     * @return a {@link java.util.List<LeagueApplyEligibilityEligibilityEligibleTeams>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueApplyEligibilityEligibilityEligibleTeams> getEligibleTeams() {
        return this.eligibleTeams;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("eligibleTeams", (n) -> { this.setEligibleTeams(n.getCollectionOfObjectValues(LeagueApplyEligibilityEligibilityEligibleTeams::createFromDiscriminatorValue)); });
        deserializerMap.put("hasApprovedTeamHere", (n) -> { this.setHasApprovedTeamHere(n.getBooleanValue()); });
        deserializerMap.put("isAuthed", (n) -> { this.setIsAuthed(n.getBooleanValue()); });
        deserializerMap.put("pendingTeams", (n) -> { this.setPendingTeams(n.getCollectionOfObjectValues(LeagueApplyEligibilityEligibilityPendingTeams::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the hasApprovedTeamHere property value. The hasApprovedTeamHere property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getHasApprovedTeamHere() {
        return this.hasApprovedTeamHere;
    }
    /**
     * Gets the isAuthed property value. The isAuthed property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsAuthed() {
        return this.isAuthed;
    }
    /**
     * Gets the pendingTeams property value. The pendingTeams property
     * @return a {@link java.util.List<LeagueApplyEligibilityEligibilityPendingTeams>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueApplyEligibilityEligibilityPendingTeams> getPendingTeams() {
        return this.pendingTeams;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("eligibleTeams", this.getEligibleTeams());
        writer.writeBooleanValue("hasApprovedTeamHere", this.getHasApprovedTeamHere());
        writer.writeBooleanValue("isAuthed", this.getIsAuthed());
        writer.writeCollectionOfObjectValues("pendingTeams", this.getPendingTeams());
    }
    /**
     * Sets the eligibleTeams property value. The eligibleTeams property
     * @param value Value to set for the eligibleTeams property.
     */
    public void setEligibleTeams(@jakarta.annotation.Nullable final java.util.List<LeagueApplyEligibilityEligibilityEligibleTeams> value) {
        this.eligibleTeams = value;
    }
    /**
     * Sets the hasApprovedTeamHere property value. The hasApprovedTeamHere property
     * @param value Value to set for the hasApprovedTeamHere property.
     */
    public void setHasApprovedTeamHere(@jakarta.annotation.Nullable final Boolean value) {
        this.hasApprovedTeamHere = value;
    }
    /**
     * Sets the isAuthed property value. The isAuthed property
     * @param value Value to set for the isAuthed property.
     */
    public void setIsAuthed(@jakarta.annotation.Nullable final Boolean value) {
        this.isAuthed = value;
    }
    /**
     * Sets the pendingTeams property value. The pendingTeams property
     * @param value Value to set for the pendingTeams property.
     */
    public void setPendingTeams(@jakarta.annotation.Nullable final java.util.List<LeagueApplyEligibilityEligibilityPendingTeams> value) {
        this.pendingTeams = value;
    }
}
