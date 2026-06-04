<?php

namespace TeamBattles\Sdk\Generated\Leagues;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class LeaguesPostResponse_pagination implements Parsable 
{
    /**
     * @var int|null $limit The limit property
    */
    private ?int $limit = null;
    
    /**
     * @var int|null $page The page property
    */
    private ?int $page = null;
    
    /**
     * @var int|null $total The total property
    */
    private ?int $total = null;
    
    /**
     * @var int|null $totalPages The totalPages property
    */
    private ?int $totalPages = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeaguesPostResponse_pagination
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeaguesPostResponse_pagination {
        return new LeaguesPostResponse_pagination();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
            'page' => fn(ParseNode $n) => $o->setPage($n->getIntegerValue()),
            'total' => fn(ParseNode $n) => $o->setTotal($n->getIntegerValue()),
            'totalPages' => fn(ParseNode $n) => $o->setTotalPages($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the limit property value. The limit property
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the page property value. The page property
     * @return int|null
    */
    public function getPage(): ?int {
        return $this->page;
    }

    /**
     * Gets the total property value. The total property
     * @return int|null
    */
    public function getTotal(): ?int {
        return $this->total;
    }

    /**
     * Gets the totalPages property value. The totalPages property
     * @return int|null
    */
    public function getTotalPages(): ?int {
        return $this->totalPages;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeIntegerValue('page', $this->getPage());
        $writer->writeIntegerValue('total', $this->getTotal());
        $writer->writeIntegerValue('totalPages', $this->getTotalPages());
    }

    /**
     * Sets the limit property value. The limit property
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the page property value. The page property
     * @param int|null $value Value to set for the page property.
    */
    public function setPage(?int $value): void {
        $this->page = $value;
    }

    /**
     * Sets the total property value. The total property
     * @param int|null $value Value to set for the total property.
    */
    public function setTotal(?int $value): void {
        $this->total = $value;
    }

    /**
     * Sets the totalPages property value. The totalPages property
     * @param int|null $value Value to set for the totalPages property.
    */
    public function setTotalPages(?int $value): void {
        $this->totalPages = $value;
    }

}
