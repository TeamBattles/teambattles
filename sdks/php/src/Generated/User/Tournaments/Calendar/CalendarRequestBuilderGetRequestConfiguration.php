<?php

namespace TeamBattles\Sdk\Generated\User\Tournaments\Calendar;

use Microsoft\Kiota\Abstractions\BaseRequestConfiguration;
use Microsoft\Kiota\Abstractions\RequestOption;

/**
 * Configuration for the request such as headers, query parameters, and middleware options.
*/
class CalendarRequestBuilderGetRequestConfiguration extends BaseRequestConfiguration 
{
    /**
     * @var CalendarRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public ?CalendarRequestBuilderGetQueryParameters $queryParameters = null;
    
    /**
     * Instantiates a new CalendarRequestBuilderGetRequestConfiguration and sets the default values.
     * @param array<string, array<string>|string>|null $headers Request headers
     * @param array<RequestOption>|null $options Request options
     * @param CalendarRequestBuilderGetQueryParameters|null $queryParameters Request query parameters
    */
    public function __construct(?array $headers = null, ?array $options = null, ?CalendarRequestBuilderGetQueryParameters $queryParameters = null) {
        parent::__construct($headers ?? [], $options ?? []);
        $this->queryParameters = $queryParameters;
    }

    /**
     * Instantiates a new CalendarRequestBuilderGetQueryParameters.
     * @param string|null $rangeEnd Window end, ISO 8601. Defaults to 30 days after `rangeStart`.
     * @param string|null $rangeStart Window start, ISO 8601. Defaults to the time of the request.
     * @return CalendarRequestBuilderGetQueryParameters
    */
    public static function createQueryParameters(?string $rangeEnd = null, ?string $rangeStart = null): CalendarRequestBuilderGetQueryParameters {
        return new CalendarRequestBuilderGetQueryParameters($rangeEnd, $rangeStart);
    }

}
