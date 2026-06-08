<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Updates league ticket status, priority, or assignment.
*/
class UpdateLeagueTicketRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var UpdateLeagueTicketRequestBody_assignedTo|null $assignedTo User ID to assign, or null to clear assignment.
    */
    private ?UpdateLeagueTicketRequestBody_assignedTo $assignedTo = null;
    
    /**
     * @var UpdateLeagueTicketRequestBody_priority|null $priority The priority property
    */
    private ?UpdateLeagueTicketRequestBody_priority $priority = null;
    
    /**
     * @var UpdateLeagueTicketRequestBody_status|null $status The status property
    */
    private ?UpdateLeagueTicketRequestBody_status $status = null;
    
    /**
     * Instantiates a new UpdateLeagueTicketRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateLeagueTicketRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateLeagueTicketRequestBody {
        return new UpdateLeagueTicketRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the assignedTo property value. User ID to assign, or null to clear assignment.
     * @return UpdateLeagueTicketRequestBody_assignedTo|null
    */
    public function getAssignedTo(): ?UpdateLeagueTicketRequestBody_assignedTo {
        return $this->assignedTo;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'assignedTo' => fn(ParseNode $n) => $o->setAssignedTo($n->getObjectValue([UpdateLeagueTicketRequestBody_assignedTo::class, 'createFromDiscriminatorValue'])),
            'priority' => fn(ParseNode $n) => $o->setPriority($n->getEnumValue(UpdateLeagueTicketRequestBody_priority::class)),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(UpdateLeagueTicketRequestBody_status::class)),
        ];
    }

    /**
     * Gets the priority property value. The priority property
     * @return UpdateLeagueTicketRequestBody_priority|null
    */
    public function getPriority(): ?UpdateLeagueTicketRequestBody_priority {
        return $this->priority;
    }

    /**
     * Gets the status property value. The status property
     * @return UpdateLeagueTicketRequestBody_status|null
    */
    public function getStatus(): ?UpdateLeagueTicketRequestBody_status {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('assignedTo', $this->getAssignedTo());
        $writer->writeEnumValue('priority', $this->getPriority());
        $writer->writeEnumValue('status', $this->getStatus());
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
     * Sets the assignedTo property value. User ID to assign, or null to clear assignment.
     * @param UpdateLeagueTicketRequestBody_assignedTo|null $value Value to set for the assignedTo property.
    */
    public function setAssignedTo(?UpdateLeagueTicketRequestBody_assignedTo $value): void {
        $this->assignedTo = $value;
    }

    /**
     * Sets the priority property value. The priority property
     * @param UpdateLeagueTicketRequestBody_priority|null $value Value to set for the priority property.
    */
    public function setPriority(?UpdateLeagueTicketRequestBody_priority $value): void {
        $this->priority = $value;
    }

    /**
     * Sets the status property value. The status property
     * @param UpdateLeagueTicketRequestBody_status|null $value Value to set for the status property.
    */
    public function setStatus(?UpdateLeagueTicketRequestBody_status $value): void {
        $this->status = $value;
    }

}
