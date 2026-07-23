<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\SubmitForApproval;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentSubmitForApprovalResponse;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/submit-for-approval
*/
class SubmitForApprovalRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new SubmitForApprovalRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/submit-for-approval');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param SubmitForApprovalRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentSubmitForApprovalResponse|null>
     * @throws Exception
    */
    public function post(?SubmitForApprovalRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentSubmitForApprovalResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param SubmitForApprovalRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(?SubmitForApprovalRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return SubmitForApprovalRequestBuilder
    */
    public function withUrl(string $rawUrl): SubmitForApprovalRequestBuilder {
        return new SubmitForApprovalRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
