<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

class UpsertDisplayRuleRequestBody_scope implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<string>|null $modes The modes property
    */
    private ?array $modes = null;
    
    /**
     * @var array<string>|null $playlists The playlists property
    */
    private ?array $playlists = null;
    
    /**
     * Instantiates a new UpsertDisplayRuleRequestBody_scope and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpsertDisplayRuleRequestBody_scope
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpsertDisplayRuleRequestBody_scope {
        return new UpsertDisplayRuleRequestBody_scope();
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
            'modes' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setModes($val);
            },
            'playlists' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setPlaylists($val);
            },
        ];
    }

    /**
     * Gets the modes property value. The modes property
     * @return array<string>|null
    */
    public function getModes(): ?array {
        return $this->modes;
    }

    /**
     * Gets the playlists property value. The playlists property
     * @return array<string>|null
    */
    public function getPlaylists(): ?array {
        return $this->playlists;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('modes', $this->getModes());
        $writer->writeCollectionOfPrimitiveValues('playlists', $this->getPlaylists());
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
     * Sets the modes property value. The modes property
     * @param array<string>|null $value Value to set for the modes property.
    */
    public function setModes(?array $value): void {
        $this->modes = $value;
    }

    /**
     * Sets the playlists property value. The playlists property
     * @param array<string>|null $value Value to set for the playlists property.
    */
    public function setPlaylists(?array $value): void {
        $this->playlists = $value;
    }

}
