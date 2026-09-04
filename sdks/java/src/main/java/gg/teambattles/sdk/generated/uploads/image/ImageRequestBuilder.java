package gg.teambattles.sdk.generated.uploads.image;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.BoundImageUploadResponse;
import gg.teambattles.sdk.generated.models.Error;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /uploads/image
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ImageRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ImageRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ImageRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/uploads/image", pathParameters);
    }
    /**
     * Instantiates a new {@link ImageRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ImageRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/uploads/image", rawUrl);
    }
    /**
     * Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @return a {@link BoundImageUploadResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public BoundImageUploadResponse post() {
        return post(null);
    }
    /**
     * Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link BoundImageUploadResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public BoundImageUploadResponse post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, BoundImageUploadResponse::createFromDiscriminatorValue);
    }
    /**
     * Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
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
     * @return a {@link ImageRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ImageRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ImageRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
