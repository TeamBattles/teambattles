package gg.teambattles.sdk.generated.orgs;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.CreateOrgBody;
import gg.teambattles.sdk.generated.models.CreateOrgResponse;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.orgs.discover.DiscoverRequestBuilder;
import gg.teambattles.sdk.generated.orgs.item.WithIdentifierItemRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /orgs
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OrgsRequestBuilder extends BaseRequestBuilder {
    /**
     * The discover property
     * @return a {@link DiscoverRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DiscoverRequestBuilder discover() {
        return new DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.orgs.item collection
     * @param identifier Organization slug or Convex organization ID.
     * @return a {@link WithIdentifierItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithIdentifierItemRequestBuilder byIdentifier(@jakarta.annotation.Nonnull final String identifier) {
        Objects.requireNonNull(identifier);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("identifier", identifier);
        return new WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link OrgsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OrgsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs", pathParameters);
    }
    /**
     * Instantiates a new {@link OrgsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OrgsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs", rawUrl);
    }
    /**
     * Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a new organization as the API key owner.
     * @return a {@link CreateOrgResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public CreateOrgResponse post(@jakarta.annotation.Nonnull final CreateOrgBody body) {
        return post(body, null);
    }
    /**
     * Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a new organization as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link CreateOrgResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public CreateOrgResponse post(@jakarta.annotation.Nonnull final CreateOrgBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, CreateOrgResponse::createFromDiscriminatorValue);
    }
    /**
     * Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a new organization as the API key owner.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final CreateOrgBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Creates a new organization as the personal API key owner. The owner becomes the organization owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.profile:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a new organization as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final CreateOrgBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link OrgsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OrgsRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new OrgsRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
