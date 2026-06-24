package gg.teambattles.sdk.generated.orgs.item.ownership.transfer;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TransferOrgOwnershipBody;
import gg.teambattles.sdk.generated.models.TransferOrgOwnershipResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /orgs/{identifier}/ownership/transfer
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TransferRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link TransferRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TransferRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs/{identifier}/ownership/transfer", pathParameters);
    }
    /**
     * Instantiates a new {@link TransferRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TransferRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs/{identifier}/ownership/transfer", rawUrl);
    }
    /**
     * Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
     * @param body Transfer organization ownership to another member.
     * @return a {@link TransferOrgOwnershipResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TransferOrgOwnershipResponse post(@jakarta.annotation.Nonnull final TransferOrgOwnershipBody body) {
        return post(body, null);
    }
    /**
     * Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
     * @param body Transfer organization ownership to another member.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TransferOrgOwnershipResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TransferOrgOwnershipResponse post(@jakarta.annotation.Nonnull final TransferOrgOwnershipBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TransferOrgOwnershipResponse::createFromDiscriminatorValue);
    }
    /**
     * Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
     * @param body Transfer organization ownership to another member.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TransferOrgOwnershipBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
     * @param body Transfer organization ownership to another member.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TransferOrgOwnershipBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link TransferRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TransferRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new TransferRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
