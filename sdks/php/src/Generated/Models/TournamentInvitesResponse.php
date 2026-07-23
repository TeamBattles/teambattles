<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Tournament team invites.
*/
class TournamentInvitesResponse implements Parsable 
{
    /**
     * @var int|null $count Number of invites returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<TournamentInvite>|null $invites Every invite row on the tournament in creation order, in all four states. Filter on `status` for the outstanding ones.
    */
    private ?array $invites = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentInvitesResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentInvitesResponse {
        return new TournamentInvitesResponse();
    }

    /**
     * Gets the count property value. Number of invites returned.
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
            'invites' => fn(ParseNode $n) => $o->setInvites($n->getCollectionOfObjectValues([TournamentInvite::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the invites property value. Every invite row on the tournament in creation order, in all four states. Filter on `status` for the outstanding ones.
     * @return array<TournamentInvite>|null
    */
    public function getInvites(): ?array {
        return $this->invites;
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeCollectionOfObjectValues('invites', $this->getInvites());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of invites returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the invites property value. Every invite row on the tournament in creation order, in all four states. Filter on `status` for the outstanding ones.
     * @param array<TournamentInvite>|null $value Value to set for the invites property.
    */
    public function setInvites(?array $value): void {
        $this->invites = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
