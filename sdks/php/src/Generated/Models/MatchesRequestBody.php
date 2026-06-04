<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Filters and cursor pagination for listing matches.
*/
class MatchesRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $createdAfter ISO 8601; only matches created at or after this time.
    */
    private ?string $createdAfter = null;
    
    /**
     * @var string|null $createdBefore ISO 8601; only matches created at or before this time.
    */
    private ?string $createdBefore = null;
    
    /**
     * @var MatchesRequestBody_cursor|null $cursor Opaque continuation cursor from a prior page's continueCursor.
    */
    private ?MatchesRequestBody_cursor $cursor = null;
    
    /**
     * @var array<string>|null $excludeStatuses Exclude matches with these MatchStatus codes; unknown values are ignored.
    */
    private ?array $excludeStatuses = null;
    
    /**
     * @var string|null $gameId Filter to a single game by id.
    */
    private ?string $gameId = null;
    
    /**
     * @var array<string>|null $includeStatuses Only include matches with these MatchStatus codes; unknown values are ignored.
    */
    private ?array $includeStatuses = null;
    
    /**
     * @var int|null $numItems Page size (1-100). Defaults to 25.
    */
    private ?int $numItems = null;
    
    /**
     * @var string|null $opponentId Filter to matches against this opponent team (team id or slug).
    */
    private ?string $opponentId = null;
    
    /**
     * @var string|null $scheduledAfter ISO 8601; only matches scheduled at or after this time.
    */
    private ?string $scheduledAfter = null;
    
    /**
     * @var string|null $scheduledBefore ISO 8601; only matches scheduled at or before this time.
    */
    private ?string $scheduledBefore = null;
    
    /**
     * Instantiates a new MatchesRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setNumItems(25);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchesRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchesRequestBody {
        return new MatchesRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the createdAfter property value. ISO 8601; only matches created at or after this time.
     * @return string|null
    */
    public function getCreatedAfter(): ?string {
        return $this->createdAfter;
    }

    /**
     * Gets the createdBefore property value. ISO 8601; only matches created at or before this time.
     * @return string|null
    */
    public function getCreatedBefore(): ?string {
        return $this->createdBefore;
    }

    /**
     * Gets the cursor property value. Opaque continuation cursor from a prior page's continueCursor.
     * @return MatchesRequestBody_cursor|null
    */
    public function getCursor(): ?MatchesRequestBody_cursor {
        return $this->cursor;
    }

    /**
     * Gets the excludeStatuses property value. Exclude matches with these MatchStatus codes; unknown values are ignored.
     * @return array<string>|null
    */
    public function getExcludeStatuses(): ?array {
        return $this->excludeStatuses;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'createdAfter' => fn(ParseNode $n) => $o->setCreatedAfter($n->getStringValue()),
            'createdBefore' => fn(ParseNode $n) => $o->setCreatedBefore($n->getStringValue()),
            'cursor' => fn(ParseNode $n) => $o->setCursor($n->getObjectValue([MatchesRequestBody_cursor::class, 'createFromDiscriminatorValue'])),
            'excludeStatuses' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setExcludeStatuses($val);
            },
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'includeStatuses' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setIncludeStatuses($val);
            },
            'numItems' => fn(ParseNode $n) => $o->setNumItems($n->getIntegerValue()),
            'opponentId' => fn(ParseNode $n) => $o->setOpponentId($n->getStringValue()),
            'scheduledAfter' => fn(ParseNode $n) => $o->setScheduledAfter($n->getStringValue()),
            'scheduledBefore' => fn(ParseNode $n) => $o->setScheduledBefore($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameId property value. Filter to a single game by id.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the includeStatuses property value. Only include matches with these MatchStatus codes; unknown values are ignored.
     * @return array<string>|null
    */
    public function getIncludeStatuses(): ?array {
        return $this->includeStatuses;
    }

    /**
     * Gets the numItems property value. Page size (1-100). Defaults to 25.
     * @return int|null
    */
    public function getNumItems(): ?int {
        return $this->numItems;
    }

    /**
     * Gets the opponentId property value. Filter to matches against this opponent team (team id or slug).
     * @return string|null
    */
    public function getOpponentId(): ?string {
        return $this->opponentId;
    }

    /**
     * Gets the scheduledAfter property value. ISO 8601; only matches scheduled at or after this time.
     * @return string|null
    */
    public function getScheduledAfter(): ?string {
        return $this->scheduledAfter;
    }

    /**
     * Gets the scheduledBefore property value. ISO 8601; only matches scheduled at or before this time.
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
        $writer->writeStringValue('createdAfter', $this->getCreatedAfter());
        $writer->writeStringValue('createdBefore', $this->getCreatedBefore());
        $writer->writeObjectValue('cursor', $this->getCursor());
        $writer->writeCollectionOfPrimitiveValues('excludeStatuses', $this->getExcludeStatuses());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeCollectionOfPrimitiveValues('includeStatuses', $this->getIncludeStatuses());
        $writer->writeIntegerValue('numItems', $this->getNumItems());
        $writer->writeStringValue('opponentId', $this->getOpponentId());
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
     * Sets the createdAfter property value. ISO 8601; only matches created at or after this time.
     * @param string|null $value Value to set for the createdAfter property.
    */
    public function setCreatedAfter(?string $value): void {
        $this->createdAfter = $value;
    }

    /**
     * Sets the createdBefore property value. ISO 8601; only matches created at or before this time.
     * @param string|null $value Value to set for the createdBefore property.
    */
    public function setCreatedBefore(?string $value): void {
        $this->createdBefore = $value;
    }

    /**
     * Sets the cursor property value. Opaque continuation cursor from a prior page's continueCursor.
     * @param MatchesRequestBody_cursor|null $value Value to set for the cursor property.
    */
    public function setCursor(?MatchesRequestBody_cursor $value): void {
        $this->cursor = $value;
    }

    /**
     * Sets the excludeStatuses property value. Exclude matches with these MatchStatus codes; unknown values are ignored.
     * @param array<string>|null $value Value to set for the excludeStatuses property.
    */
    public function setExcludeStatuses(?array $value): void {
        $this->excludeStatuses = $value;
    }

    /**
     * Sets the gameId property value. Filter to a single game by id.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the includeStatuses property value. Only include matches with these MatchStatus codes; unknown values are ignored.
     * @param array<string>|null $value Value to set for the includeStatuses property.
    */
    public function setIncludeStatuses(?array $value): void {
        $this->includeStatuses = $value;
    }

    /**
     * Sets the numItems property value. Page size (1-100). Defaults to 25.
     * @param int|null $value Value to set for the numItems property.
    */
    public function setNumItems(?int $value): void {
        $this->numItems = $value;
    }

    /**
     * Sets the opponentId property value. Filter to matches against this opponent team (team id or slug).
     * @param string|null $value Value to set for the opponentId property.
    */
    public function setOpponentId(?string $value): void {
        $this->opponentId = $value;
    }

    /**
     * Sets the scheduledAfter property value. ISO 8601; only matches scheduled at or after this time.
     * @param string|null $value Value to set for the scheduledAfter property.
    */
    public function setScheduledAfter(?string $value): void {
        $this->scheduledAfter = $value;
    }

    /**
     * Sets the scheduledBefore property value. ISO 8601; only matches scheduled at or before this time.
     * @param string|null $value Value to set for the scheduledBefore property.
    */
    public function setScheduledBefore(?string $value): void {
        $this->scheduledBefore = $value;
    }

}
