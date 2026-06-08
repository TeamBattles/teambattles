<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Filters and cursor pagination for public open-match discovery.
*/
class MatchDiscoverBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var MatchDiscoverBody_cursor|null $cursor The cursor property
    */
    private ?MatchDiscoverBody_cursor $cursor = null;
    
    /**
     * @var string|null $gameId The gameId property
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $gameSlug The gameSlug property
    */
    private ?string $gameSlug = null;
    
    /**
     * @var string|null $leagueId The leagueId property
    */
    private ?string $leagueId = null;
    
    /**
     * @var string|null $leagueSeasonId The leagueSeasonId property
    */
    private ?string $leagueSeasonId = null;
    
    /**
     * @var int|null $limit The limit property
    */
    private ?int $limit = null;
    
    /**
     * @var MatchDiscoverBody_matchType|null $matchType The matchType property
    */
    private ?MatchDiscoverBody_matchType $matchType = null;
    
    /**
     * @var MatchDiscoverBody_platform|null $platform The platform property
    */
    private ?MatchDiscoverBody_platform $platform = null;
    
    /**
     * @var MatchDiscoverBody_region|null $region The region property
    */
    private ?MatchDiscoverBody_region $region = null;
    
    /**
     * @var string|null $scheduledAfter The scheduledAfter property
    */
    private ?string $scheduledAfter = null;
    
    /**
     * @var string|null $scheduledBefore The scheduledBefore property
    */
    private ?string $scheduledBefore = null;
    
    /**
     * Instantiates a new MatchDiscoverBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setLimit(50);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchDiscoverBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchDiscoverBody {
        return new MatchDiscoverBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the cursor property value. The cursor property
     * @return MatchDiscoverBody_cursor|null
    */
    public function getCursor(): ?MatchDiscoverBody_cursor {
        return $this->cursor;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'cursor' => fn(ParseNode $n) => $o->setCursor($n->getObjectValue([MatchDiscoverBody_cursor::class, 'createFromDiscriminatorValue'])),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'gameSlug' => fn(ParseNode $n) => $o->setGameSlug($n->getStringValue()),
            'leagueId' => fn(ParseNode $n) => $o->setLeagueId($n->getStringValue()),
            'leagueSeasonId' => fn(ParseNode $n) => $o->setLeagueSeasonId($n->getStringValue()),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
            'matchType' => fn(ParseNode $n) => $o->setMatchType($n->getEnumValue(MatchDiscoverBody_matchType::class)),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getEnumValue(MatchDiscoverBody_platform::class)),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getEnumValue(MatchDiscoverBody_region::class)),
            'scheduledAfter' => fn(ParseNode $n) => $o->setScheduledAfter($n->getStringValue()),
            'scheduledBefore' => fn(ParseNode $n) => $o->setScheduledBefore($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameId property value. The gameId property
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return string|null
    */
    public function getGameSlug(): ?string {
        return $this->gameSlug;
    }

    /**
     * Gets the leagueId property value. The leagueId property
     * @return string|null
    */
    public function getLeagueId(): ?string {
        return $this->leagueId;
    }

    /**
     * Gets the leagueSeasonId property value. The leagueSeasonId property
     * @return string|null
    */
    public function getLeagueSeasonId(): ?string {
        return $this->leagueSeasonId;
    }

    /**
     * Gets the limit property value. The limit property
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the matchType property value. The matchType property
     * @return MatchDiscoverBody_matchType|null
    */
    public function getMatchType(): ?MatchDiscoverBody_matchType {
        return $this->matchType;
    }

    /**
     * Gets the platform property value. The platform property
     * @return MatchDiscoverBody_platform|null
    */
    public function getPlatform(): ?MatchDiscoverBody_platform {
        return $this->platform;
    }

    /**
     * Gets the region property value. The region property
     * @return MatchDiscoverBody_region|null
    */
    public function getRegion(): ?MatchDiscoverBody_region {
        return $this->region;
    }

    /**
     * Gets the scheduledAfter property value. The scheduledAfter property
     * @return string|null
    */
    public function getScheduledAfter(): ?string {
        return $this->scheduledAfter;
    }

    /**
     * Gets the scheduledBefore property value. The scheduledBefore property
     * @return string|null
    */
    public function getScheduledBefore(): ?string {
        return $this->scheduledBefore;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('cursor', $this->getCursor());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('gameSlug', $this->getGameSlug());
        $writer->writeStringValue('leagueId', $this->getLeagueId());
        $writer->writeStringValue('leagueSeasonId', $this->getLeagueSeasonId());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeEnumValue('matchType', $this->getMatchType());
        $writer->writeEnumValue('platform', $this->getPlatform());
        $writer->writeEnumValue('region', $this->getRegion());
        $writer->writeStringValue('scheduledAfter', $this->getScheduledAfter());
        $writer->writeStringValue('scheduledBefore', $this->getScheduledBefore());
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
     * Sets the cursor property value. The cursor property
     * @param MatchDiscoverBody_cursor|null $value Value to set for the cursor property.
    */
    public function setCursor(?MatchDiscoverBody_cursor $value): void {
        $this->cursor = $value;
    }

    /**
     * Sets the gameId property value. The gameId property
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param string|null $value Value to set for the gameSlug property.
    */
    public function setGameSlug(?string $value): void {
        $this->gameSlug = $value;
    }

    /**
     * Sets the leagueId property value. The leagueId property
     * @param string|null $value Value to set for the leagueId property.
    */
    public function setLeagueId(?string $value): void {
        $this->leagueId = $value;
    }

    /**
     * Sets the leagueSeasonId property value. The leagueSeasonId property
     * @param string|null $value Value to set for the leagueSeasonId property.
    */
    public function setLeagueSeasonId(?string $value): void {
        $this->leagueSeasonId = $value;
    }

    /**
     * Sets the limit property value. The limit property
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the matchType property value. The matchType property
     * @param MatchDiscoverBody_matchType|null $value Value to set for the matchType property.
    */
    public function setMatchType(?MatchDiscoverBody_matchType $value): void {
        $this->matchType = $value;
    }

    /**
     * Sets the platform property value. The platform property
     * @param MatchDiscoverBody_platform|null $value Value to set for the platform property.
    */
    public function setPlatform(?MatchDiscoverBody_platform $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the region property value. The region property
     * @param MatchDiscoverBody_region|null $value Value to set for the region property.
    */
    public function setRegion(?MatchDiscoverBody_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the scheduledAfter property value. The scheduledAfter property
     * @param string|null $value Value to set for the scheduledAfter property.
    */
    public function setScheduledAfter(?string $value): void {
        $this->scheduledAfter = $value;
    }

    /**
     * Sets the scheduledBefore property value. The scheduledBefore property
     * @param string|null $value Value to set for the scheduledBefore property.
    */
    public function setScheduledBefore(?string $value): void {
        $this->scheduledBefore = $value;
    }

}
