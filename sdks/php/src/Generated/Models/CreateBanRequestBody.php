<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Creates a league team ban.
*/
class CreateBanRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $expiresAt Expiration timestamp for temporary bans, in epoch milliseconds.
    */
    private ?float $expiresAt = null;
    
    /**
     * @var bool|null $isPermanent Whether the ban never expires.
    */
    private ?bool $isPermanent = null;
    
    /**
     * @var string|null $reason Reason for the ban.
    */
    private ?string $reason = null;
    
    /**
     * @var string|null $teamId Team ID to ban from the league.
    */
    private ?string $teamId = null;
    
    /**
     * Instantiates a new CreateBanRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreateBanRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreateBanRequestBody {
        return new CreateBanRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the expiresAt property value. Expiration timestamp for temporary bans, in epoch milliseconds.
     * @return float|null
    */
    public function getExpiresAt(): ?float {
        return $this->expiresAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'expiresAt' => fn(ParseNode $n) => $o->setExpiresAt($n->getFloatValue()),
            'isPermanent' => fn(ParseNode $n) => $o->setIsPermanent($n->getBooleanValue()),
            'reason' => fn(ParseNode $n) => $o->setReason($n->getStringValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
        ];
    }

    /**
     * Gets the isPermanent property value. Whether the ban never expires.
     * @return bool|null
    */
    public function getIsPermanent(): ?bool {
        return $this->isPermanent;
    }

    /**
     * Gets the reason property value. Reason for the ban.
     * @return string|null
    */
    public function getReason(): ?string {
        return $this->reason;
    }

    /**
     * Gets the teamId property value. Team ID to ban from the league.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('expiresAt', $this->getExpiresAt());
        $writer->writeBooleanValue('isPermanent', $this->getIsPermanent());
        $writer->writeStringValue('reason', $this->getReason());
        $writer->writeStringValue('teamId', $this->getTeamId());
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
     * Sets the expiresAt property value. Expiration timestamp for temporary bans, in epoch milliseconds.
     * @param float|null $value Value to set for the expiresAt property.
    */
    public function setExpiresAt(?float $value): void {
        $this->expiresAt = $value;
    }

    /**
     * Sets the isPermanent property value. Whether the ban never expires.
     * @param bool|null $value Value to set for the isPermanent property.
    */
    public function setIsPermanent(?bool $value): void {
        $this->isPermanent = $value;
    }

    /**
     * Sets the reason property value. Reason for the ban.
     * @param string|null $value Value to set for the reason property.
    */
    public function setReason(?string $value): void {
        $this->reason = $value;
    }

    /**
     * Sets the teamId property value. Team ID to ban from the league.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

}
