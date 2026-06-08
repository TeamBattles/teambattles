<?php

namespace TeamBattles\Sdk\Generated\User\Connections;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiOwnConnection;

/**
 * Envelope containing connections, count, and a response timestamp.
*/
class ConnectionsGetResponse implements Parsable 
{
    /**
     * @var array<ApiOwnConnection>|null $connections The connections property
    */
    private ?array $connections = null;
    
    /**
     * @var int|null $count The count property
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ConnectionsGetResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ConnectionsGetResponse {
        return new ConnectionsGetResponse();
    }

    /**
     * Gets the connections property value. The connections property
     * @return array<ApiOwnConnection>|null
    */
    public function getConnections(): ?array {
        return $this->connections;
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
            'connections' => fn(ParseNode $n) => $o->setConnections($n->getCollectionOfObjectValues([ApiOwnConnection::class, 'createFromDiscriminatorValue'])),
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
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
        $writer->writeCollectionOfObjectValues('connections', $this->getConnections());
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the connections property value. The connections property
     * @param array<ApiOwnConnection>|null $value Value to set for the connections property.
    */
    public function setConnections(?array $value): void {
        $this->connections = $value;
    }

    /**
     * Sets the count property value. The count property
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
