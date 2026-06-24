<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Creates a new team as the API key owner.
*/
class CreateTeamBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $description Optional team description.
    */
    private ?string $description = null;
    
    /**
     * @var string|null $gameId Game ID the team competes in.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $name Team name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $organizationId Owning organization ID. The owner must manage it.
    */
    private ?string $organizationId = null;
    
    /**
     * @var string|null $platform Optional platform.
    */
    private ?string $platform = null;
    
    /**
     * @var string|null $playlistId Game playlist ID.
    */
    private ?string $playlistId = null;
    
    /**
     * @var string|null $region Optional region.
    */
    private ?string $region = null;
    
    /**
     * @var string|null $tag Team tag (short identifier).
    */
    private ?string $tag = null;
    
    /**
     * Instantiates a new CreateTeamBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreateTeamBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreateTeamBody {
        return new CreateTeamBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the description property value. Optional team description.
     * @return string|null
    */
    public function getDescription(): ?string {
        return $this->description;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'organizationId' => fn(ParseNode $n) => $o->setOrganizationId($n->getStringValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getStringValue()),
            'playlistId' => fn(ParseNode $n) => $o->setPlaylistId($n->getStringValue()),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getStringValue()),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game ID the team competes in.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the name property value. Team name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the organizationId property value. Owning organization ID. The owner must manage it.
     * @return string|null
    */
    public function getOrganizationId(): ?string {
        return $this->organizationId;
    }

    /**
     * Gets the platform property value. Optional platform.
     * @return string|null
    */
    public function getPlatform(): ?string {
        return $this->platform;
    }

    /**
     * Gets the playlistId property value. Game playlist ID.
     * @return string|null
    */
    public function getPlaylistId(): ?string {
        return $this->playlistId;
    }

    /**
     * Gets the region property value. Optional region.
     * @return string|null
    */
    public function getRegion(): ?string {
        return $this->region;
    }

    /**
     * Gets the tag property value. Team tag (short identifier).
     * @return string|null
    */
    public function getTag(): ?string {
        return $this->tag;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('organizationId', $this->getOrganizationId());
        $writer->writeStringValue('platform', $this->getPlatform());
        $writer->writeStringValue('playlistId', $this->getPlaylistId());
        $writer->writeStringValue('region', $this->getRegion());
        $writer->writeStringValue('tag', $this->getTag());
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
     * Sets the description property value. Optional team description.
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the gameId property value. Game ID the team competes in.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the name property value. Team name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the organizationId property value. Owning organization ID. The owner must manage it.
     * @param string|null $value Value to set for the organizationId property.
    */
    public function setOrganizationId(?string $value): void {
        $this->organizationId = $value;
    }

    /**
     * Sets the platform property value. Optional platform.
     * @param string|null $value Value to set for the platform property.
    */
    public function setPlatform(?string $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the playlistId property value. Game playlist ID.
     * @param string|null $value Value to set for the playlistId property.
    */
    public function setPlaylistId(?string $value): void {
        $this->playlistId = $value;
    }

    /**
     * Sets the region property value. Optional region.
     * @param string|null $value Value to set for the region property.
    */
    public function setRegion(?string $value): void {
        $this->region = $value;
    }

    /**
     * Sets the tag property value. Team tag (short identifier).
     * @param string|null $value Value to set for the tag property.
    */
    public function setTag(?string $value): void {
        $this->tag = $value;
    }

}
