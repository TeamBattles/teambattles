package gg.teambattles.sdk.generated.game.matches.item.status;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.GameStatusUpdateBody;
import gg.teambattles.sdk.generated.models.GameStatusUpdateResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /game/matches/{matchId}/status
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StatusRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link StatusRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StatusRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/game/matches/{matchId}/status", pathParameters);
    }
    /**
     * Instantiates a new {@link StatusRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StatusRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/game/matches/{matchId}/status", rawUrl);
    }
    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission.
     * @param body Request body for updating a match&apos;s lifecycle status.
     * @return a {@link GameStatusUpdateResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     */
    @jakarta.annotation.Nullable
    public GameStatusUpdateResponse patch(@jakarta.annotation.Nonnull final GameStatusUpdateBody body) {
        return patch(body, null);
    }
    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission.
     * @param body Request body for updating a match&apos;s lifecycle status.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link GameStatusUpdateResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     */
    @jakarta.annotation.Nullable
    public GameStatusUpdateResponse patch(@jakarta.annotation.Nonnull final GameStatusUpdateBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("409", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, GameStatusUpdateResponse::createFromDiscriminatorValue);
    }
    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission.
     * @param body Request body for updating a match&apos;s lifecycle status.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final GameStatusUpdateBody body) {
        return toPatchRequestInformation(body, null);
    }
    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission.
     * @param body Request body for updating a match&apos;s lifecycle status.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final GameStatusUpdateBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.PATCH, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PatchRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link StatusRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public StatusRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new StatusRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PatchRequestConfiguration extends BaseRequestConfiguration {
    }
}
