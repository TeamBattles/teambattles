package gg.teambattles.sdk.generated.tournaments.item.submitforapproval;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentSubmitForApprovalResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/submit-for-approval
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class SubmitForApprovalRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link SubmitForApprovalRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public SubmitForApprovalRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/submit-for-approval", pathParameters);
    }
    /**
     * Instantiates a new {@link SubmitForApprovalRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public SubmitForApprovalRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/submit-for-approval", rawUrl);
    }
    /**
     * Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @return a {@link TournamentSubmitForApprovalResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentSubmitForApprovalResponse post() {
        return post(null);
    }
    /**
     * Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentSubmitForApprovalResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentSubmitForApprovalResponse post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("409", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentSubmitForApprovalResponse::createFromDiscriminatorValue);
    }
    /**
     * Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link SubmitForApprovalRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SubmitForApprovalRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new SubmitForApprovalRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
