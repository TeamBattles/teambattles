package gg.teambattles.sdk.generated.matches.item.scores;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.ConfirmScoreBody;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.MapScores;
import gg.teambattles.sdk.generated.models.ScoreSubmissionResult;
import gg.teambattles.sdk.generated.models.SubmitScoreBody;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /matches/{matchId}/scores
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ScoresRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ScoresRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ScoresRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/scores", pathParameters);
    }
    /**
     * Instantiates a new {@link ScoresRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ScoresRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/scores", rawUrl);
    }
    /**
     * Retrieve all map scores for a match, including a series score summary. Requires the matches.team_matches:read permission.
     * @return a {@link MapScores}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public MapScores get() {
        return get(null);
    }
    /**
     * Retrieve all map scores for a match, including a series score summary. Requires the matches.team_matches:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link MapScores}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public MapScores get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, MapScores::createFromDiscriminatorValue);
    }
    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team&apos;s captain can confirm (cannot confirm own team&apos;s submission). Requires the matches.team_matches:read-write permission.
     * @param body Confirmation payload identifying the map score to confirm.
     * @return a {@link ScoreSubmissionResult}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public ScoreSubmissionResult patch(@jakarta.annotation.Nonnull final ConfirmScoreBody body) {
        return patch(body, null);
    }
    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team&apos;s captain can confirm (cannot confirm own team&apos;s submission). Requires the matches.team_matches:read-write permission.
     * @param body Confirmation payload identifying the map score to confirm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ScoreSubmissionResult}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public ScoreSubmissionResult patch(@jakarta.annotation.Nonnull final ConfirmScoreBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, ScoreSubmissionResult::createFromDiscriminatorValue);
    }
    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param body Map score submission payload for a single map.
     * @return a {@link ScoreSubmissionResult}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public ScoreSubmissionResult post(@jakarta.annotation.Nonnull final SubmitScoreBody body) {
        return post(body, null);
    }
    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param body Map score submission payload for a single map.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ScoreSubmissionResult}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public ScoreSubmissionResult post(@jakarta.annotation.Nonnull final SubmitScoreBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, ScoreSubmissionResult::createFromDiscriminatorValue);
    }
    /**
     * Retrieve all map scores for a match, including a series score summary. Requires the matches.team_matches:read permission.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Retrieve all map scores for a match, including a series score summary. Requires the matches.team_matches:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team&apos;s captain can confirm (cannot confirm own team&apos;s submission). Requires the matches.team_matches:read-write permission.
     * @param body Confirmation payload identifying the map score to confirm.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final ConfirmScoreBody body) {
        return toPatchRequestInformation(body, null);
    }
    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team&apos;s captain can confirm (cannot confirm own team&apos;s submission). Requires the matches.team_matches:read-write permission.
     * @param body Confirmation payload identifying the map score to confirm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final ConfirmScoreBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.PATCH, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PatchRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param body Map score submission payload for a single map.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final SubmitScoreBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param body Map score submission payload for a single map.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final SubmitScoreBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link ScoresRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ScoresRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ScoresRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PatchRequestConfiguration extends BaseRequestConfiguration {
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
