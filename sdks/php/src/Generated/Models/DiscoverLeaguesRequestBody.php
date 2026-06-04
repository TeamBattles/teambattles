<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Filters and offset pagination for discovering leagues.
*/
class DiscoverLeaguesRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameId Filter to leagues that include this game id.
    */
    private ?string $gameId = null;
    
    /**
     * @var int|null $limit Page size (1-50). Defaults to 12.
    */
    private ?int $limit = null;
    
    /**
     * @var int|null $page 1-based page number. Defaults to 1.
    */
    private ?int $page = null;
    
    /**
     * @var string|null $search Free-text search across league names.
    */
    private ?string $search = null;
    
    /**
     * Instantiates a new DiscoverLeaguesRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setLimit(12);
        $this->setPage(1);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return DiscoverLeaguesRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): DiscoverLeaguesRequestBody {
        return new DiscoverLeaguesRequestBody();
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
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
            'page' => fn(ParseNode $n) => $o->setPage($n->getIntegerValue()),
            'search' => fn(ParseNode $n) => $o->setSearch($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameId property value. Filter to leagues that include this game id.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the limit property value. Page size (1-50). Defaults to 12.
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the page property value. 1-based page number. Defaults to 1.
     * @return int|null
    */
    public function getPage(): ?int {
        return $this->page;
    }

    /**
     * Gets the search property value. Free-text search across league names.
     * @return string|null
    */
    public function getSearch(): ?string {
        return $this->search;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeIntegerValue('page', $this->getPage());
        $writer->writeStringValue('search', $this->getSearch());
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
     * Sets the gameId property value. Filter to leagues that include this game id.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the limit property value. Page size (1-50). Defaults to 12.
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the page property value. 1-based page number. Defaults to 1.
     * @param int|null $value Value to set for the page property.
    */
    public function setPage(?int $value): void {
        $this->page = $value;
    }

    /**
     * Sets the search property value. Free-text search across league names.
     * @param string|null $value Value to set for the search property.
    */
    public function setSearch(?string $value): void {
        $this->search = $value;
    }

}
