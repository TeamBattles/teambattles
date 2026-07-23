<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Filters for public tournament discovery.
*/
class TournamentDiscoverBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var TournamentFormat|null $format Filter by bracket format.
    */
    private ?TournamentFormat $format = null;
    
    /**
     * @var string|null $gameId Filter to a single game by Convex ID.
    */
    private ?string $gameId = null;
    
    /**
     * @var int|null $limit Page size, 1-50.
    */
    private ?int $limit = null;
    
    /**
     * @var int|null $page 1-based page number.
    */
    private ?int $page = null;
    
    /**
     * @var string|null $search Case-insensitive name substring. Ignored below 2 characters.
    */
    private ?string $search = null;
    
    /**
     * @var TournamentStatus|null $status Filter by lifecycle status.
    */
    private ?TournamentStatus $status = null;
    
    /**
     * Instantiates a new TournamentDiscoverBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setLimit(12);
        $this->setPage(1);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentDiscoverBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentDiscoverBody {
        return new TournamentDiscoverBody();
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
            'format' => fn(ParseNode $n) => $o->setFormat($n->getEnumValue(TournamentFormat::class)),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
            'page' => fn(ParseNode $n) => $o->setPage($n->getIntegerValue()),
            'search' => fn(ParseNode $n) => $o->setSearch($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentStatus::class)),
        ];
    }

    /**
     * Gets the format property value. Filter by bracket format.
     * @return TournamentFormat|null
    */
    public function getFormat(): ?TournamentFormat {
        return $this->format;
    }

    /**
     * Gets the gameId property value. Filter to a single game by Convex ID.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the limit property value. Page size, 1-50.
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the page property value. 1-based page number.
     * @return int|null
    */
    public function getPage(): ?int {
        return $this->page;
    }

    /**
     * Gets the search property value. Case-insensitive name substring. Ignored below 2 characters.
     * @return string|null
    */
    public function getSearch(): ?string {
        return $this->search;
    }

    /**
     * Gets the status property value. Filter by lifecycle status.
     * @return TournamentStatus|null
    */
    public function getStatus(): ?TournamentStatus {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('format', $this->getFormat());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeIntegerValue('page', $this->getPage());
        $writer->writeStringValue('search', $this->getSearch());
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
     * Sets the format property value. Filter by bracket format.
     * @param TournamentFormat|null $value Value to set for the format property.
    */
    public function setFormat(?TournamentFormat $value): void {
        $this->format = $value;
    }

    /**
     * Sets the gameId property value. Filter to a single game by Convex ID.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the limit property value. Page size, 1-50.
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the page property value. 1-based page number.
     * @param int|null $value Value to set for the page property.
    */
    public function setPage(?int $value): void {
        $this->page = $value;
    }

    /**
     * Sets the search property value. Case-insensitive name substring. Ignored below 2 characters.
     * @param string|null $value Value to set for the search property.
    */
    public function setSearch(?string $value): void {
        $this->search = $value;
    }

    /**
     * Sets the status property value. Filter by lifecycle status.
     * @param TournamentStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentStatus $value): void {
        $this->status = $value;
    }

}
