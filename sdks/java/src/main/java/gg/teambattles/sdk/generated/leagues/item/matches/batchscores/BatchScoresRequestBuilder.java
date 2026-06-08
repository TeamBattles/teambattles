package gg.teambattles.sdk.generated.leagues.item.matches.batchscores;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.GameBatchMatchScoresBody;
import gg.teambattles.sdk.generated.models.GameBatchMatchScoresResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/batch-scores
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class BatchScoresRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link BatchScoresRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BatchScoresRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/batch-scores", pathParameters);
    }
    /**
     * Instantiates a new {@link BatchScoresRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BatchScoresRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/batch-scores", rawUrl);
    }
    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key&apos;s bound league and returns a per-item result. Requires the league scores capability.
     * @param body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @return a {@link GameBatchMatchScoresResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public GameBatchMatchScoresResponse post(@jakarta.annotation.Nonnull final GameBatchMatchScoresBody body) {
        return post(body, null);
    }
    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key&apos;s bound league and returns a per-item result. Requires the league scores capability.
     * @param body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link GameBatchMatchScoresResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public GameBatchMatchScoresResponse post(@jakarta.annotation.Nonnull final GameBatchMatchScoresBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, GameBatchMatchScoresResponse::createFromDiscriminatorValue);
    }
    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key&apos;s bound league and returns a per-item result. Requires the league scores capability.
     * @param body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final GameBatchMatchScoresBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key&apos;s bound league and returns a per-item result. Requires the league scores capability.
     * @param body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final GameBatchMatchScoresBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link BatchScoresRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BatchScoresRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new BatchScoresRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
