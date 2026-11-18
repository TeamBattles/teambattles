<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class StreamSignalsBody_channels implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $id Twitch user id.
    */
    private ?string $id = null;
    
    /**
     * @var StreamSignalsBody_channels_kind|null $kind favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
    */
    private ?StreamSignalsBody_channels_kind $kind = null;
    
    /**
     * Instantiates a new StreamSignalsBody_channels and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return StreamSignalsBody_channels
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): StreamSignalsBody_channels {
        return new StreamSignalsBody_channels();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'kind' => fn(ParseNode $n) => $o->setKind($n->getEnumValue(StreamSignalsBody_channels_kind::class)),
        ];
    }

    /**
     * Gets the id property value. Twitch user id.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the kind property value. favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
     * @return StreamSignalsBody_channels_kind|null
    */
    public function getKind(): ?StreamSignalsBody_channels_kind {
        return $this->kind;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeEnumValue('kind', $this->getKind());
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
     * Sets the id property value. Twitch user id.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the kind property value. favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
     * @param StreamSignalsBody_channels_kind|null $value Value to set for the kind property.
    */
    public function setKind(?StreamSignalsBody_channels_kind $value): void {
        $this->kind = $value;
    }

}
