<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
*/
class ListGameMatchesBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $cursor Opaque continuation cursor from a prior page's pagination.cursor.
    */
    private ?string $cursor = null;
    
    /**
     * @var float|null $limit Page size (1-100, enforced by the handler). Defaults to the handler's internal default.
    */
    private ?float $limit = null;
    
    /**
     * @var string|null $status Optional MatchStatus filter (e.g. IN_PROGRESS).
    */
    private ?string $status = null;
    
    /**
     * Instantiates a new ListGameMatchesBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ListGameMatchesBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ListGameMatchesBody {
        return new ListGameMatchesBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the cursor property value. Opaque continuation cursor from a prior page's pagination.cursor.
     * @return string|null
    */
    public function getCursor(): ?string {
        return $this->cursor;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'cursor' => fn(ParseNode $n) => $o->setCursor($n->getStringValue()),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getFloatValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
        ];
    }

    /**
     * Gets the limit property value. Page size (1-100, enforced by the handler). Defaults to the handler's internal default.
     * @return float|null
    */
    public function getLimit(): ?float {
        return $this->limit;
    }

    /**
     * Gets the status property value. Optional MatchStatus filter (e.g. IN_PROGRESS).
     * @return string|null
    */
    public function getStatus(): ?string {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('cursor', $this->getCursor());
        $writer->writeFloatValue('limit', $this->getLimit());
        $writer->writeStringValue('status', $this->getStatus());
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
     * Sets the cursor property value. Opaque continuation cursor from a prior page's pagination.cursor.
     * @param string|null $value Value to set for the cursor property.
    */
    public function setCursor(?string $value): void {
        $this->cursor = $value;
    }

    /**
     * Sets the limit property value. Page size (1-100, enforced by the handler). Defaults to the handler's internal default.
     * @param float|null $value Value to set for the limit property.
    */
    public function setLimit(?float $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the status property value. Optional MatchStatus filter (e.g. IN_PROGRESS).
     * @param string|null $value Value to set for the status property.
    */
    public function setStatus(?string $value): void {
        $this->status = $value;
    }

}
