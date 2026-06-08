<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Updates league points configuration.
*/
class UpdatePointsConfigRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var bool|null $allowNegative The allowNegative property
    */
    private ?bool $allowNegative = null;
    
    /**
     * @var float|null $baseDraw The baseDraw property
    */
    private ?float $baseDraw = null;
    
    /**
     * @var float|null $baseLoss The baseLoss property
    */
    private ?float $baseLoss = null;
    
    /**
     * @var float|null $baseWin The baseWin property
    */
    private ?float $baseWin = null;
    
    /**
     * @var float|null $challengeCancelGracePeriodHours The challengeCancelGracePeriodHours property
    */
    private ?float $challengeCancelGracePeriodHours = null;
    
    /**
     * @var float|null $challengedWinBonus The challengedWinBonus property
    */
    private ?float $challengedWinBonus = null;
    
    /**
     * @var float|null $challengeRefuseAdditionalPenalty The challengeRefuseAdditionalPenalty property
    */
    private ?float $challengeRefuseAdditionalPenalty = null;
    
    /**
     * @var float|null $challengerWinBonus The challengerWinBonus property
    */
    private ?float $challengerWinBonus = null;
    
    /**
     * @var float|null $forfeitPenalty The forfeitPenalty property
    */
    private ?float $forfeitPenalty = null;
    
    /**
     * @var string|null $gameId Game ID whose points config should change.
    */
    private ?string $gameId = null;
    
    /**
     * @var float|null $matchupCooldownHours The matchupCooldownHours property
    */
    private ?float $matchupCooldownHours = null;
    
    /**
     * @var bool|null $scrimmageAwardsPoints The scrimmageAwardsPoints property
    */
    private ?bool $scrimmageAwardsPoints = null;
    
    /**
     * @var bool|null $streakBonusEnabled The streakBonusEnabled property
    */
    private ?bool $streakBonusEnabled = null;
    
    /**
     * @var array<UpdatePointsConfigRequestBody_streakBreakpoints>|null $streakBreakpoints The streakBreakpoints property
    */
    private ?array $streakBreakpoints = null;
    
    /**
     * @var UpdatePointsConfigRequestBody_unitLabel|null $unitLabel The unitLabel property
    */
    private ?UpdatePointsConfigRequestBody_unitLabel $unitLabel = null;
    
    /**
     * Instantiates a new UpdatePointsConfigRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdatePointsConfigRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdatePointsConfigRequestBody {
        return new UpdatePointsConfigRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the allowNegative property value. The allowNegative property
     * @return bool|null
    */
    public function getAllowNegative(): ?bool {
        return $this->allowNegative;
    }

    /**
     * Gets the baseDraw property value. The baseDraw property
     * @return float|null
    */
    public function getBaseDraw(): ?float {
        return $this->baseDraw;
    }

    /**
     * Gets the baseLoss property value. The baseLoss property
     * @return float|null
    */
    public function getBaseLoss(): ?float {
        return $this->baseLoss;
    }

    /**
     * Gets the baseWin property value. The baseWin property
     * @return float|null
    */
    public function getBaseWin(): ?float {
        return $this->baseWin;
    }

    /**
     * Gets the challengeCancelGracePeriodHours property value. The challengeCancelGracePeriodHours property
     * @return float|null
    */
    public function getChallengeCancelGracePeriodHours(): ?float {
        return $this->challengeCancelGracePeriodHours;
    }

    /**
     * Gets the challengedWinBonus property value. The challengedWinBonus property
     * @return float|null
    */
    public function getChallengedWinBonus(): ?float {
        return $this->challengedWinBonus;
    }

    /**
     * Gets the challengeRefuseAdditionalPenalty property value. The challengeRefuseAdditionalPenalty property
     * @return float|null
    */
    public function getChallengeRefuseAdditionalPenalty(): ?float {
        return $this->challengeRefuseAdditionalPenalty;
    }

    /**
     * Gets the challengerWinBonus property value. The challengerWinBonus property
     * @return float|null
    */
    public function getChallengerWinBonus(): ?float {
        return $this->challengerWinBonus;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'allowNegative' => fn(ParseNode $n) => $o->setAllowNegative($n->getBooleanValue()),
            'baseDraw' => fn(ParseNode $n) => $o->setBaseDraw($n->getFloatValue()),
            'baseLoss' => fn(ParseNode $n) => $o->setBaseLoss($n->getFloatValue()),
            'baseWin' => fn(ParseNode $n) => $o->setBaseWin($n->getFloatValue()),
            'challengeCancelGracePeriodHours' => fn(ParseNode $n) => $o->setChallengeCancelGracePeriodHours($n->getFloatValue()),
            'challengedWinBonus' => fn(ParseNode $n) => $o->setChallengedWinBonus($n->getFloatValue()),
            'challengeRefuseAdditionalPenalty' => fn(ParseNode $n) => $o->setChallengeRefuseAdditionalPenalty($n->getFloatValue()),
            'challengerWinBonus' => fn(ParseNode $n) => $o->setChallengerWinBonus($n->getFloatValue()),
            'forfeitPenalty' => fn(ParseNode $n) => $o->setForfeitPenalty($n->getFloatValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'matchupCooldownHours' => fn(ParseNode $n) => $o->setMatchupCooldownHours($n->getFloatValue()),
            'scrimmageAwardsPoints' => fn(ParseNode $n) => $o->setScrimmageAwardsPoints($n->getBooleanValue()),
            'streakBonusEnabled' => fn(ParseNode $n) => $o->setStreakBonusEnabled($n->getBooleanValue()),
            'streakBreakpoints' => fn(ParseNode $n) => $o->setStreakBreakpoints($n->getCollectionOfObjectValues([UpdatePointsConfigRequestBody_streakBreakpoints::class, 'createFromDiscriminatorValue'])),
            'unitLabel' => fn(ParseNode $n) => $o->setUnitLabel($n->getEnumValue(UpdatePointsConfigRequestBody_unitLabel::class)),
        ];
    }

    /**
     * Gets the forfeitPenalty property value. The forfeitPenalty property
     * @return float|null
    */
    public function getForfeitPenalty(): ?float {
        return $this->forfeitPenalty;
    }

    /**
     * Gets the gameId property value. Game ID whose points config should change.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the matchupCooldownHours property value. The matchupCooldownHours property
     * @return float|null
    */
    public function getMatchupCooldownHours(): ?float {
        return $this->matchupCooldownHours;
    }

    /**
     * Gets the scrimmageAwardsPoints property value. The scrimmageAwardsPoints property
     * @return bool|null
    */
    public function getScrimmageAwardsPoints(): ?bool {
        return $this->scrimmageAwardsPoints;
    }

    /**
     * Gets the streakBonusEnabled property value. The streakBonusEnabled property
     * @return bool|null
    */
    public function getStreakBonusEnabled(): ?bool {
        return $this->streakBonusEnabled;
    }

    /**
     * Gets the streakBreakpoints property value. The streakBreakpoints property
     * @return array<UpdatePointsConfigRequestBody_streakBreakpoints>|null
    */
    public function getStreakBreakpoints(): ?array {
        return $this->streakBreakpoints;
    }

    /**
     * Gets the unitLabel property value. The unitLabel property
     * @return UpdatePointsConfigRequestBody_unitLabel|null
    */
    public function getUnitLabel(): ?UpdatePointsConfigRequestBody_unitLabel {
        return $this->unitLabel;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('allowNegative', $this->getAllowNegative());
        $writer->writeFloatValue('baseDraw', $this->getBaseDraw());
        $writer->writeFloatValue('baseLoss', $this->getBaseLoss());
        $writer->writeFloatValue('baseWin', $this->getBaseWin());
        $writer->writeFloatValue('challengeCancelGracePeriodHours', $this->getChallengeCancelGracePeriodHours());
        $writer->writeFloatValue('challengedWinBonus', $this->getChallengedWinBonus());
        $writer->writeFloatValue('challengeRefuseAdditionalPenalty', $this->getChallengeRefuseAdditionalPenalty());
        $writer->writeFloatValue('challengerWinBonus', $this->getChallengerWinBonus());
        $writer->writeFloatValue('forfeitPenalty', $this->getForfeitPenalty());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeFloatValue('matchupCooldownHours', $this->getMatchupCooldownHours());
        $writer->writeBooleanValue('scrimmageAwardsPoints', $this->getScrimmageAwardsPoints());
        $writer->writeBooleanValue('streakBonusEnabled', $this->getStreakBonusEnabled());
        $writer->writeCollectionOfObjectValues('streakBreakpoints', $this->getStreakBreakpoints());
        $writer->writeEnumValue('unitLabel', $this->getUnitLabel());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the allowNegative property value. The allowNegative property
     * @param bool|null $value Value to set for the allowNegative property.
    */
    public function setAllowNegative(?bool $value): void {
        $this->allowNegative = $value;
    }

    /**
     * Sets the baseDraw property value. The baseDraw property
     * @param float|null $value Value to set for the baseDraw property.
    */
    public function setBaseDraw(?float $value): void {
        $this->baseDraw = $value;
    }

    /**
     * Sets the baseLoss property value. The baseLoss property
     * @param float|null $value Value to set for the baseLoss property.
    */
    public function setBaseLoss(?float $value): void {
        $this->baseLoss = $value;
    }

    /**
     * Sets the baseWin property value. The baseWin property
     * @param float|null $value Value to set for the baseWin property.
    */
    public function setBaseWin(?float $value): void {
        $this->baseWin = $value;
    }

    /**
     * Sets the challengeCancelGracePeriodHours property value. The challengeCancelGracePeriodHours property
     * @param float|null $value Value to set for the challengeCancelGracePeriodHours property.
    */
    public function setChallengeCancelGracePeriodHours(?float $value): void {
        $this->challengeCancelGracePeriodHours = $value;
    }

    /**
     * Sets the challengedWinBonus property value. The challengedWinBonus property
     * @param float|null $value Value to set for the challengedWinBonus property.
    */
    public function setChallengedWinBonus(?float $value): void {
        $this->challengedWinBonus = $value;
    }

    /**
     * Sets the challengeRefuseAdditionalPenalty property value. The challengeRefuseAdditionalPenalty property
     * @param float|null $value Value to set for the challengeRefuseAdditionalPenalty property.
    */
    public function setChallengeRefuseAdditionalPenalty(?float $value): void {
        $this->challengeRefuseAdditionalPenalty = $value;
    }

    /**
     * Sets the challengerWinBonus property value. The challengerWinBonus property
     * @param float|null $value Value to set for the challengerWinBonus property.
    */
    public function setChallengerWinBonus(?float $value): void {
        $this->challengerWinBonus = $value;
    }

    /**
     * Sets the forfeitPenalty property value. The forfeitPenalty property
     * @param float|null $value Value to set for the forfeitPenalty property.
    */
    public function setForfeitPenalty(?float $value): void {
        $this->forfeitPenalty = $value;
    }

    /**
     * Sets the gameId property value. Game ID whose points config should change.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the matchupCooldownHours property value. The matchupCooldownHours property
     * @param float|null $value Value to set for the matchupCooldownHours property.
    */
    public function setMatchupCooldownHours(?float $value): void {
        $this->matchupCooldownHours = $value;
    }

    /**
     * Sets the scrimmageAwardsPoints property value. The scrimmageAwardsPoints property
     * @param bool|null $value Value to set for the scrimmageAwardsPoints property.
    */
    public function setScrimmageAwardsPoints(?bool $value): void {
        $this->scrimmageAwardsPoints = $value;
    }

    /**
     * Sets the streakBonusEnabled property value. The streakBonusEnabled property
     * @param bool|null $value Value to set for the streakBonusEnabled property.
    */
    public function setStreakBonusEnabled(?bool $value): void {
        $this->streakBonusEnabled = $value;
    }

    /**
     * Sets the streakBreakpoints property value. The streakBreakpoints property
     * @param array<UpdatePointsConfigRequestBody_streakBreakpoints>|null $value Value to set for the streakBreakpoints property.
    */
    public function setStreakBreakpoints(?array $value): void {
        $this->streakBreakpoints = $value;
    }

    /**
     * Sets the unitLabel property value. The unitLabel property
     * @param UpdatePointsConfigRequestBody_unitLabel|null $value Value to set for the unitLabel property.
    */
    public function setUnitLabel(?UpdatePointsConfigRequestBody_unitLabel $value): void {
        $this->unitLabel = $value;
    }

}
