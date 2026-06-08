package gg.teambattles.sdk.generated.uploads;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.uploads.imageurl.ImageUrlRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /uploads
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UploadsRequestBuilder extends BaseRequestBuilder {
    /**
     * The imageUrl property
     * @return a {@link ImageUrlRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ImageUrlRequestBuilder imageUrl() {
        return new ImageUrlRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link UploadsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public UploadsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/uploads", pathParameters);
    }
    /**
     * Instantiates a new {@link UploadsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public UploadsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/uploads", rawUrl);
    }
}
