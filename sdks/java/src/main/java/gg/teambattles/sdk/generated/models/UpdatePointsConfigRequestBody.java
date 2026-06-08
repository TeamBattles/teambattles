package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Updates league points configuration.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdatePointsConfigRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The allowNegative property
     */
    private Boolean allowNegative;
    /**
     * The baseDraw property
     */
    private Double baseDraw;
    /**
     * The baseLoss property
     */
    private Double baseLoss;
    /**
     * The baseWin property
     */
    private Double baseWin;
    /**
     * The challengeCancelGracePeriodHours property
     */
    private Double challengeCancelGracePeriodHours;
    /**
     * The challengedWinBonus property
     */
    private Double challengedWinBonus;
    /**
     * The challengeRefuseAdditionalPenalty property
     */
    private Double challengeRefuseAdditionalPenalty;
    /**
     * The challengerWinBonus property
     */
    private Double challengerWinBonus;
    /**
     * The forfeitPenalty property
     */
    private Double forfeitPenalty;
    /**
     * Game ID whose points config should change.
     */
    private String gameId;
    /**
     * The matchupCooldownHours property
     */
    private Double matchupCooldownHours;
    /**
     * The scrimmageAwardsPoints property
     */
    private Boolean scrimmageAwardsPoints;
    /**
     * The streakBonusEnabled property
     */
    private Boolean streakBonusEnabled;
    /**
     * The streakBreakpoints property
     */
    private java.util.List<UpdatePointsConfigRequestBodyStreakBreakpoints> streakBreakpoints;
    /**
     * The unitLabel property
     */
    private UpdatePointsConfigRequestBodyUnitLabel unitLabel;
    /**
     * Instantiates a new {@link UpdatePointsConfigRequestBody} and sets the default values.
     */
    public UpdatePointsConfigRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdatePointsConfigRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdatePointsConfigRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdatePointsConfigRequestBody();
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
     * Gets the allowNegative property value. The allowNegative property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getAllowNegative() {
        return this.allowNegative;
    }
    /**
     * Gets the baseDraw property value. The baseDraw property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getBaseDraw() {
        return this.baseDraw;
    }
    /**
     * Gets the baseLoss property value. The baseLoss property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getBaseLoss() {
        return this.baseLoss;
    }
    /**
     * Gets the baseWin property value. The baseWin property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getBaseWin() {
        return this.baseWin;
    }
    /**
     * Gets the challengeCancelGracePeriodHours property value. The challengeCancelGracePeriodHours property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getChallengeCancelGracePeriodHours() {
        return this.challengeCancelGracePeriodHours;
    }
    /**
     * Gets the challengedWinBonus property value. The challengedWinBonus property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getChallengedWinBonus() {
        return this.challengedWinBonus;
    }
    /**
     * Gets the challengeRefuseAdditionalPenalty property value. The challengeRefuseAdditionalPenalty property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getChallengeRefuseAdditionalPenalty() {
        return this.challengeRefuseAdditionalPenalty;
    }
    /**
     * Gets the challengerWinBonus property value. The challengerWinBonus property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getChallengerWinBonus() {
        return this.challengerWinBonus;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(15);
        deserializerMap.put("allowNegative", (n) -> { this.setAllowNegative(n.getBooleanValue()); });
        deserializerMap.put("baseDraw", (n) -> { this.setBaseDraw(n.getDoubleValue()); });
        deserializerMap.put("baseLoss", (n) -> { this.setBaseLoss(n.getDoubleValue()); });
        deserializerMap.put("baseWin", (n) -> { this.setBaseWin(n.getDoubleValue()); });
        deserializerMap.put("challengeCancelGracePeriodHours", (n) -> { this.setChallengeCancelGracePeriodHours(n.getDoubleValue()); });
        deserializerMap.put("challengedWinBonus", (n) -> { this.setChallengedWinBonus(n.getDoubleValue()); });
        deserializerMap.put("challengeRefuseAdditionalPenalty", (n) -> { this.setChallengeRefuseAdditionalPenalty(n.getDoubleValue()); });
        deserializerMap.put("challengerWinBonus", (n) -> { this.setChallengerWinBonus(n.getDoubleValue()); });
        deserializerMap.put("forfeitPenalty", (n) -> { this.setForfeitPenalty(n.getDoubleValue()); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("matchupCooldownHours", (n) -> { this.setMatchupCooldownHours(n.getDoubleValue()); });
        deserializerMap.put("scrimmageAwardsPoints", (n) -> { this.setScrimmageAwardsPoints(n.getBooleanValue()); });
        deserializerMap.put("streakBonusEnabled", (n) -> { this.setStreakBonusEnabled(n.getBooleanValue()); });
        deserializerMap.put("streakBreakpoints", (n) -> { this.setStreakBreakpoints(n.getCollectionOfObjectValues(UpdatePointsConfigRequestBodyStreakBreakpoints::createFromDiscriminatorValue)); });
        deserializerMap.put("unitLabel", (n) -> { this.setUnitLabel(n.getEnumValue(UpdatePointsConfigRequestBodyUnitLabel::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the forfeitPenalty property value. The forfeitPenalty property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getForfeitPenalty() {
        return this.forfeitPenalty;
    }
    /**
     * Gets the gameId property value. Game ID whose points config should change.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the matchupCooldownHours property value. The matchupCooldownHours property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMatchupCooldownHours() {
        return this.matchupCooldownHours;
    }
    /**
     * Gets the scrimmageAwardsPoints property value. The scrimmageAwardsPoints property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getScrimmageAwardsPoints() {
        return this.scrimmageAwardsPoints;
    }
    /**
     * Gets the streakBonusEnabled property value. The streakBonusEnabled property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getStreakBonusEnabled() {
        return this.streakBonusEnabled;
    }
    /**
     * Gets the streakBreakpoints property value. The streakBreakpoints property
     * @return a {@link java.util.List<UpdatePointsConfigRequestBodyStreakBreakpoints>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<UpdatePointsConfigRequestBodyStreakBreakpoints> getStreakBreakpoints() {
        return this.streakBreakpoints;
    }
    /**
     * Gets the unitLabel property value. The unitLabel property
     * @return a {@link UpdatePointsConfigRequestBodyUnitLabel}
     */
    @jakarta.annotation.Nullable
    public UpdatePointsConfigRequestBodyUnitLabel getUnitLabel() {
        return this.unitLabel;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("allowNegative", this.getAllowNegative());
        writer.writeDoubleValue("baseDraw", this.getBaseDraw());
        writer.writeDoubleValue("baseLoss", this.getBaseLoss());
        writer.writeDoubleValue("baseWin", this.getBaseWin());
        writer.writeDoubleValue("challengeCancelGracePeriodHours", this.getChallengeCancelGracePeriodHours());
        writer.writeDoubleValue("challengedWinBonus", this.getChallengedWinBonus());
        writer.writeDoubleValue("challengeRefuseAdditionalPenalty", this.getChallengeRefuseAdditionalPenalty());
        writer.writeDoubleValue("challengerWinBonus", this.getChallengerWinBonus());
        writer.writeDoubleValue("forfeitPenalty", this.getForfeitPenalty());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeDoubleValue("matchupCooldownHours", this.getMatchupCooldownHours());
        writer.writeBooleanValue("scrimmageAwardsPoints", this.getScrimmageAwardsPoints());
        writer.writeBooleanValue("streakBonusEnabled", this.getStreakBonusEnabled());
        writer.writeCollectionOfObjectValues("streakBreakpoints", this.getStreakBreakpoints());
        writer.writeEnumValue("unitLabel", this.getUnitLabel());
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
     * Sets the allowNegative property value. The allowNegative property
     * @param value Value to set for the allowNegative property.
     */
    public void setAllowNegative(@jakarta.annotation.Nullable final Boolean value) {
        this.allowNegative = value;
    }
    /**
     * Sets the baseDraw property value. The baseDraw property
     * @param value Value to set for the baseDraw property.
     */
    public void setBaseDraw(@jakarta.annotation.Nullable final Double value) {
        this.baseDraw = value;
    }
    /**
     * Sets the baseLoss property value. The baseLoss property
     * @param value Value to set for the baseLoss property.
     */
    public void setBaseLoss(@jakarta.annotation.Nullable final Double value) {
        this.baseLoss = value;
    }
    /**
     * Sets the baseWin property value. The baseWin property
     * @param value Value to set for the baseWin property.
     */
    public void setBaseWin(@jakarta.annotation.Nullable final Double value) {
        this.baseWin = value;
    }
    /**
     * Sets the challengeCancelGracePeriodHours property value. The challengeCancelGracePeriodHours property
     * @param value Value to set for the challengeCancelGracePeriodHours property.
     */
    public void setChallengeCancelGracePeriodHours(@jakarta.annotation.Nullable final Double value) {
        this.challengeCancelGracePeriodHours = value;
    }
    /**
     * Sets the challengedWinBonus property value. The challengedWinBonus property
     * @param value Value to set for the challengedWinBonus property.
     */
    public void setChallengedWinBonus(@jakarta.annotation.Nullable final Double value) {
        this.challengedWinBonus = value;
    }
    /**
     * Sets the challengeRefuseAdditionalPenalty property value. The challengeRefuseAdditionalPenalty property
     * @param value Value to set for the challengeRefuseAdditionalPenalty property.
     */
    public void setChallengeRefuseAdditionalPenalty(@jakarta.annotation.Nullable final Double value) {
        this.challengeRefuseAdditionalPenalty = value;
    }
    /**
     * Sets the challengerWinBonus property value. The challengerWinBonus property
     * @param value Value to set for the challengerWinBonus property.
     */
    public void setChallengerWinBonus(@jakarta.annotation.Nullable final Double value) {
        this.challengerWinBonus = value;
    }
    /**
     * Sets the forfeitPenalty property value. The forfeitPenalty property
     * @param value Value to set for the forfeitPenalty property.
     */
    public void setForfeitPenalty(@jakarta.annotation.Nullable final Double value) {
        this.forfeitPenalty = value;
    }
    /**
     * Sets the gameId property value. Game ID whose points config should change.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the matchupCooldownHours property value. The matchupCooldownHours property
     * @param value Value to set for the matchupCooldownHours property.
     */
    public void setMatchupCooldownHours(@jakarta.annotation.Nullable final Double value) {
        this.matchupCooldownHours = value;
    }
    /**
     * Sets the scrimmageAwardsPoints property value. The scrimmageAwardsPoints property
     * @param value Value to set for the scrimmageAwardsPoints property.
     */
    public void setScrimmageAwardsPoints(@jakarta.annotation.Nullable final Boolean value) {
        this.scrimmageAwardsPoints = value;
    }
    /**
     * Sets the streakBonusEnabled property value. The streakBonusEnabled property
     * @param value Value to set for the streakBonusEnabled property.
     */
    public void setStreakBonusEnabled(@jakarta.annotation.Nullable final Boolean value) {
        this.streakBonusEnabled = value;
    }
    /**
     * Sets the streakBreakpoints property value. The streakBreakpoints property
     * @param value Value to set for the streakBreakpoints property.
     */
    public void setStreakBreakpoints(@jakarta.annotation.Nullable final java.util.List<UpdatePointsConfigRequestBodyStreakBreakpoints> value) {
        this.streakBreakpoints = value;
    }
    /**
     * Sets the unitLabel property value. The unitLabel property
     * @param value Value to set for the unitLabel property.
     */
    public void setUnitLabel(@jakarta.annotation.Nullable final UpdatePointsConfigRequestBodyUnitLabel value) {
        this.unitLabel = value;
    }
}
