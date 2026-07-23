<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Update;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentUpdateRequestBody;
use TeamBattles\Sdk\Generated\Models\TournamentUpdateResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/update
*/
class UpdateRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new UpdateRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/update');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Applies a partial edit to a tournament, resolved by slug. The result is TRI-STATE and you must branch on `applied`: before the tournament has ever been approved the edit applies directly (`direct`); afterwards a material change is staged into a pending set and the tournament flips to AWAITING_APPROVAL (`pending`), and an edit that changes nothing is a `noop`. A COMPLETED or CANCELLED tournament rejects every edit with 400. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentUpdateRequestBody $body Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
     * @param UpdateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentUpdateResponse|null>
     * @throws Exception
    */
    public function post(TournamentUpdateRequestBody $body, ?UpdateRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentUpdateResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Applies a partial edit to a tournament, resolved by slug. The result is TRI-STATE and you must branch on `applied`: before the tournament has ever been approved the edit applies directly (`direct`); afterwards a material change is staged into a pending set and the tournament flips to AWAITING_APPROVAL (`pending`), and an edit that changes nothing is a `noop`. A COMPLETED or CANCELLED tournament rejects every edit with 400. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentUpdateRequestBody $body Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
     * @param UpdateRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentUpdateRequestBody $body, ?UpdateRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return UpdateRequestBuilder
    */
    public function withUrl(string $rawUrl): UpdateRequestBuilder {
        return new UpdateRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
