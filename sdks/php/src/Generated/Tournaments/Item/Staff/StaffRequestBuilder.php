<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\Staff;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TournamentAddStaffBody;
use TeamBattles\Sdk\Generated\Models\TournamentStaffResponse;
use TeamBattles\Sdk\Generated\Models\TournamentWriteAck;
use TeamBattles\Sdk\Generated\Tournaments\Item\Staff\Item\WithUserItemRequestBuilder;

/**
 * Builds and executes requests for operations under /tournaments/{identifier}/staff
*/
class StaffRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.tournaments.item.staff.item collection
     * @param string $userId User ID of the staff member to remove.
     * @return WithUserItemRequestBuilder
    */
    public function byUserId(string $userId): WithUserItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['userId'] = $userId;
        return new WithUserItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new StaffRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/tournaments/{identifier}/staff');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns the tournament's delegated staff, resolved by slug. The host is not included - host authority comes from the host record rather than a staff row, so an empty list means no delegated staff, not no organizers. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); adding and removing staff requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param StaffRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentStaffResponse|null>
     * @throws Exception
    */
    public function get(?StaffRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentStaffResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Grants a user the ADMIN or MODERATOR staff role on the tournament. Requires the tournaments staff capability and ADMIN authority - strictly higher than the MANAGER floor for reading the roster, so a tournament MODERATOR answers 403 and cannot promote themselves. Upserts by user: posting a role for someone who already holds a staff row updates that row instead of creating a second one, so this endpoint is safely retryable and also serves as the change-role operation. A MODERATOR gains the manager-floor endpoints (application review, participant removal and disqualification, free-agent pool moderation) but none of the admin-floor ones.
     * @param TournamentAddStaffBody $body Tournament staff addition payload.
     * @param StaffRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TournamentWriteAck|null>
     * @throws Exception
    */
    public function post(TournamentAddStaffBody $body, ?StaffRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TournamentWriteAck::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns the tournament's delegated staff, resolved by slug. The host is not included - host authority comes from the host record rather than a staff row, so an empty list means no delegated staff, not no organizers. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); adding and removing staff requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param StaffRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?StaffRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Grants a user the ADMIN or MODERATOR staff role on the tournament. Requires the tournaments staff capability and ADMIN authority - strictly higher than the MANAGER floor for reading the roster, so a tournament MODERATOR answers 403 and cannot promote themselves. Upserts by user: posting a role for someone who already holds a staff row updates that row instead of creating a second one, so this endpoint is safely retryable and also serves as the change-role operation. A MODERATOR gains the manager-floor endpoints (application review, participant removal and disqualification, free-agent pool moderation) but none of the admin-floor ones.
     * @param TournamentAddStaffBody $body Tournament staff addition payload.
     * @param StaffRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TournamentAddStaffBody $body, ?StaffRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return StaffRequestBuilder
    */
    public function withUrl(string $rawUrl): StaffRequestBuilder {
        return new StaffRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
