<?php

namespace TeamBattles\Sdk\Generated\Game\Matches;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class MatchesPostResponse_pagination implements Parsable 
{
    /**
     * @var MatchesPostResponse_pagination_cursor|null $cursor The cursor property
    */
    private ?MatchesPostResponse_pagination_cursor $cursor = null;
    
    /**
     * @var bool|null $hasMore The hasMore property
    */
    private ?bool $hasMore = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchesPostResponse_pagination
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchesPostResponse_pagination {
        return new MatchesPostResponse_pagination();
    }

    /**
     * Gets the cursor property value. The cursor property
     * @return MatchesPostResponse_pagination_cursor|null
    */
    public function getCursor(): ?MatchesPostResponse_pagination_cursor {
        return $this->cursor;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'cursor' => fn(ParseNode $n) => $o->setCursor($n->getObjectValue([MatchesPostResponse_pagination_cursor::class, 'createFromDiscriminatorValue'])),
            'hasMore' => fn(ParseNode $n) => $o->setHasMore($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the hasMore property value. The hasMore property
     * @return bool|null
    */
    public function getHasMore(): ?bool {
        return $this->hasMore;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('cursor', $this->getCursor());
        $writer->writeBooleanValue('hasMore', $this->getHasMore());
    }

    /**
     * Sets the cursor property value. The cursor property
     * @param MatchesPostResponse_pagination_cursor|null $value Value to set for the cursor property.
    */
    public function setCursor(?MatchesPostResponse_pagination_cursor $value): void {
        $this->cursor = $value;
    }

    /**
     * Sets the hasMore property value. The hasMore property
     * @param bool|null $value Value to set for the hasMore property.
    */
    public function setHasMore(?bool $value): void {
        $this->hasMore = $value;
    }

}
