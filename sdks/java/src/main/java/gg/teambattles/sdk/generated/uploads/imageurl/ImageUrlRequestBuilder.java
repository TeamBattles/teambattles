package gg.teambattles.sdk.generated.uploads.imageurl;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.ImageUploadUrlResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /uploads/image-url
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ImageUrlRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ImageUrlRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ImageUrlRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/uploads/image-url", pathParameters);
    }
    /**
     * Instantiates a new {@link ImageUrlRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ImageUrlRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/uploads/image-url", rawUrl);
    }
    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @return a {@link ImageUploadUrlResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ImageUploadUrlResponse post() {
        return post(null);
    }
    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ImageUploadUrlResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ImageUploadUrlResponse post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, ImageUploadUrlResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
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
     * @return a {@link ImageUrlRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ImageUrlRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ImageUrlRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
