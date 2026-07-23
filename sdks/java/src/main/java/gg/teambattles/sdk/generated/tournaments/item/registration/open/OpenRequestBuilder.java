package gg.teambattles.sdk.generated.tournaments.item.registration.open;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentOpenRegistrationResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/registration/open
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OpenRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link OpenRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OpenRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration/open", pathParameters);
    }
    /**
     * Instantiates a new {@link OpenRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OpenRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration/open", rawUrl);
    }
    /**
     * Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @return a {@link TournamentOpenRegistrationResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentOpenRegistrationResponse post() {
        return post(null);
    }
    /**
     * Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentOpenRegistrationResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentOpenRegistrationResponse post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentOpenRegistrationResponse::createFromDiscriminatorValue);
    }
    /**
     * Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
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
     * @return a {@link OpenRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OpenRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new OpenRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
