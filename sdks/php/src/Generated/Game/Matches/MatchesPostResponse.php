<?php

namespace TeamBattles\Sdk\Generated\Game\Matches;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\GameMatch;

class MatchesPostResponse implements Parsable 
{
    /**
     * @var int|null $count The count property
    */
    private ?int $count = null;
    
    /**
     * @var array<GameMatch>|null $matches The matches property
    */
    private ?array $matches = null;
    
    /**
     * @var MatchesPostResponse_pagination|null $pagination The pagination property
    */
    private ?MatchesPostResponse_pagination $pagination = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchesPostResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchesPostResponse {
        return new MatchesPostResponse();
    }

    /**
     * Gets the count property value. The count property
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'matches' => fn(ParseNode $n) => $o->setMatches($n->getCollectionOfObjectValues([GameMatch::class, 'createFromDiscriminatorValue'])),
            'pagination' => fn(ParseNode $n) => $o->setPagination($n->getObjectValue([MatchesPostResponse_pagination::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the matches property value. The matches property
     * @return array<GameMatch>|null
    */
    public function getMatches(): ?array {
        return $this->matches;
    }

    /**
     * Gets the pagination property value. The pagination property
     * @return MatchesPostResponse_pagination|null
    */
    public function getPagination(): ?MatchesPostResponse_pagination {
        return $this->pagination;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('matches', $this->getMatches());
        $writer->writeObjectValue('pagination', $this->getPagination());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. The count property
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the matches property value. The matches property
     * @param array<GameMatch>|null $value Value to set for the matches property.
    */
    public function setMatches(?array $value): void {
        $this->matches = $value;
    }

    /**
     * Sets the pagination property value. The pagination property
     * @param MatchesPostResponse_pagination|null $value Value to set for the pagination property.
    */
    public function setPagination(?MatchesPostResponse_pagination $value): void {
        $this->pagination = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
