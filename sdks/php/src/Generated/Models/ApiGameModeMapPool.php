<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Game-scoped map pool for a single mode.
*/
class ApiGameModeMapPool implements Parsable 
{
    /**
     * @var array<string>|null $mapIds The mapIds property
    */
    private ?array $mapIds = null;
    
    /**
     * @var string|null $modeId The modeId property
    */
    private ?string $modeId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameModeMapPool
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameModeMapPool {
        return new ApiGameModeMapPool();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'mapIds' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setMapIds($val);
            },
            'modeId' => fn(ParseNode $n) => $o->setModeId($n->getStringValue()),
        ];
    }

    /**
     * Gets the mapIds property value. The mapIds property
     * @return array<string>|null
    */
    public function getMapIds(): ?array {
        return $this->mapIds;
    }

    /**
     * Gets the modeId property value. The modeId property
     * @return string|null
    */
    public function getModeId(): ?string {
        return $this->modeId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('mapIds', $this->getMapIds());
        $writer->writeStringValue('modeId', $this->getModeId());
    }

    /**
     * Sets the mapIds property value. The mapIds property
     * @param array<string>|null $value Value to set for the mapIds property.
    */
    public function setMapIds(?array $value): void {
        $this->mapIds = $value;
    }

    /**
     * Sets the modeId property value. The modeId property
     * @param string|null $value Value to set for the modeId property.
    */
    public function setModeId(?string $value): void {
        $this->modeId = $value;
    }

}
