package gg.teambattles.sdk.generated.streams.livestatus;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.ApiBatchStreamStatusBody;
import gg.teambattles.sdk.generated.models.ApiBatchStreamStatusEnvelope;
import gg.teambattles.sdk.generated.models.Error;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /streams/live-status
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LiveStatusRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link LiveStatusRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public LiveStatusRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/streams/live-status", pathParameters);
    }
    /**
     * Instantiates a new {@link LiveStatusRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public LiveStatusRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/streams/live-status", rawUrl);
    }
    /**
     * Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
     * @param body Batch live-status request body.
     * @return a {@link ApiBatchStreamStatusEnvelope}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ApiBatchStreamStatusEnvelope post(@jakarta.annotation.Nonnull final ApiBatchStreamStatusBody body) {
        return post(body, null);
    }
    /**
     * Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
     * @param body Batch live-status request body.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ApiBatchStreamStatusEnvelope}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ApiBatchStreamStatusEnvelope post(@jakarta.annotation.Nonnull final ApiBatchStreamStatusBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, ApiBatchStreamStatusEnvelope::createFromDiscriminatorValue);
    }
    /**
     * Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
     * @param body Batch live-status request body.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final ApiBatchStreamStatusBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
     * @param body Batch live-status request body.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final ApiBatchStreamStatusBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link LiveStatusRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public LiveStatusRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new LiveStatusRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
