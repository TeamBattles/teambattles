<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Cancel;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentCancelRequestBody;
use TeamBattles\Sdk\Generated\Models\TournamentCancelResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/cancel
*/
class CancelRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new CancelRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/cancel');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Cancels a tournament. IRREVERSIBLE - there is no un-cancel, and a COMPLETED or already CANCELLED tournament answers 400. Cancelling delists the tournament, emits a `tournament.cancelled` webhook, system-cancels every non-terminal generated match with no forfeit penalty, and notifies the captains of every approved participant. It does NOT change the approval status, so the response reports lifecycle status and approval status as independent fields. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentCancelRequestBody $body Tournament cancellation payload.
     * @param CancelRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentCancelResponse|null>
     * @throws Exception
    */
    public function post(TournamentCancelRequestBody $body, ?CancelRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentCancelResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Cancels a tournament. IRREVERSIBLE - there is no un-cancel, and a COMPLETED or already CANCELLED tournament answers 400. Cancelling delists the tournament, emits a `tournament.cancelled` webhook, system-cancels every non-terminal generated match with no forfeit penalty, and notifies the captains of every approved participant. It does NOT change the approval status, so the response reports lifecycle status and approval status as independent fields. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param TournamentCancelRequestBody $body Tournament cancellation payload.
     * @param CancelRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentCancelRequestBody $body, ?CancelRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return CancelRequestBuilder
    */
    public function withUrl(string $rawUrl): CancelRequestBuilder {
        return new CancelRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
