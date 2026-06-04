<?php

namespace TeamBattles\Sdk\Generated\Teams\Item\Matches;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\UserMatch;

class MatchesPostResponse implements Parsable 
{
    /**
     * @var string|null $continueCursor The continueCursor property
    */
    private ?string $continueCursor = null;
    
    /**
     * @var bool|null $isDone The isDone property
    */
    private ?bool $isDone = null;
    
    /**
     * @var array<UserMatch>|null $page The page property
    */
    private ?array $page = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchesPostResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchesPostResponse {
        return new MatchesPostResponse();
    }

    /**
     * Gets the continueCursor property value. The continueCursor property
     * @return string|null
    */
    public function getContinueCursor(): ?string {
        return $this->continueCursor;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'continueCursor' => fn(ParseNode $n) => $o->setContinueCursor($n->getStringValue()),
            'isDone' => fn(ParseNode $n) => $o->setIsDone($n->getBooleanValue()),
            'page' => fn(ParseNode $n) => $o->setPage($n->getCollectionOfObjectValues([UserMatch::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the isDone property value. The isDone property
     * @return bool|null
    */
    public function getIsDone(): ?bool {
        return $this->isDone;
    }

    /**
     * Gets the page property value. The page property
     * @return array<UserMatch>|null
    */
    public function getPage(): ?array {
        return $this->page;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('continueCursor', $this->getContinueCursor());
        $writer->writeBooleanValue('isDone', $this->getIsDone());
        $writer->writeCollectionOfObjectValues('page', $this->getPage());
    }

    /**
     * Sets the continueCursor property value. The continueCursor property
     * @param string|null $value Value to set for the continueCursor property.
    */
    public function setContinueCursor(?string $value): void {
        $this->continueCursor = $value;
    }

    /**
     * Sets the isDone property value. The isDone property
     * @param bool|null $value Value to set for the isDone property.
    */
    public function setIsDone(?bool $value): void {
        $this->isDone = $value;
    }

    /**
     * Sets the page property value. The page property
     * @param array<UserMatch>|null $value Value to set for the page property.
    */
    public function setPage(?array $value): void {
        $this->page = $value;
    }

}
