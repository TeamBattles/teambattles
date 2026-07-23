<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\LeaguePoints;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentLeaguePointsRejected;
use TeamBattles\Sdk\Generated\Models\TournamentLeaguePointsRequestBody;
use TeamBattles\Sdk\Generated\Models\TournamentLeaguePointsResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/league-points
*/
class LeaguePointsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new LeaguePointsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/league-points');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Sets whether a league-hosted tournament awards league points on finalization, and the placement curve it awards them by. LEAGUE HOSTS ONLY - a tournament hosted by a user or an organization answers 400. Editable until the tournament finalizes; a COMPLETED or CANCELLED tournament answers 400. These two settings are NOT material fields, so this endpoint applies them directly and never routes them through re-approval, even on an approved tournament - that is exactly why they are not editable via the update endpoint. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentLeaguePointsRequestBody $body League placement-points configuration.
     * @param LeaguePointsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentLeaguePointsResponse|null>
     * @throws Exception
    */
    public function post(TournamentLeaguePointsRequestBody $body, ?LeaguePointsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [TournamentLeaguePointsRejected::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentLeaguePointsResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Sets whether a league-hosted tournament awards league points on finalization, and the placement curve it awards them by. LEAGUE HOSTS ONLY - a tournament hosted by a user or an organization answers 400. Editable until the tournament finalizes; a COMPLETED or CANCELLED tournament answers 400. These two settings are NOT material fields, so this endpoint applies them directly and never routes them through re-approval, even on an approved tournament - that is exactly why they are not editable via the update endpoint. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentLeaguePointsRequestBody $body League placement-points configuration.
     * @param LeaguePointsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentLeaguePointsRequestBody $body, ?LeaguePointsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        $requestInfo->setContentFromParsable($this->requestAdapter, "application/json", $body);
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return LeaguePointsRequestBuilder
    */
    public function withUrl(string $rawUrl): LeaguePointsRequestBuilder {
        return new LeaguePointsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
