<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Approves a pending match acceptance as the API key owner.
*/
class ApproveAcceptanceRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<string>|null $availableMaps Optional list of available map IDs for the match.
    */
    private ?array $availableMaps = null;
    
    /**
     * @var string|null $responseMessage Optional message sent to the accepting team.
    */
    private ?string $responseMessage = null;
    
    /**
     * Instantiates a new ApproveAcceptanceRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApproveAcceptanceRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApproveAcceptanceRequestBody {
        return new ApproveAcceptanceRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the availableMaps property value. Optional list of available map IDs for the match.
     * @return array<string>|null
    */
    public function getAvailableMaps(): ?array {
        return $this->availableMaps;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'availableMaps' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setAvailableMaps($val);
            },
            'responseMessage' => fn(ParseNode $n) => $o->setResponseMessage($n->getStringValue()),
        ];
    }

    /**
     * Gets the responseMessage property value. Optional message sent to the accepting team.
     * @return string|null
    */
    public function getResponseMessage(): ?string {
        return $this->responseMessage;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('availableMaps', $this->getAvailableMaps());
        $writer->writeStringValue('responseMessage', $this->getResponseMessage());
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
     * Sets the availableMaps property value. Optional list of available map IDs for the match.
     * @param array<string>|null $value Value to set for the availableMaps property.
    */
    public function setAvailableMaps(?array $value): void {
        $this->availableMaps = $value;
    }

    /**
     * Sets the responseMessage property value. Optional message sent to the accepting team.
     * @param string|null $value Value to set for the responseMessage property.
    */
    public function setResponseMessage(?string $value): void {
        $this->responseMessage = $value;
    }

}
