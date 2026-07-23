package gg.teambattles.sdk.generated.tournaments.item.nodes.item.overrideresult;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentOverrideNodeResultBody;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}/override-result
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OverrideResultRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link OverrideResultRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OverrideResultRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result", pathParameters);
    }
    /**
     * Instantiates a new {@link OverrideResultRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OverrideResultRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result", rawUrl);
    }
    /**
     * Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node&apos;s winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
     * @param body Bracket node result override payload.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentOverrideNodeResultBody body) {
        return post(body, null);
    }
    /**
     * Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node&apos;s winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
     * @param body Bracket node result override payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentOverrideNodeResultBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("409", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentWriteAck::createFromDiscriminatorValue);
    }
    /**
     * Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node&apos;s winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
     * @param body Bracket node result override payload.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentOverrideNodeResultBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node&apos;s winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
     * @param body Bracket node result override payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentOverrideNodeResultBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link OverrideResultRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OverrideResultRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new OverrideResultRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
