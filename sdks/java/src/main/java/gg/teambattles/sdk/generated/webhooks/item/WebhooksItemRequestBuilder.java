package gg.teambattles.sdk.generated.webhooks.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.UpdateWebhookBody;
import gg.teambattles.sdk.generated.models.WebhookEndpoint;
import gg.teambattles.sdk.generated.models.WebhookOk;
import gg.teambattles.sdk.generated.webhooks.item.deliveries.DeliveriesRequestBuilder;
import gg.teambattles.sdk.generated.webhooks.item.rotatesecret.RotateSecretRequestBuilder;
import gg.teambattles.sdk.generated.webhooks.item.test.TestRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /webhooks/{id}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WebhooksItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The deliveries property
     * @return a {@link DeliveriesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DeliveriesRequestBuilder deliveries() {
        return new DeliveriesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The rotateSecret property
     * @return a {@link RotateSecretRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RotateSecretRequestBuilder rotateSecret() {
        return new RotateSecretRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The test property
     * @return a {@link TestRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TestRequestBuilder test() {
        return new TestRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WebhooksItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WebhooksItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/webhooks/{id}", pathParameters);
    }
    /**
     * Instantiates a new {@link WebhooksItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WebhooksItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/webhooks/{id}", rawUrl);
    }
    /**
     * Deletes a webhook endpoint in the caller&apos;s scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @return a {@link WebhookOk}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public WebhookOk delete() {
        return delete(null);
    }
    /**
     * Deletes a webhook endpoint in the caller&apos;s scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link WebhookOk}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public WebhookOk delete(@jakarta.annotation.Nullable final java.util.function.Consumer<DeleteRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toDeleteRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, WebhookOk::createFromDiscriminatorValue);
    }
    /**
     * Returns one webhook endpoint in the caller&apos;s scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @return a {@link WebhookEndpoint}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public WebhookEndpoint get() {
        return get(null);
    }
    /**
     * Returns one webhook endpoint in the caller&apos;s scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link WebhookEndpoint}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public WebhookEndpoint get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, WebhookEndpoint::createFromDiscriminatorValue);
    }
    /**
     * Partially updates a webhook endpoint in the caller&apos;s scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Partial update of a webhook endpoint.
     * @return a {@link WebhookOk}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public WebhookOk patch(@jakarta.annotation.Nonnull final UpdateWebhookBody body) {
        return patch(body, null);
    }
    /**
     * Partially updates a webhook endpoint in the caller&apos;s scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Partial update of a webhook endpoint.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link WebhookOk}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public WebhookOk patch(@jakarta.annotation.Nonnull final UpdateWebhookBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, WebhookOk::createFromDiscriminatorValue);
    }
    /**
     * Deletes a webhook endpoint in the caller&apos;s scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toDeleteRequestInformation() {
        return toDeleteRequestInformation(null);
    }
    /**
     * Deletes a webhook endpoint in the caller&apos;s scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toDeleteRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<DeleteRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.DELETE, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, DeleteRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns one webhook endpoint in the caller&apos;s scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns one webhook endpoint in the caller&apos;s scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
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
     * Partially updates a webhook endpoint in the caller&apos;s scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Partial update of a webhook endpoint.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final UpdateWebhookBody body) {
        return toPatchRequestInformation(body, null);
    }
    /**
     * Partially updates a webhook endpoint in the caller&apos;s scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Partial update of a webhook endpoint.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final UpdateWebhookBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
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
     * @return a {@link WebhooksItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WebhooksItemRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WebhooksItemRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class DeleteRequestConfiguration extends BaseRequestConfiguration {
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
}
